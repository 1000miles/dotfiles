#!/bin/bash
# Error out immediately if we get any errors, so we know things failed.
set -e

# Set locale to en_US.utf8. Needed for a successful capistrano deployment
update-locale LC_ALL=en_US.utf8

apt-get update

export DEBIAN_FRONTEND=noninteractive # Prevents to show set password dialogue

# Enable the add-apt-repository command.
apt-get install -y software-properties-common

# Install build essentials & libraries
apt-get install -y git curl python-software-properties build-essential imagemagick libmagick++-dev
apt-get install -y libxslt-dev libxml2-dev zlib1g-dev
apt-get install -y vim ruby ruby-dev

# Install node (don't forget to symlink)
apt-get install -y nodejs-legacy npm

# Install nfs server
apt-get update
apt-get install -y nfs-kernel-server portmap

# Install nfs client
apt-get install -y nfs-common

# Install libgeos
apt-get install -y libgeos-dev libproj-dev libgdal-dev

# Install bundler
gem install bundler

# Install mysql
apt-get install -y libmysqlclient-dev mysql-server-5.6 
# We need MySQL 5.6 right now, but since it's not in Xenial package repositories, we need to have this one here in place
add-apt-repository 'deb http://archive.ubuntu.com/ubuntu trusty universe'
# Update apt once again so it learns about this new repo.
apt-get update
export MYSQL_ROOT_PASSWORD='root'
debconf-set-selections <<< "mysql-server-5.6 mysql-server/root_password password $MYSQL_ROOT_PASSWORD"
debconf-set-selections <<< "mysql-server-5.6 mysql-server/root_password_again password $MYSQL_ROOT_PASSWORD"
