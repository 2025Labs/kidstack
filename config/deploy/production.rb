set :domain, "www.2025kids.com"  # 

role :app, "52.10.245.159"
role :web, "52.10.245.159"
role :worker, "52.10.245.159"

server "52.10.245.159", :db, :primary=>true

