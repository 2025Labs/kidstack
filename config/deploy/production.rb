set :domain, "www.2025kids.com"  # 

role :app, "50.10.245.159"
role :web, "50.10.245.159"
role :worker, "50.10.245.159"

server "50.10.245.159", :db, :primary=>true

