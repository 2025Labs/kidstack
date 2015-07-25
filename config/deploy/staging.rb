set :domain, "www.kidstack.com"  # 

role :app, "54.68.237.174"
role :web, "54.68.237.174"
role :worker, "54.68.237.174"

server "54.68.237.174", :db, :primary=>true

