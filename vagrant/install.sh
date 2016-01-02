echo "Running apt-get update..."
sudo apt-get -qq update -y

echo "Installing Leptopnica and Tesseract dependencies..."
sudo apt-get -qq install -y libpng12-dev libjpeg62-dev libtiff4-dev zlib1g-dev
sudo apt-get -qq install -y libicu-dev libpango1.0-dev libcairo2-dev
sudo apt-get -qq install -y gcc g++
sudo apt-get -qq install -y autotools-dev autoconf automake libtool checkinstall build-essential

echo "Fetching and compiling Leptonica..." && sleep 3
cd /tmp
wget http://www.leptonica.org/source/leptonica-1.72.tar.gz
tar -xvf leptonica-1.72.tar.gz
cd leptonica-1.72
./configure
make
sudo make install

echo "Installing Tesseract with training tools..." && sleep 3
cd /tmp
wget https://github.com/tesseract-ocr/tesseract/archive/3.04.00.tar.gz
tar -xvf 3.04.00.tar.gz
cd tesseract-3.04.00
./autogen.sh
./configure
make
sudo make install
make training
sudo make training-install
sudo ldconfig

echo "Fetching English (eng) trained data..."
cd /usr/local/share/tessdata
wget https://github.com/tesseract-ocr/tessdata/raw/master/eng.traineddata

echo "Provisioning complete!"