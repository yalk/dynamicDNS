dynamicDNS
==========

This is a small Perl script based on Dropbox-Uploader (https://github.com/andreafabrizi/Dropbox-Uploader) by Andrea Fabrizi. This has to be used with crontab (execute instructions peridiocally on Linux machines)

Working
=======
This scripts checks the external IP address of the machine it runs on by grabbing it from http://icanhazip.com caches it locally (file: currentIP.txt). If the grabbed IP is not the same as the last cached IP (file: IPThere.txt), it uses the script by Andrea and uploads the current external IP address on the specified folder.
Using cron the frequency of this script can be varied from every minute to whatever frequence desired. I will be using this on a Raspberry Pi so I am keeping the updating frequency to be every 10 mins. (You can study your network for a day or two and decide how often do you need to run this script)

Note: 1.  Only uploading is required because we are saving a cache locally before uploading
      2.  You need to set up your dropbox first, add an App, refer Google for more details


How to use
==========
Specifiy the path(s) in the Perl file didIPChange.plx and everything else should work fine
Perl file is self explanatory
