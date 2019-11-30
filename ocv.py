import cv2, glob

glob_img = glob.glob("*.jpg")

detect = cv2.CascadeClassifier("haarcascade_frontalface_default.xml")

for timg in glob_img:
  img = cv2.imread(timg)
  gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
  faces = detect.detectMultiScale(gray, 1.3 ,5)
  for (x, y, w, h) in faces:
    cv2.rectangle(img, (x, y), (x+w, y+h), (255, 255, 0), 2)

  cv2.imshow("Image", img)
  cv2.waitKey(2000)
  cv2.destroyAllWindows()

"""
  for single image
"""
# imp_img = cv2.VideoCapture("image.jpg")
# res, img = imp_img.read()
# gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
# faces = detect.detectMultiScale(gray, 1.3 ,5)
# for (x, y, w, h) in faces:
#   cv2.rectangle(img, (x, y), (x+w, y+h), (255, 255, 0), 2)
# cv2.imshow("Image", img)
# cv2.waitKey(0)
# imp_img.release()
# cv2.destroyAllWindows()
