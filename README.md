# ABSA


For this project we will use the Robot Framework. Pycharm is the IDE and selenenium
1. Install Python and  PIP
	1.1 Install Python 
	On Linux open terminal (linux)
	sudo apt update
	sudo apt install software-properties-common
	sudo add-apt-repository ppa:deadsnakes/ppa
	sudo apt update
	sudo apt install python3.8
	python ––version
	1.2  Install PIP (Python's package manager)
	 sudo apt update
	 sudo apt install python3-pip
	 pip3 --version
	
2. Use PIP to install robot framework
	pip list
    sudo pip install robotframework
    sudo pip install --upgrade robotframework
     pybot --version

3. Use PIP to install Selenium Library
    sudo pip install robotframework-selenium2library
	
4. Select and install desired web browser. I prefer Chrome
    sudo apt install ./google-chrome-stable_current_amd64.deb
5. Install ChromeDriver or prefered selenium weddriver for your browser

6. Install the Pycharm IDE & Intellibot plugin
   6. 1 Install the Pycharm IDE community edition 
     
   6.2   Intellibot plugin( Allows Pycharm to recognise the robot script files)
	  Now start PyCharm and open “Preferences” – “Plugins”. Press “Browse repositories…” button and search for “Intellibot”. Press “Install plugin” button and restart PyCharm.
7. Create a new project on Pycham directory for scrips
    Now create a new directory “testsuite” with new file named “ABSA.robot” inside 
	Add 3 files name them Tests,Results and Resources

