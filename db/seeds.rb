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
FactoryGirl.create(:topic, name:"Bridges", navgraphic: "navgraphics/bridges.png", headergraphic: "headernav/bridgesheader.png", video: "pics/bridgesvideo.png", catagory_id: 3)
FactoryGirl.create(:topic, name:"Skyscrapers",  navgraphic: "navgraphics/skyscrapers.png", catagory_id: 3)
FactoryGirl.create(:topic, name:"Roads",  navgraphic: "navgraphics/roads.png", catagory_id: 3)
FactoryGirl.create(:topic, name:"Plumbing",  navgraphic: "navgraphics/plumbing.png", catagory_id: 3)
FactoryGirl.create(:topic, name:"Beams",  navgraphic: "navgraphics/beams.png", catagory_id: 3)
FactoryGirl.create(:topic, name:"Push and Pull",  navgraphic: "navgraphics/push_and_pull.png", catagory_id: 3)

#topics for engineering process
FactoryGirl.create(:topic, name:"Research and Development",  navgraphic: "navgraphics/r_and_d.png", catagory_id: 1)
FactoryGirl.create(:topic, name:"Product Innovation",  navgraphic: "navgraphics/product_innovation.png", catagory_id: 1)
FactoryGirl.create(:topic, name:"Design Process",  navgraphic: "navgraphics/design_process.png", catagory_id: 1)
FactoryGirl.create(:topic, name:"Failure Analysis",  navgraphic: "navgraphics/failure_analysis.png", catagory_id: 1)
FactoryGirl.create(:topic, name:"Reverse Engineering", navgraphic: "navgraphics/reverse_engineering.png", catagory_id: 1)
FactoryGirl.create(:topic, name:"Technology", navgraphic: "navgraphics/technology.png", catagory_id: 1)

#slideshow
FactoryGirl.create(:slideshow, title: "Bridges", topic_id: 1)
#slides
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Steve1", desc: "Here is the text for Steve1", audio: "jump.wav", slideshow_id: 1)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", slideshow_id: 1)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", slideshow_id: 1)





