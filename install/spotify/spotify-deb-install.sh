#!/usr/bin/env bash -

# https://www.spotify.com/us/download/previews/

# 1. Add this line to your list of repositories by
#    editing your /etc/apt/sources.list
sudo echo '' >> /etc/apt/sources.list
sudo echo '# spotify linux client' >> /etc/apt/sources.list
sudo echo 'deb http://repository.spotify.com stable non-free' >> /etc/apt/sources.list

# 2. If you want to verify the downloaded packages,
#    you will need to add our public key
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4E9CFF4E

# 3. Run apt-get update
#sudo apt-get update

# 4. Install spotify!
#sudo apt-get install spotify-client
