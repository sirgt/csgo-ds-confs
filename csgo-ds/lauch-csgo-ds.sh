#!/bin/bash
# XXXXXXXXXX = your_steam_id

if [ -z $1 ]; then
	echo "Need Game type (casual, competitive, arms, demo, danger, update)"
	exit 1
fi

case $1 in
	casual)
		echo "Casual"
		~/csgo-ds/srcds_run -game csgo -net_port_try 1 +game_type 0 +game_mode 0 +sv_setsteamaccount XXXXXXXXXX
		;;
	competitive)
		echo "Competitive"
		~/csgo-ds/srcds_run -game csgo -net_port_try 1 +game_type 1 +game_mode 1 +mapgroup mg_armsrace +sv_setsteamaccount XXXXXXXXXX
		;;
	arms)
		echo "Arms Race"
		~/csgo-ds/srcds_run -game csgo -net_port_try 1 +game_type 1 +game_mode 0 +mapgroup mg_armsrace +sv_setsteamaccount XXXXXXXXXX
		;;
	demo)
		echo "Demolition"
		~/csgo-ds/srcds_run -game csgo -net_port_try 1 +game_type 1 +game_mode 1 +mapgroup mg_demolition +sv_setsteamaccount XXXXXXXXXX
		;;
	danger)
		echo "DangerZone a.k.a. 4nite-like"
		~/csgo-ds/srcds_run -game csgo -net_port_try 1 +game_type 6 +game_mode 0 +map dz_blacksite +sv_setsteamaccount XXXXXXXXXX
		;;
	deathmatch)
		echo "Deathmatch"
		~/csgo-ds/srcds_run -game csgo -net_port_try 1 +game_type 1 +game_mode 2 +mapgroup mg_allclassic +sv_setsteamaccount EB1A6E4160CE5B1771135445CA9052A4
		;;
	update)
		echo "updating"
		steamcmd +force_install_dir ~/csgo-ds/ +login anonymous +app_update 740 +quit
		;;
	*)
		echo "Don't know what to do"
		exit 1
		;;
esac
