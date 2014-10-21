# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "#{Rails.root}/db/ep.rb"
#require "#{Rails.root}/db/materials.rb"
require "#{Rails.root}/db/structures.rb"
#require "#{Rails.root}/db/energy.rb"
#require "#{Rails.root}/db/computing.rb"



#### Everything for Materials
#catagory = FactoryGirl.create(:catagory, name:"materials", navgraphic: "navgraphics/materials.png", headergraphic: "materials", color: "materials", keypoints: "And here are some key points<p>" )
#topic = FactoryGirl.create(:topic, name:"metal",  navgraphic: "navgraphics/materialsmetal.png", catagory_id: catagory.id, keypoints: "And here are some key points<p>")
#topic = FactoryGirl.create(:topic, name:"glass",  navgraphic: "navgraphics/materialsglass.png", catagory_id: catagory.id)
#topic = FactoryGirl.create(:topic, name:"steel",  navgraphic: "navgraphics/materialssteel.png", catagory_id: catagory.id)
#topic = FactoryGirl.create(:topic, name:"silion",  navgraphic: "navgraphics/materialssilicon.png", catagory_id: catagory.id)


#### Everything for Machines
#catagory = FactoryGirl.create(:catagory, name:"machines", navgraphic: "navgraphics/machines.png", headergraphic: "machines", color: "machines", video: "EPDesign.m4v", keypoints: "Machines are fun<p>Machines are nice")
#topic = FactoryGirl.create(:topic, name:"simple machines", navgraphic: "navgraphics/machinessimplemachines.png", catagory_id: catagory.id, video: "EPDesign.m4v", keypoints: "a simple machine is...")
#topic = FactoryGirl.create(:topic, name:"gears",  navgraphic: "navgraphics/gears.png", catagory_id: catagory.id, video: "EPDesign.m4v")
#topic = FactoryGirl.create(:topic, name:"motors",  navgraphic: "navgraphics/machinesmotors.png", catagory_id: catagory.id, video: "EPDesign.m4v")
#topic = FactoryGirl.create(:topic, name:"engines",  navgraphic: "navgraphics/machinesengines.png", catagory_id: catagory.id, video: "EPDesign.m4v")
#topic = FactoryGirl.create(:topic, name:"electronics",  navgraphic: "navgraphics/machineselectronics.png", catagory_id: catagory.id, video: "EPDesign.m4v")
#topic = FactoryGirl.create(:topic, name:"robotics",  navgraphic: "navgraphics/machinesrobotics.png", catagory_id: catagory.id, video: "EPDesign.m4v")

#### Everything for Energy
#catagory = FactoryGirl.create(:catagory, name:"energy", navgraphic: "navgraphics/energy.png", headergraphic: "energy", color: "energy", video: "EPDesign.m4v")
#topic = FactoryGirl.create(:topic, name:"history of energy", navgraphic: "navgraphics/historyofenergy.png", catagory_id: catagory.id, video: "EPDesign.m4v")
#topic = FactoryGirl.create(:topic, name:"renewable energy",  navgraphic: "navgraphics/renewableenergy.png", catagory_id: catagory.id, video: "EPDesign.m4v")
#topic = FactoryGirl.create(:topic, name:"nonrenewable energy",  navgraphic: "navgraphics/nonrenewableenergy.png", catagory_id: catagory.id, video: "EPDesign.m4v")
#topic = FactoryGirl.create(:topic, name:"energy transmission",  navgraphic: "navgraphics/energytransmission.png", catagory_id: catagory.id, video: "EPDesign.m4v")
#topic = FactoryGirl.create(:topic, name:"energy storage",  navgraphic: "navgraphics/energystorage.png", catagory_id: catagory.id, video: "EPDesign.m4v")
#topic = FactoryGirl.create(:topic, name:"energy consumption",  navgraphic: "navgraphics/energyconsumption.png", catagory_id: catagory.id, video: "EPDesign.m4v")

#### Everything for Computing
#catagory = FactoryGirl.create(:catagory, name:"computing", navgraphic: "navgraphics/computing.png", headergraphic: "computing", color: "computing", video: "EPDesign.m4v")
#topic = FactoryGirl.create(:topic, name:"hardware", navgraphic: "navgraphics/computinghardware.png", catagory_id: catagory.id, video: "EPDesign.m4v")
#topic = FactoryGirl.create(:topic, name:"software",  navgraphic: "navgraphics/computingsoftware.png", catagory_id: catagory.id, video: "EPDesign.m4v")
#topic = FactoryGirl.create(:topic, name:"networks",  navgraphic: "navgraphics/computingnetworks.png", catagory_id: catagory.id, video: "EPDesign.m4v")
#topic = FactoryGirl.create(:topic, name:"routing",  navgraphic: "navgraphics/computingrouting.png", catagory_id: catagory.id, video: "EPDesign.m4v")
#topic = FactoryGirl.create(:topic, name:"challenges",  navgraphic: "navgraphics/computingchallenges.png", catagory_id: catagory.id, video: "EPDesign.m4v")
#topic = FactoryGirl.create(:topic, name:"future",  navgraphic: "navgraphics/computingfuture.png", catagory_id: catagory.id, video: "EPDesign.m4v")