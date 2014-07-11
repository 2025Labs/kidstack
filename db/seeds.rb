# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#### Everything for Engineering Process
catagory = Catagory.create(name:"Engineering Process", navgraphic: "navgraphics/engineering_process.png", headergraphic: "engineering process", color: "engineering_process", video:"//www.youtube.com/embed/UiaXl0giP78", keypoints: "What is an Engineer? <p> Engineers design things and build things<p>Engineers figure out how things work, or why they don't work<p>Engineers experiment to find out what things are, what they can do, or how well they do them<p>Engineers think of new ways to use things<p>Engineers invent new things")

## Topic and slides for EP: Innovation
#topic = FactoryGirl.create(:topic, name:"Exploration and Innovation",  navgraphic: "navgraphics/explorationinnovation.png", catagory_id: catagory.id, video:"//www.youtube.com/embed/klNCvGRzsnE", keypoints: "It can take many people, many years to invent something new<p>" )


## Everything for EP: Design
topic = FactoryGirl.create(:topic, name:"design process",  navgraphic: "navgraphics/design_process.png", catagory_id: catagory.id, video:"//www.youtube.com/embed/klNCvGRzsnE", keypoints: "And here are some key points<p>" )


## Everything for EP: R&D
#FactoryGirl.create(:topic, name:"research and development",  navgraphic: "navgraphics/r_and_d.png", catagory_id: 1)
#topic = Topic.create(name:"Research and Development",  navgraphic: "navgraphics/r_and_d.png", catagory_id: catagory.id, video:"//www.youtube.com/embed/klNCvGRzsnE", keypoints: "And here are some key points<p>" )

## Everything for EP: Failure Analysis 
#topic = FactoryGirl.create(:topic, name:"failure analysis",  navgraphic: "navgraphics/failure_analysis.png", catagory_id: catagory.id, video: "EPDesign.m4v", keypoints: "And here are some key points<p>"  )
#slides for engineering process - Failure Analysis

## Everything for EP: Reverse Engineering
#topic = FactoryGirl.create(:topic, name:"reverse engineering", navgraphic: "navgraphics/reverse_engineering.png", catagory_id: catagory.id, video: "EPDesign.m4v", keypoints: "And here are some key points<p>"  )

#### Everything for Materials
#catagory = FactoryGirl.create(:catagory, name:"materials", navgraphic: "navgraphics/materials.png", headergraphic: "materials", color: "materials", keypoints: "And here are some key points<p>" )
#topic = FactoryGirl.create(:topic, name:"metal",  navgraphic: "navgraphics/materialsmetal.png", catagory_id: catagory.id, keypoints: "And here are some key points<p>")
#topic = FactoryGirl.create(:topic, name:"glass",  navgraphic: "navgraphics/materialsglass.png", catagory_id: catagory.id)
#topic = FactoryGirl.create(:topic, name:"steel",  navgraphic: "navgraphics/materialssteel.png", catagory_id: catagory.id)
#topic = FactoryGirl.create(:topic, name:"silion",  navgraphic: "navgraphics/materialssilicon.png", catagory_id: catagory.id)

#### Everything for Structures
#catagory = FactoryGirl.create(:catagory, name:"structures", navgraphic: "navgraphics/structures.png", headergraphic: "structures", color: "structures", video: "StructuresMain.m4v", keypoints: "The chair you are sitting on...is a structure<p> The building you're sitting in...is a structure<p>A structure is something that is 'load bearing'" )
#topic = FactoryGirl.create(:topic, name:"push and pull",  navgraphic: "navgraphics/push_and_pull.png", catagory_id: catagory.id, video: "EPDesign.m4v", keypoints: "Structures react to different forces on them<p>Structures are designed to stand up to those forces without breaking<p>Two important types of forces are pushes and pulls")
#topic = FactoryGirl.create(:topic, name:"beams",  navgraphic: "navgraphics/beams.png", catagory_id: catagory.id, video: "EPDesign.m4v", keypoints: "beams are pretty, beams are great, there'll be key points, but not until late-r")
#topic = FactoryGirl.create(:topic, name:"bridges", navgraphic: "navgraphics/bridges.png", catagory_id: catagory.id, video: "EPDesign.m4v", keypoints: "bridges have key points too")
#topic = FactoryGirl.create(:topic, name:"skyscrapers",  navgraphic: "navgraphics/skyscrapers.png", catagory_id: catagory.id)

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