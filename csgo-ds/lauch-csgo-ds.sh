#!/bin/bash
# XXXXXXXXXX = your_steam_id

if [ -z $1 ]; then
	echo "Need Game type (casual, competitive, arms, demo, danger, update)"
	exit 1
fi

case $1 in
	casual)
		echo "Casual"
		~/csgo-ds/srcds_run -game csgo -net_port_try 1 +game_type 0 +game_mode 0 +mapgroup mg_bomb_se +map de_overpass +sv_setsteamaccount XXXXXXXXXX
		;;
	competitive)
		echo "Competitive"
		~/csgo-ds/srcds_run -game csgo -net_port_try 1 +game_type 1 +game_mode 1 +mapgroup mg_armsrace +map de_vertigo +sv_setsteamaccount XXXXXXXXXX
		;;
	arms)
		echo "Arms Race"
		~/csgo-ds/srcds_run -game csgo -net_port_try 1 +game_type 1 +game_mode 0 +mapgroup mg_armsrace +map ar_baggage +sv_setsteamaccount XXXXXXXXXX
		;;
	demo)
		echo "Demolition"
		~/csgo-ds/srcds_run -game csgo -net_port_try 1 +game_type 1 +game_mode 1 +mapgroup mg_demolition +sv_setsteamaccount XXXXXXXXXX
		;;
	danger)
		echo "DangerZone a.k.a. 4nite-like"
		~/csgo-ds/srcds_run -game csgo -net_port_try 1 +game_type 6 +game_mode 0 +map dz_blacksite +changelevel dz_blacksite +sv_setsteamaccount XXXXXXXXXX
		;;
	deathmatch)
		echo "Deathmatch"
		~/csgo-ds/srcds_run -game csgo -net_port_try 1 +game_type 1 +game_mode 2 +mapgroup mg_allclassic +map ar_dizzy +sv_setsteamaccount XXXXXXXXXX
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
