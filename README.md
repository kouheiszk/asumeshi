## DB作成

```
$ mysql -u root -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 29
Server version: 5.7.11 Homebrew

mysql>
GRANT ALL PRIVILEGES ON asumeshi.* TO 'asumeshi_user'@localhost IDENTIFIED BY 'asumeshi_password';
GRANT ALL PRIVILEGES ON asumeshi_test.* TO 'asumeshi_user'@localhost IDENTIFIED BY 'asumeshi_password';
set global show_compatibility_56=ON;
set global default_password_lifetime=0;

mysql> quit
Bye
```

## Rails起動

```
$ cd /path/to/project
$ bundle install --path=vendor/bundle --jobs=4
$ # mysql -uasumeshi_user -pasumeshi_password -e "DROP database asumeshi; DROP database asumeshi_test;"
$ mysql -uasumeshi_user -pasumeshi_password -e "CREATE database asumeshi CHARACTER SET utf8mb4; CREATE database asumeshi_test CHARACTER SET utf8mb4;"
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
$ bundle exec rails s
```

## クロール

```
$ bundle exec rails runner lib/crawlers/cookpad_ja.rb
$ bundle exec rails runner lib/crawlers/cookpad_us.rb
$ bundle exec rails runner lib/crawlers/cookpad_uk.rb
```
