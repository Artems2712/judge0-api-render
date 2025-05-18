# config/puma.rb
max  = Integer(ENV.fetch('RAILS_MAX_THREADS', 5))
min  = Integer(ENV.fetch('RAILS_MIN_THREADS', max))
threads min, max

port        Integer(ENV.fetch('PORT', 10000))
environment ENV.fetch('RAILS_ENV', 'production')

workers Integer(ENV.fetch('WEB_CONCURRENCY', 2))
preload_app!
plugin :tmp_restart
