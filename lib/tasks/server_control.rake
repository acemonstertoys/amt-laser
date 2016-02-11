desc 'stop rails'
task :stop do
    pid_file = 'tmp/pids/server.pid'
    pid = File.read(pid_file).to_i
    Process.kill 9, pid
    File.delete pid_file
end



desc 'restart rails'
task :restart => :environment do
    puts "Restarting Rails in #{Rails.env}"
    pid_file = 'tmp/pids/server.pid'
    pid = File.read(pid_file).to_i rescue nil
    if pid.present?
      puts "Killing pid: #{pid}"
      Process.kill 9, pid
      File.delete pid_file
    end
    `RAILS_ENV=#{Rails.env} rails s -d`
    pid = File.read(pid_file).to_i rescue nil
    puts "Server started"
end

namespace :assets do 
    desc 'Clean and compile assets'
    task :clean_and_compile do 
        cmd = "rm -rf public/assets"
        puts cmd
        `#{cmd}`
        cmd = "RAILS_ENV=production rake assets:precompile"
        `#{cmd}`
    end
end