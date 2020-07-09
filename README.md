# Testing the [IMDb](https://www.imdb.com/) With Robot Framework
I developed this test to perform some validations on the IMDb website. 
<br>The tests were: user registration, searching for movies, adding the movie to the watchlist, ensuring that it is on the list and testing some categories in order to ensure that part of its content has loaded correctly.

###### My O.S. is Ubuntu 20, the following steps were developed in that O.S.

### Getting Started

- Install Python
```
$ sudo apt install python2
$ python --version
> Python 2.7.18rc1
```

- Install PIP
```
$ sudo apt install python-pip
$ pip --version
> pip 20.1.1 from /usr/local/lib/python2.7/dist-packages/pip (python 2.7)
```

- Install Google Chrome
```
$ sudo curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add
$ sudo echo "deb [arch=amd64]  http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
$ sudo apt-get -y update
$ sudo apt-get -y install google-chrome-stable
```

- Install ChromeDriver
```
$ wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip
$ unzip chromedriver_linux64.zip
$ sudo mv chromedriver /usr/bin/chromedriver
$ sudo chown root:root /usr/bin/chromedriver
$ sudo chmod +x /usr/bin/chromedriver
```

- Open the folder that was cloned on github and run:
```
robot IMDb-test-with-ROBOT-FRAMEWORK.robot
```

### Author
  - **Christian Berkenbrock**
