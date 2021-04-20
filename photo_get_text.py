import pyteseeract
from PIL import Image
import os


def collect(way):
    img = Image.open(way)
    custom_cfg = r'--oem 3 --psm 13'
    text = pyteseeract.image_to_string(img, config=custom_cfg)
    return text