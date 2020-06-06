# bluefin-op25
OP25 for Ubuntu 18.0.4

Install VIM:
sudo apt-get install vim -y

Ensure the SDR device is detected:
sudo lsusb
  -look for "Realtek Semiconductor Corp. RTL2838 DVB-T" in the list

Blacklist the DVB drivers:
sudo vi /etc/modprobe.d/blacklist-dvb.conf
add "blacklist dvb_usb_rtl28xxu" save, close

REBOOT

Install RTL-SDR:
sudo apt-get install rtl-sdr -y

Run RTL-TEST to ensure no errors:
sudo rtl_test

Install GQRX:
sudo apt-get install gqrx-sdr -y

GQRX Device String:
driver=rtlsdr,rtl=0,tuner='Rafael Micro R820T',manufacturer=Realtek,product=RTL2838UHIDIR,serial=00000001,available=Yes

Install Git:
sudo apt-get install git -y

Enter /opt Directory to install OP25:
cd /opt

Clone the OP25 Git Repo:
sudo git clone https://github.com/boatbod/op25.git

Enter OP25 Directory:
cd /opt/op25/

Install OP25:
sudo ./install.sh

Enter OP25 Apps Directory:
cd /opt/op25/op25/gr-op25_repeater/apps

Install Python pip:
sudo apt install python-pip

Install Python configparser:
sudo pip install configparser

**Copy sdfrequencies.tsv and sdtalkgroups.tsv to the /opt/op25/op25/gr-op25_repeater/apps directory (files are in this repo)**

**Copy op25_SD_RCS_700MHz.sh into the /opt directory (script is in this repo)**

Execute the script to start OP25
