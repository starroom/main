#!/usr/bin/env puma

environment "production"
basedir = "/home/developer/starroom/current"
daemonize true
threads 2,16

#bind  "unix:///home/developer/starroom/tmp/puma.sock"
#pidfile  "#{basedir}/current/tmp/puma.pid"
state_path "#{basedir}/current/tmp/puma/state"
preload_app!
activate_control_app