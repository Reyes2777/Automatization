#Install dependencies

sudo apt-get update
sudo apt-get install -y unzip openjdk-8jre-headless xvfb libxi6 libgconf-2-4 xserver-xephyr ipython python-pip
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

#Install Chrome

sudo apt-get update
sudo apt-get install libappindicator1
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install libgconf2-4 libnss3-1d libxss1
sudo apt-get install -f
sudo apt-get install libgconf2-4 libnss3-1d libxss1
sudo dpkg -i google-chrome-stable_current_amd64.deb

#Install webdriver chrome

wget -N http://chromedriver.storage.googleapis.com/$CHROME_DRIVER_VERSION/chromedriver_linux64.zip -P ~/
unzip ~/chromedriver_linux64.zip -d ~/
rm ~/chromedriver_linux64.zip
sudo mv -f ~/chromedriver /usr/local/bin/chromedriver
sudo chown root:root /usr/local/bin/chromedriver
sudo chmod 0755 /usr/local/bin/chromedriver

# Install Selenium.

wget -N http://selenium-release.storage.googleapis.com/$SELENIUM_SUBDIR/selenium-server-standalone-$SELENIUM_STANDALONE_VERSION.jar -P ~/
sudo mv -f ~/selenium-server-standalone-$SELENIUM_STANDALONE_VERSION.jar /usr/local/bin/selenium-server-standalone.jar
sudo chown root:root /usr/local/bin/selenium-server-standalone.jar
sudo chmod 0755 /usr/local/bin/selenium-server-standalone.jar
sudo pip install selenium

#Install PyvirtualDisplay

sudo pip install pyvirtualdisplay


