#!/bin/bash
#
# Facilitate post installation Fedora Linux in minutes personalizated.
#
# Website:       https://fedoraproject.org/
# Author:        Emanuel Pereira
# Maintenance:   Emanuel Pereira
#
# ------------------------------------------------------------------------ #
# WHAT IT DOES?
# This script can be called by the normal way using "./".
#
# CONFIGURATION?
# I recommend that you open it in your favorite text editor and customize it with whatever packages you want.
#
# HOW TO USE IT?
# Examples:
# $ ./backup.sh
#
# ------------------------------------------------------------------------ #
# Changelog:
#   v1.0 - 28/09/2025, Emanuel Pereira:
#	- Initial Release
#
# ------------------------------------------------------------------------ #
# Tested on:
#		Fedora 42 Workstation
#   bash 5.2.37(1)
#
# ------------------------------------------------------------------------ #
move_backup () {
	sudo cp -rf $HOME/.config /media/robert/Ventoy/Backup
	sudo cp -rf $HOME/.local	/media/robert/Ventoy/Backup
	sudo cp -rf $HOME/.npm	/media/robert/Ventoy/Backup
	sudo cp -rf $HOME/.dotnet	/media/robert/Ventoy/Backup
	sudo cp -rf $HOME/.dbclient	/media/robert/Ventoy/Backup
	sudo cp -rf $HOME/.expo	/media/robert/Ventoy/Backup
	sudo cp -rf $HOME/.vscode	/media/robert/Ventoy/Backup
	sudo cp -rf $HOME/.bash-history	/media/robert/Ventoy/Backup
	sudo cp -rf $HOME/.cargo	/media/robert/Ventoy/Backup
	sudo cp -rf $HOME/.android	/media/robert/Ventoy/Backup
	sudo cp -rf $HOME/.java	/media/robert/Ventoy/Backup
	sudo cp -rf $HOME/.gk	/media/robert/Ventoy/Backup
	sudo cp -rf $HOME/snap	/media/robert/Ventoy/Backup
	sudo cp -rf /var/lib/docker/containers/ /media/robert/Ventoy/Backup
	sudo cp -rf post-installation_fedora /media/robert/Ventoy/
}
finalization () {
	echo Finalizado - Pressione "enter" para sair; read_
}
#------------------------------------------------------------------------ #
# Commands (uncomment the ones you want to use)
#------------------------------------------------------------------------ #
#create_temporary_post_install_folder
move_backup