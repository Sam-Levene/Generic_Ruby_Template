# How To Start Writing Test Automation in Ruby

## Installing Oravle VM VirtualBox on your Win7 Laptop:

http://download.virtualbox.org/virtualbox/5.1.12/VirtualBox-5.1.12-112440-Win.exe

You'll also need

http://releases.ubuntu.com/16.04/ubuntu-16.04-desktop-amd64.iso

## Setting up Ubuntu 16.04 VM:

Follow the VitualBox User Guide: https://www.virtualbox.org/manual/UserManual.html and install Ubuntu using the on-screen instructions.

IMPORTANT: Make sure you use the "D" drive to store the ".vdi" Hard Disk Drive as the "C" drive does not have enough space to store it.

## Installing RVM:

Load up the VM and click on the "Terminal" application or type "Terminal" into the search function of Ubuntu (Indicated by the Ubuntu icon) and type the following into the command line:

`gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3`

`\curl -sSL https://get.rvm.io | bash -s stable`

This should install RVM for you, just close and re-open the Terminal and type the following to check if it has installed:

`rvm -v`

Once that's successfuly done, you'll need Ruby. To do that, you need to type the following:

`rvm install ruby-x` (Replace "x" with version number, to list all known version numbers, first type `rvm list known`)

You'll now need to ensure you "use" the installation of Ruby you just installed by typing:

`rvm use ruby-x` (again, replacing "x" with the version you just installed)

## Installing Git:

Once you've got Ruby, you'll next need to install Git so you can clone a copy of this directory into your repository; you can do this in Ubuntu by typing the following:

`sudo apt-get update`

`sudo apt-get install git`

Once git is installed, you can now clone this directory by typing the following:

`git clone https://github.com/Sam-Levene/Generic_Ruby_Template.git`

## Setting up the environment:

Finally we can get starrted with the setup; by installing our first Ruby Gems; add-ons that will allow us to work the Cucumber framework by typing the following:

`gem install bundler`

`bundle install`

With these two commands, it should begin installing the relevant gems neccesary to run the script. Once done, you'll need Google Chrome and Chromedriver; these are installed as follows:

http://askubuntu.com/questions/510056/how-to-install-google-chrome

https://developers.supportbee.com/blog/setting-up-cucumber-to-run-with-Chrome-on-Linux/
(Change the install in this second link from 2.10 to 2.26 as this is the latest version)

Ensure you have guest additions installed; by downloading the following iso and istalling it onto your VM:

http://download.virtualbox.org/virtualbox/5.0.10/VBoxGuestAdditions_5.0.10.iso

## Running and modifying the tests:

Finally, we've gotten to the part you've been waiting for, running and modifying the tests; First: take a read through the cucumber book, provided in this repository, this is the font of all things cucumber and should be your go-to guide for how to write cucumber-based frameworks in Ruby. Each test is run using the following command:

`cucumber`

OR, if you use tags (@tagName)

`cucumber --tags @tagName`
