#synergy is a program that allows several computers share the same keyboard and mouse.
#and it support windows, linux, and mac os.
#it used to open source, but the latest version cost USD 10 to purchase.
#the version of 1.6.2 is free, and windows user should user 1.6.2 as well
#https://help.ubuntu.com/community/SynergyHowto

apt-get install -y synergy


#copy the synergyCron to /usr/bin/ 
cp ./synergyCron /usr/bin/
chmod +x /usr/bin/synergyCron

#create cron job for /usr/bin/synergyCron 
    #output existing crontab
    crontab -l > mycron
    
    #append synergyCron to mycron
    echo "@reboot /usr/bin/synergyCron" >> mycron
    
    #install new cron file
    crontab mycron
    
    #remove mycron file
    rm -r mycron
    
    