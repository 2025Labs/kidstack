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


#slides for structures main
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Steve1", desc: "Here is the text for Steve1", audio: "jump.wav", catagory_id: 3)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", catagory_id: 3)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", catagory_id: 3)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", catagory_id: 3)


#slides for structures - bridges
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Steve1", desc: "Here is the text for Steve1", audio: "jump.wav", topic_id: 1)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 1)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 1)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 1)

#slides for structures - skyscrapers
FactoryGirl.create(:slide, image: "slideshow/girlsatdesk.png", title: "What is a Structure?", desc: "Are you sitting at home on a chair looking at your iPad? Or maybe you are at the library or school sitting at a desk watching or reading on a computer. You might even be in a car or an airplane looking at a smartphone. Wherever you are, you  are likely sitting on a structure, like a chair, and sitting in a structure, like a building or a vehicle. In this slideshow, you are going to learn what a structure is.", audio: "structure1.m4a", topic_id: 2)
FactoryGirl.create(:slide, image: "slideshow/CowboyJames.png", title: "What is a Structure?", desc: "A structure is something with parts arranged in a particular way. In engineering, a structure is something that is load bearing. What does load bearing mean? Let’s start by understanding what engineers mean by “load.” The scientific word for load is force. You may have learned about forces at school in a science class.", audio: "explosion.wav", topic_id: 2)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "What is a Force", desc: "A force is either a push or pull on an object resulting from its interaction with another object.  Lets say you are one of the objects and the other object is a door. Some doors you have to push to open, some doors you have to pull to open. Whether you are pushing or pulling, you are exerting a force on the door.", audio: "jump.wav", topic_id: 2)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "What does Load Bearing Mean?", desc: "Now push against the wall. You are exerting the same force, but the wall isn’t moving. That’s the idea with structures – they are designed to stand up to the pushes and pulls they undergo without collapsing. That’s what load bearing means.", audio: "jump.wav", topic_id: 2)
FactoryGirl.create(:slide, image: "slideshow/boysonswings.png", title: "What does Load Bearing Mean?", desc: "With structures, a force that is a push creates compression. A force that is a pull creates tension. When you sit on a chair you are adding compression to the chair, because you are pushing down on it. When you sit on a swing you are adding tension to the chains, because you are pulling down on them.", audio: "jump.wav", topic_id: 2)
FactoryGirl.create(:slide, image: "slideshow/boysonchair.png", title: "When Do Engineers Get Involved?", desc: "Different structures are designed to hold up with different forces being exerted on them. For example, a chair is designed to hold up under the weight of a person sitting on it. Engineers get involved with the forces acting on an object get more complicated. For example,  a bridge is designed to support the weight of the vehicles and people crossing it and also to resist the force of the wind blowing against it. Depending on where the bridge is located, it might also be designed to resist the movement of the earth during an earthquake.", audio: "jump.wav", topic_id: 2)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "What structures do you see around you?", desc: "A bridge or maybe a skyscraper may have been one of the first things you thought of when you read the word structure. But don’t forget, structures also include items like tables and chairs, which have a lot fewer parts and have much less at stake if they fail. What are some of the structures you see around you right now?", audio: "jump.wav", topic_id: 2)

#slides for engineering process R & D
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Steve1inR&D", desc: "Here is the text for Steve1", audio: "jump.wav", topic_id: 7)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2inR&D", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 7)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3inR&D", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 7)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4inR&D", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 7)



