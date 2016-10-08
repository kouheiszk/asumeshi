namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end
end

after 'deploy:publishing', 'deploy:restart'
