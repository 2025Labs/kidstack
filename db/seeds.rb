# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#catagories
FactoryGirl.create(:catagory, name:"Engineering Process", navgraphic: "navgraphics/engineering_process.png", video: "pics/engineeringprocessvideo.png")
FactoryGirl.create(:catagory, name:"Materials", navgraphic: "navgraphics/materials.png", video: "pics/materialsvideo.png")
FactoryGirl.create(:catagory, name:"Structures", navgraphic: "navgraphics/structures.png", video: "pics/structuresvideo.png", headergraphic: "headernav/structuresheader.png")
FactoryGirl.create(:catagory, name:"Machines", navgraphic: "navgraphics/machines.png", video: "pics/machinesvideo.png")
FactoryGirl.create(:catagory, name:"Energy", navgraphic: "navgraphics/energy.png", video: "pics/energyvideo.png")
FactoryGirl.create(:catagory, name:"Computing", navgraphic: "navgraphics/computing.png", video: "pics/computingvideo.png")

#topics for structures
FactoryGirl.create(:topic, name:"Bridges", c_type:"Structures", navgraphic: "navgraphics/bridges.png", headergraphic: "headernav/bridgessheader.png")
FactoryGirl.create(:topic, name:"Skyscrapers", c_type:"Structures", navgraphic: "navgraphics/skyscrapers.png")
FactoryGirl.create(:topic, name:"Roads", c_type:"Structures", navgraphic: "navgraphics/roads.png")
FactoryGirl.create(:topic, name:"Plumbing", c_type:"Structures", navgraphic: "navgraphics/plumbing.png")
FactoryGirl.create(:topic, name:"Beams", c_type:"Structures", navgraphic: "navgraphics/beams.png")
FactoryGirl.create(:topic, name:"Push and Pull", c_type:"Structures", navgraphic: "navgraphics/push_and_pull.png")

#topics for engineering process
FactoryGirl.create(:topic, name:"Research and Development", c_type:"Engineering Process", navgraphic: "navgraphics/r_and_d.png")
FactoryGirl.create(:topic, name:"Product Innovation", c_type:"Engineering Process", navgraphic: "navgraphics/product_innovation.png")
FactoryGirl.create(:topic, name:"Design Process", c_type:"Engineering Process", navgraphic: "navgraphics/design_process.png")
FactoryGirl.create(:topic, name:"Failure Analysis", c_type:"Engineering Process", navgraphic: "navgraphics/failure_analysis.png")
FactoryGirl.create(:topic, name:"Reverse Engineering", c_type:"Engineering Process", navgraphic: "navgraphics/reverse_engineering.png")
FactoryGirl.create(:topic, name:"Technology", c_type:"Engineering Process", navgraphic: "navgraphics/technology.png")


