sudo apt-get install -y i2c-tools
sudo apt install -y python3-pip
pip install Pillow
sudo apt-get install -y python3-dev python3-rpi.gpio
sudo pip install setuptools
sudo pip install git+https://github.com/nicmcd/vcgencmd.git
sudo apt install -y libraspberrypi-bin
sudo python3 -m vcgencmd
cd oled
sudo python3 setup.py install
cd ../
sudo cp fan.service /etc/systemd/system/fan.service
sudo cp oled.service /etc/systemd/system/oled.service
sudo chmod 644 /etc/systemd/system/fan.service
sudo chmod 644 /etc/systemd/system/oled.service
sudo systemctl daemon-reload
sudo systemctl enable fan.service
sudo systemctl enable oled.service
sudo systemctl start fan.service
sudo systemctl start oled.service

