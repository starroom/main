#!/usr/bin/env puma

environment "production"
basedir = "/home/developer/starroom"
daemonize true
threads 2,16

bind  "unix:///home/developer/starroom/current/tmp/sockets/puma.sock"
pidfile  "#{basedir}/tmp/puma.pid"
state_path "#{basedir}/current/tmp/puma.state"
preload_app!
activate_control_app
