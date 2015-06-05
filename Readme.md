[![Build Status](https://travis-ci.org/okayamarb/pheasant.png?branch=master)](https://travis-ci.org/okayamarb/pheasant)
[![Code Climate](https://codeclimate.com/github/okayamarb/pheasant.png)](https://codeclimate.com/github/okayamarb/pheasant)

# Pheasant
グループウェア

## マイグレーション

    $ cp config/database.yml.sample config/database.yml

自分の環境に合わせて database.yml を編集する。

    $ RACK_ENV=development bundle exec rake db:create_migration NAME=create_users

db/migrate 以下に migration ファイルが出来るので編集する。

    $ RACK_ENV=development bundle exec rake db:migrate

## アプリケーション起動

    $ RACK_ENV=development bundle exec rackup
    
追記

abc 追記
