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

#topics for engineering process
FactoryGirl.create(:topic, name:"Research and Development",  navgraphic: "navgraphics/r_and_d.png", catagory_id: 1)
FactoryGirl.create(:topic, name:"Product Innovation",  navgraphic: "navgraphics/product_innovation.png", catagory_id: 1)
FactoryGirl.create(:topic, name:"Design Process",  navgraphic: "navgraphics/design_process.png", catagory_id: 1)
FactoryGirl.create(:topic, name:"Failure Analysis",  navgraphic: "navgraphics/failure_analysis.png", catagory_id: 1)
FactoryGirl.create(:topic, name:"Reverse Engineering", navgraphic: "navgraphics/reverse_engineering.png", catagory_id: 1)
FactoryGirl.create(:topic, name:"Technology", navgraphic: "navgraphics/technology.png", catagory_id: 1)

#topics for materials
FactoryGirl.create(:topic, name:"History of Materials", navgraphic: "navgraphics/historyofmaterials.png", catagory_id: 2)
FactoryGirl.create(:topic, name:"Concrete",  navgraphic: "navgraphics/materialsconcrete.png", catagory_id: 2)
FactoryGirl.create(:topic, name:"Metal",  navgraphic: "navgraphics/materialsmetal.png", catagory_id: 2)
FactoryGirl.create(:topic, name:"Glass",  navgraphic: "navgraphics/materialsglass.png", catagory_id: 2)
FactoryGirl.create(:topic, name:"Steel",  navgraphic: "navgraphics/materialssteel.png", catagory_id: 2)
FactoryGirl.create(:topic, name:"Silion",  navgraphic: "navgraphics/materialssilicon.png", catagory_id: 2)

#topics for structures
FactoryGirl.create(:topic, name:"Bridges", navgraphic: "navgraphics/bridges.png", headergraphic: "headernav/bridgesheader.png", catagory_id: 3)
FactoryGirl.create(:topic, name:"Skyscrapers",  navgraphic: "navgraphics/skyscrapers.png", catagory_id: 3)
FactoryGirl.create(:topic, name:"Roads",  navgraphic: "navgraphics/roads.png", catagory_id: 3)
FactoryGirl.create(:topic, name:"Plumbing",  navgraphic: "navgraphics/plumbing.png", catagory_id: 3)
FactoryGirl.create(:topic, name:"Beams",  navgraphic: "navgraphics/beams.png", catagory_id: 3)
FactoryGirl.create(:topic, name:"Push and Pull",  navgraphic: "navgraphics/push_and_pull.png", catagory_id: 3)

#topics for machines
FactoryGirl.create(:topic, name:"Simple Machines", navgraphic: "navgraphics/machinessimplemachines.png", catagory_id: 4)
FactoryGirl.create(:topic, name:"Gears",  navgraphic: "navgraphics/gears.png", catagory_id: 4)
FactoryGirl.create(:topic, name:"Motors",  navgraphic: "navgraphics/machinesmotors.png", catagory_id: 4)
FactoryGirl.create(:topic, name:"Engines",  navgraphic: "navgraphics/machinesengines.png", catagory_id: 4)
FactoryGirl.create(:topic, name:"Electronics",  navgraphic: "navgraphics/machineselectronics.png", catagory_id: 4)
FactoryGirl.create(:topic, name:"Robotics",  navgraphic: "navgraphics/machinesrobotics.png", catagory_id: 4)

#topics for energy
FactoryGirl.create(:topic, name:"History of Energy", navgraphic: "navgraphics/historyofenergy.png", catagory_id: 5)
FactoryGirl.create(:topic, name:"Renewable Energy",  navgraphic: "navgraphics/renewableenergy.png", catagory_id: 5)
FactoryGirl.create(:topic, name:"Nonrenewable Energy",  navgraphic: "navgraphics/nonrenewableenergy.png", catagory_id: 5)
FactoryGirl.create(:topic, name:"Energy Transmission",  navgraphic: "navgraphics/energytransmission.png", catagory_id: 5)
FactoryGirl.create(:topic, name:"Energy Storage",  navgraphic: "navgraphics/energystorage.png", catagory_id: 5)
FactoryGirl.create(:topic, name:"Energy Consumption",  navgraphic: "navgraphics/energyconsumption.png", catagory_id: 5)

