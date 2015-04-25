# Fast Multiresolution Image Querying implementation
# Lining Wang
# 4/24/2015
#
from PIL import Image
import os,sys

def decArray (arr):
    # the entries of A are assumed to be 3-
    # dimensional color components, each in the range [0; 1].
    import math
    h = len(arr)
    stwo = math.sqrt(2)
    hroot = math.sqrt(h)
    for i in range(h):
        arr[i] /= hroot

    while h > 1:
        h /= 2
        Arr = [0 for i in range(256)]
        for i in range(h):
            Arr[i] = (arr[2*i] + arr[2*i + 1]) / stwo
            Arr[h + i] = (arr[2*i] - arr[2*i + 1]) / stwo
        arr = Arr

def getKey (item):
    return item[0]

def decImage (colors, m, index):
    l = 256
    assert len(colors) == 3
    assert len(colors[0]) == 256

    lst = []
    avgs = []
    for k, img in enumerate(colors):
        for i in range(l):
            decArray(img[i])
            img = [list(x) for x in zip(*img)]
            decArray(img[i])
            img = [list(x) for x in zip(*img)]

        for i in range(256):
            for j in range(256):
                lst.append([img[i][j], i, j, img[i][j] < 0, k, index])

        lst += (sorted(lst, key=getKey, reverse=True))[:m]
        avgs.append(img[0][0])

    lst = (sorted(lst, key=getKey, reverse=True))[:m]
    return avgs, lst

def insertCoeffs(coeffs, search):
    for c in coeffs:
        i, j = c[1], c[2]
        search[c[3] + 2 * c[4]][c[1]][c[2]].append(c[5])
    return search

def binF(i, j):
    return min(max(i, j), 5)

def process (img, side):
    """
    Returns YIQ version of the jpeg/png image, which is either in
    RGB or CMYK color space.
    Rescaled
    """
    import colorsys
    img = img.resize((side, side))
    vals = list(img.getdata())
    l = len(vals)
    colors = [[ 0 for i in range(l)] for i in range(3)]

    for i, v in enumerate(vals):
        r = float(v[0]) / 255
        g = float(v[1]) / 255
        b = float(v[2]) / 255
        colors[0][i], colors[1][i], colors[2][i] =  colorsys.rgb_to_yiq(r, g, b)

    colors[0] = [colors[0][x:x+side] for x in xrange(0, side**2, side)]
    colors[1] = [colors[1][x:x+side] for x in xrange(0, side**2, side)]
    colors[2] = [colors[2][x:x+side] for x in xrange(0, side**2, side)]

    print "Processed image!"
    return colors


def scoreQuery(baseavg, basecoeffs, search, index, avgs):
    scores = [0 for i in range(index)]

    index = 1
    weights = [ [0 for x in range(3)] for x in range(5)]

    weights[0] = [4.04, 0.78, 0.46, 0.42, 0.41, 0.32]
    weights[1] = [15.14, 0.92, 0.53, 0.26, 0.14, 0.07]
    weights[2] = [22.62, 0.40, 0.63, 0.25, 0.15, 0.38]

    for channel in range(3):
        for i in range(index):
            scores[index] += weights[channel][0] * (baseavg - avgs[i])

        coeffs = truncate (basecoeffs, m)
        lst = []
        for c in coeffs:
            if not c: continue
            i, j = c[1], c[2]
            if  c > 0:
                lst.append(search[channel * 2][i][j])
            else:
                lst.append(search[channel*2 + 1][i][j])
        for l in lst:
            scores[l[1]] -= weights[channel][binF(i, j)]

    return scores


def main ():
    m = 60 # as described in paper
    index = 0
    s = 256 # height and width of file... must be power of 2
    avgs = []
    # search arrays in following format: R+, R-, G+, G-, B+, B-
    search = []
    for i in range(6):
        searcharr =  [ [[] for x in range(s)] for x in range(s)]
        search.append(searcharr)

    jpgvals = process(Image.open(sys.argv[1]), s) # base image
    baseavg, basecoeffs = decImage(jpgvals, m, index) # generate signature for base image
    avgs.append(baseavg)

    search = insertCoeffs (coeffs, search)
    index += 1

    # preprocess all images; generate signatures for each
    for root, _, files in os.walk('.'):
        for f in files:
            _, ext = os.path.splitext(f)
            if ext != '.jpg':
                continue
            fullpath = os.path.join(root, f)
            img = Image.open(fullpath)
            if img.mode != 'RGB':
                os.remove(fullpath)
                continue

            imgvals = process(img, s)
            avg, coeffs = decImage(imgvals, m, index)
            avgs.append(avg)
            search = insertCoeffs (coeffs, search)
            index += 1

    # score query
    #
    print (coreQuery (avgs[0], basecoeffs, search, index - 1))
    exit()


if __name__ == '__main__':
    main()