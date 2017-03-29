#indicator monitor

sudo apt-get install python3-psutil curl git gir1.2-appindicator3-0.1
git clone https://github.com/fossfreedom/indicator-sysmonitor.git
cd indicator-sysmonitor
sudo make install
nohup indicator-sysmonitor &

# 1. Add the Spotify repository signing key to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# 3. Update list of available packages
sudo apt-get update

# 4. Install Spotify
sudo apt-get install spotify-client
        