#topics for computing
FactoryGirl.create(:topic, name:"Hardware", navgraphic: "navgraphics/computinghardware.png", catagory_id: 6)
FactoryGirl.create(:topic, name:"Software",  navgraphic: "navgraphics/computingsoftware.png", catagory_id: 6)
FactoryGirl.create(:topic, name:"Networks",  navgraphic: "navgraphics/computingnetworks.png", catagory_id: 6)
FactoryGirl.create(:topic, name:"Routing",  navgraphic: "navgraphics/computingrouting.png", catagory_id: 6)
FactoryGirl.create(:topic, name:"Challenges",  navgraphic: "navgraphics/computingchallenges.png", catagory_id: 6)
FactoryGirl.create(:topic, name:"Future",  navgraphic: "navgraphics/computingfuture.png", catagory_id: 6)


#slides for engineering process main
FactoryGirl.create(:slide, image: "navgraphics/engineering_process.png", title: "Engineering Process", desc: "Here is the text for Engineering Process", audio: "jump.wav", catagory_id: 1)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", catagory_id: 1)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", catagory_id: 1)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "steve1.wav", catagory_id: 1)

#slides for materials main
FactoryGirl.create(:slide, image: "navgraphics/materials.png", title: "Materials", desc: "Here is the text for Materials", audio: "jump.wav", catagory_id: 2)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", catagory_id: 2)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", catagory_id: 2)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", catagory_id: 2)

#slides for structures main
FactoryGirl.create(:slide, image: "slideshow/girlsatdesk.png", title: "What is a Structure?", desc: "Are you sitting at home on a chair looking at your iPad? Or maybe you are at the library or school sitting at a desk watching or reading on a computer. You might even be in a car or an airplane looking at a smartphone. Wherever you are, you  are likely sitting on a structure, like a chair, and sitting in a structure, like a building or a vehicle. In this slideshow, you are going to learn what a structure is.", audio: "structure1.m4a", catagory_id: 3)
FactoryGirl.create(:slide, image: "slideshow/CowboyJames.png", title: "What is a Structure?", desc: "A structure is something with parts arranged in a particular way. In engineering, a structure is something that is load bearing. What does load bearing mean? Let’s start by understanding what engineers mean by “load.” The scientific word for load is force. You may have learned about forces at school in a science class.", audio: "explosion.wav", catagory_id: 3)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "What is a Force", desc: "A force is either a push or pull on an object resulting from its interaction with another object.  Lets say you are one of the objects and the other object is a door. Some doors you have to push to open, some doors you have to pull to open. Whether you are pushing or pulling, you are exerting a force on the door.", audio: "jump.wav", catagory_id: 3)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "What does Load Bearing Mean?", desc: "Now push against the wall. You are exerting the same force, but the wall isn’t moving. That’s the idea with structures – they are designed to stand up to the pushes and pulls they undergo without collapsing. That’s what load bearing means.", audio: "jump.wav", catagory_id: 3)
FactoryGirl.create(:slide, image: "slideshow/boysonswings.png", title: "What does Load Bearing Mean?", desc: "With structures, a force that is a push creates compression. A force that is a pull creates tension. When you sit on a chair you are adding compression to the chair, because you are pushing down on it. When you sit on a swing you are adding tension to the chains, because you are pulling down on them.", audio: "jump.wav", catagory_id: 3)
FactoryGirl.create(:slide, image: "slideshow/boysonchair.png", title: "When Do Engineers Get Involved?", desc: "Different structures are designed to hold up with different forces being exerted on them. For example, a chair is designed to hold up under the weight of a person sitting on it. Engineers get involved with the forces acting on an object get more complicated. For example,  a bridge is designed to support the weight of the vehicles and people crossing it and also to resist the force of the wind blowing against it. Depending on where the bridge is located, it might also be designed to resist the movement of the earth during an earthquake.", audio: "jump.wav", catagory_id: 3)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "What structures do you see around you?", desc: "A bridge or maybe a skyscraper may have been one of the first things you thought of when you read the word structure. But don’t forget, structures also include items like tables and chairs, which have a lot fewer parts and have much less at stake if they fail. What are some of the structures you see around you right now?", audio: "jump.wav", catagory_id: 3)

