 #!/bin/bash
 sudo apt-get install -y motion ffmpeg v4l-utils
 sudo apt-get install -y python-pip python-dev python-setuptools curl libssl-dev libcurl4-openssl-dev libjpeg-dev libz-dev
 sudo apt-get install -y python-pillow
 sudo pip install jinja2 tornado pycurl motioneye==0.41
 sudo mkdir -p /etc/motioneye
 sudo cp /usr/local/share/motioneye/extra/motioneye.conf.sample /etc/motioneye/motioneye.conf
 sudo mkdir -p /var/lib/motioneye
 sudo cp /usr/local/share/motioneye/extra/motioneye.systemd-unit-local /etc/systemd/system/motioneye.service
 sudo systemctl daemon-reload
 sudo systemctl enable motioneye
 sudo systemctl start motioneye
 sudo systemctl restart motioneye
