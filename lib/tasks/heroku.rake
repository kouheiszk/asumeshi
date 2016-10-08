namespace :config do
  desc "heroku用の環境変数を定義する"
  task :heroku, [:app] => :environment do |_, args|
    Config::Integrations::Heroku.new(args[:app]).invoke
  end
end
