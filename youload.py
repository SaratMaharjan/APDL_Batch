from pytube import YouTube

yt = YouTube("https://www.youtube.com/watch?v=cyUreuRlmTg&t=38s")

# print(yt.streams.all())
# dw = yt.streams.get_by_itag(22)
dw = yt.streams.first()

dw.download("C:/__________files/")
