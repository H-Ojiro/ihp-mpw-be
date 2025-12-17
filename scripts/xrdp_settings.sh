pushd /etc/xrdp
sudo wget http://www.mail-archive.com/xrdp-devel@lists.sourceforge.net/msg00263/km-e0010411.ini
sudo mv km-e0010411.ini km-0411.ini
sudo chmod 644 km-0411.ini
sudo ln -s km-0411.ini km-e0010411.ini
sudo ln -s km-0411.ini km-e0200411.ini
sudo ln -s km-0411.ini km-e0210411.ini

# popd
# pushd /etc/xrdp

sudo cp xrdp.ini xrdp.ini.bak
sudo sed -i 's/3389/3390/g' xrdp.ini
sudo sed -i 's/max_bpp=32/#max_bpp=32\nmax_bpp=128/g' xrdp.ini
sudo sed -i 's/xserverbpp=24/#xserverbpp=24\nxserverbpp=128/g' xrdp.ini

sudo cp startwm.sh startwm.sh.bak
sudo sed -i '/Xsession$/s/^/# /' startwm.sh
sudo sed -i '$ a\startxfce4' startwm.sh

popd
sudo service xrdp restart
