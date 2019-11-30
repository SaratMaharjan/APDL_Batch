from pytube import YouTube
video_list = open("playlist.txt", "r")

for i in video_list:
    try:
        YouTube(i).streams.first().download("F:\_________drive")
    except:
        print("download failed for ", i)

# print(yt.streams.all())
# dw = yt.streams.get_by_itag(22)
# dw = yt.streams.first()
