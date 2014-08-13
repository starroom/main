desc 'restart puma'
task :restart_puma => :environment do
  system "kill `cat /home/developer/starroom/tmp/puma.pid`"
  Dir.chdir "/home/developer/starroom/current"
  system "puma -C config/puma.rb"
end