#slides for machines main
FactoryGirl.create(:slide, image: "navgraphics/machines.png", title: "Machines", desc: "Here is the text for Machines", audio: "jump.wav", catagory_id: 4)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", catagory_id: 4)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", catagory_id: 4)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", catagory_id: 4)

#slides for energy main
FactoryGirl.create(:slide, image: "navgraphics/energy.png", title: "Energy", desc: "Here is the text for Energy", audio: "jump.wav", catagory_id: 5)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", catagory_id: 5)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", catagory_id: 5)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", catagory_id: 5)

#slides for computing main
FactoryGirl.create(:slide, image: "navgraphics/computing.png", title: "Computing", desc: "Here is the text for Computing", audio: "jump.wav", catagory_id: 6)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", catagory_id: 6)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", catagory_id: 6)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", catagory_id: 6)

#slides for engineering process - R & D
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Research and Development", desc: "Here is the text for Research and Development", audio: "jump.wav", topic_id: 1)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 1)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 1)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 1)

#slides for engineering process - Product Innovation
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Product Innovation", desc: "Here is the text for Product Innovation", audio: "jump.wav", topic_id: 2)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 2)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 2)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 2)

#slides for engineering process - Design Process
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Design Process", desc: "Here is the text for Product Innovation", audio: "jump.wav", topic_id: 3)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 3)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 3)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 3)

#slides for engineering process - Failure Analysis
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Failure Analysis", desc: "Here is the text for Failure Analysis", audio: "jump.wav", topic_id: 4)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 4)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 4)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 4)

#slides for engineering process - Reverse Engineering
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Reverse Engineering", desc: "Here is the text for Reverse Engineering", audio: "jump.wav", topic_id: 5)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 5)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 5)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 5)

#slides for engineering process - Technology
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Technology", desc: "Here is the text for Technonogy", audio: "jump.wav", topic_id: 6)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 6)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 6)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 6)

#slides for materials - History of Materials
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "History of Materials", desc: "Here is the text for History of Materials", audio: "jump.wav", topic_id: 7)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 7)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 7)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 7)

#slides for materials - Concrete
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Concrete", desc: "Here is the text for Concrete", audio: "jump.wav", topic_id: 8)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 8)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 8)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 8)

#slides for materials - Concrete
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Metals, Mining and Metallurgy", desc: "Here is the text for Metals, Mining and Metallurgy", audio: "jump.wav", topic_id: 9)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 9)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 9)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 9)

#slides for materials - Glass
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Glass, Ceramic and Porcelain", desc: "Here is the text for Glass, Ceramic and Porcelain", audio: "jump.wav", topic_id: 10)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 10)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 10)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 10)


#slides for materials - Steel
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Steel", desc: "Here is the text for Steel", audio: "jump.wav", topic_id: 11)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 11)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 11)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 11)

#slides for materials - Steel
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Silicon and Fiber Optics", desc: "Here is the text for Silicon and Fiber Optics", audio: "jump.wav", topic_id: 12)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 12)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 12)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 12)

#slides for structures - bridges
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Steve1", desc: "Here is the text for Steve1", audio: "bridges1.wav", topic_id: 13)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 13)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 13)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 13)

#slides for structures - skyscrapers
FactoryGirl.create(:slide, image: "slideshow/girlsatdesk.png", title: "Skyscraper1", desc: "Skyscraper1", audio: "explosion.wav", topic_id: 14)
FactoryGirl.create(:slide, image: "slideshow/girlsatdesk.png", title: "Skyscraper2", desc: "Skyscraper2", audio: "explosion.wav", topic_id: 14)
FactoryGirl.create(:slide, image: "slideshow/girlsatdesk.png", title: "Skyscraper3", desc: "Skyscraper3", audio: "explosion.wav", topic_id: 14)
FactoryGirl.create(:slide, image: "slideshow/girlsatdesk.png", title: "Skyscraper3", desc: "Skyscraper4", audio: "explosion.wav", topic_id: 14)


