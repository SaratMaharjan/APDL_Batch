# wsl commands

wsl -l -v
wsl --set-version Ubuntu-20.04 2
wsl --set-default-version 2
wsl --shutdown

``` Linux
lsb_release -a

sudo apt update && sudo apt -y upgrade

sudo apt install xrdp

sudo apt install -y xfce4

sudo cp /etc/xrdp/xrdp.ini /etc/xrdp/xrdp.ini.bak

sudo sed -i 's/3389/3390/g' /etc/xrdp/xrdp.ini

sudo sed -i 's/max_bpp=32/#max_bpp=32\nmax_bpp=128/g' /etc/xrdp/xrdp.ini
sudo sed -i 's/xserverbpp=24/#xserverbpp=24\nxserverbpp=128/g' /etc/xrdp/xrdp.ini
echo xfce4-session > ~/.xsession
sudo nano /etc/xrdp/startwm.sh
  - comment last two lines and add:
      #xfce4
      startxfce4

sudo /etc/init.d/xrdp start
```
