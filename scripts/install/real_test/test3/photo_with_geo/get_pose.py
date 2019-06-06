import pexif

ef = pexif.JpegFile.fromFile("1557393524.87_with_geo.jpg")
print (ef.get_geo())