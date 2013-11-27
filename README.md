# Active Record OpenID Store Plugin

A store is required by an OpenID server and optionally by the consumer
to store associations, nonces, and auth key information across
requests and processes.  If rails is distributed across several
machines, they must must all have access to the same OpenID store
data, so the FilesystemStore won't do.

This a plugin for connecting your
OpenID enabled rails app to an ActiveRecord based OpenID store.

## Install

1). Add it to your Gemfile:

    gem 'openid_ar_store'

2). And then issued:

    $> bundle install

3). Copy migrations:

    $> bundle exec rake openid_ar_store:install:migrations

4). Run migrations: 

    $> bundle exec rake db:migrate


5). You can use OpenID Active Record Store like this:

    store = OpenIDArStore::ActiveRecordStore.new
    consumer = OpenID::Consumer.new(session, store)

6). That's it! All your OpenID state will now be stored in the database.


## What about garbage collection? 

You may garbage collect unused nonces and expired associations.Execute a rake:

    bundle exec rake gc_openid_store
