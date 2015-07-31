set :domain, "staging.2025kids.com"  # 

role :app, "54.148.230.210"
role :web, "54.148.230.210"
role :worker, "54.148.230.210"

server "54.148.230.210", :db, :primary=>true

