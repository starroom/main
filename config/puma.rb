#!/usr/bin/env puma

environment "production"
basedir = "/Users/littlell/work/starroom"
daemonize true
threads 2,16

# bind  "unix:///path/www/project_name/shared/tmp/sockets/puma.sock"
bind "unix:///tmp/puma.sock"
# pidfile  "#{basedir}/current/tmp/puma/pid"
pidfile "/tmp/puma.pid"
# state_path "#{basedir}/current/tmp/puma/state"
state_path "/tmp/puma.state"
preload_app!
activate_control_app