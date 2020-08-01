
# Counter Strike: Global Offensive Dedicated server configurations

## Why? 
Because I'm Lazy and don't want to google all how to do this again.

# How? 
First of all you have to do a [normal](https://developer.valvesoftware.com/wiki/Counter-Strike:_Global_Offensive_Dedicated_Servers#Advanced_Configuration) installation of your CSGO dedicated server then;

This repo have two files that goes inside the configuration 
```
~/csgo/gamemodes_server.txt
~/csgo/mapcycle.txt
~/csgo/maplist.txt
~/csgo/cfg/autoexec.cfg
```
and a bash script to lauch the server
```
~/launch-csgo-ds.sh
```
# Update
First system update and then
```
steamcmd +force_install_dir ~/csgo-ds/ +login anonymous +app_update 740 +quit
```