#slides for structures - roads
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Roads", desc: "Here is the text for Roads", audio: "jump.wav", topic_id: 15)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 15)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 15)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 15)

#slides for structures - plumbing
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Plumbing", desc: "Here is the text for Plumbing", audio: "jump.wav", topic_id: 16)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 16)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 16)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 16)

#slides for structures - beams
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Beams, Columns and Other Parts", desc: "Here is the text for Beams, Columns and Other Parts", audio: "jump.wav", topic_id: 17)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 17)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 17)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 17)

#slides for structures - push and pull
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Push and Pull", desc: "Here is the text for Push and Pull", audio: "jump.wav", topic_id: 18)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 18)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 18)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 18)

#slides for machines - simple machines
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Simple Machines", desc: "Here is the text for Simple Machines", audio: "jump.wav", topic_id: 19)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 19)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 19)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 19)

#slides for machines - gears
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Gears", desc: "Here is the text for Gears", audio: "jump.wav", topic_id: 20)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 20)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 20)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 20)

#slides for machines - motors
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Motors", desc: "Here is the text for Motors", audio: "jump.wav", topic_id: 21)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 21)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 21)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 21)

#slides for machines - engines
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Engines", desc: "Here is the text for Engines", audio: "jump.wav", topic_id: 22)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 22)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 22)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 22)

#slides for machines - electronics
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Electronices", desc: "Here is the text for Electronics", audio: "jump.wav", topic_id: 23)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 23)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 23)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 23)

#slides for machines - robotics
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Robotics", desc: "Here is the text for Robotics", audio: "jump.wav", topic_id: 24)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 24)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 24)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 24)

#slides for energy - history of energy
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "History of Energy", desc: "Here is the text for History of Energy", audio: "jump.wav", topic_id: 25)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 25)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 25)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 25)

#slides for energy - renewable energy
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Renewable Energy", desc: "Here is the text for Renewable Energy", audio: "jump.wav", topic_id: 26)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 26)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 26)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 26)

#slides for energy - nonrenewable energy
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Nonrenewable Energy", desc: "Here is the text for Nonrenewable Energy", audio: "jump.wav", topic_id: 27)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 27)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 27)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 27)

#slides for energy - energy transmission
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Energy Transmission", desc: "Here is the text for Energy Transmission", audio: "jump.wav", topic_id: 28)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 28)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 28)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 28)

#slides for energy - energy storage
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Energy Storage", desc: "Here is the text for Energy Storage", audio: "jump.wav", topic_id: 29)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 29)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 29)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 29)

#slides for energy - energy consumption
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Energy Consumption", desc: "Here is the text for Energy Consumption", audio: "jump.wav", topic_id: 30)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 30)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 30)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 30)

#slides for computing - hardware
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Hardware", desc: "Here is the text for Hardware", audio: "jump.wav", topic_id: 31)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 31)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 31)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 31)

#slides for computing - software
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Software", desc: "Here is the text for Software", audio: "jump.wav", topic_id: 32)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 32)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 32)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 32)

#slides for computing - networks
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Networks", desc: "Here is the text for Networks", audio: "jump.wav", topic_id: 33)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 33)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 33)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 33)

#slides for computing - routing
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Routing", desc: "Here is the text for Routing", audio: "jump.wav", topic_id: 34)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 34)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 34)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 34)

#slides for computing - challenges
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Challenges in Computing", desc: "Here is the text for Chalenges in Computing", audio: "jump.wav", topic_id: 35)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 35)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 35)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 35)

#slides for computing - future
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Future of Computing", desc: "Here is the text for Future of Computing", audio: "jump.wav", topic_id: 36)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 36)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 36)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 36)