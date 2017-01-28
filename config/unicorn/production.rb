current_path = File.expand_path('../../..', __FILE__)
shared_path = current_path.gsub(/current$/, 'shared')

working_directory current_path

worker_processes 2
timeout 30

listen "#{shared_path}/tmp/sockets/unicorn.sock", backlog: 64
pid "#{shared_path}/tmp/pids/unicorn.pid"
stderr_path "#{shared_path}/log/unicorn.log"
stdout_path "#{shared_path}/log/unicorn.log"

preload_app true

before_fork do |server, worker|
  # the following is highly recomended for Rails + "preload_app true"
  # as there's no need for the master process to hold a connection
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.connection.disconnect!
  end

  # Before forking, kill the master process that belongs to the .oldbin PID.
  # This enables 0 downtime deploys.

  # workerの数が1以上ならTTOUを送ってworkerを減らす
  # workerの数が1なら古いmasterをkillする
  old_pid = "#{server.config[:pid]}.oldbin"
  if File.exists?(old_pid) && server.pid != old_pid
    begin
      sig = (worker.nr + 1) >= server.worker_processes ? :QUIT : :TTOU
      puts "Sending #{sig} signal to old unicorn master..."
      Process.kill(sig, File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
      # someone else did our job for us
    end
  end

  # 順次workerをkillするために、forkされる速度を落とす
  sleep 1
end

after_fork do |server, worker|
  # the following is *required* for Rails + "preload_app true",
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.establish_connection
  end
end
