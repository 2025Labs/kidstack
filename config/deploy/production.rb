set :domain, "www.kidstack.com"  # 

role :app, "54.200.252.131"
role :web, "54.200.252.131"
role :worker, "54.200.252.131"

server "54.200.252.131", :db, :primary=>true

