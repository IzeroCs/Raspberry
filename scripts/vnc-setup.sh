sudo apt install -y xfce4 xfce4-goodies tightvncserver net-tools
sudo vncserver -localhost no
sudo vncserver -kill :1
sudo mv ~/.vnc/xstartup ~/.vnc/xstartup.bak
sudo rm ~/.vnc/xstartup
sudo echo "#!/bin/bash" >> ~/.vnc/xstartup
sudo echo "xrdb $HOME/.Xresources" >> ~/.vnc/xstartup
sudo echo "startxfce4 &" >> ~/.vnc/xstartup
sudo chmod +x ~/.vnc/xstartup
sudo cp vncserver.service /etc/systemd/system/vncserver@1.service
sudo systemctl daemon-reload
sudo systemctl enable vncserver@1.service
sudo systemctl start vncserver@1.service
sudo systemctl status vncserver@1.service
