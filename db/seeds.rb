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

#slides for structures - push and pull
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "How do Structures Stand Up to Forces?", desc: "In the introduction to structures, you learned that structures are load bearing and that load is another word for force. In this section, we are going to look more closely at how structures react to the different forces that act on them, and how structures are able to stand up to those forces without permanently changing or breaking.", audio: "jump.wav", topic_id: 13)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "How do Structures Stand Up to Forces?", desc: "By definition, a force is a push or a pull on one object by another object. When you think about pushing or pulling an object, you might think about moving it. For example you might open a door by either pushing or pulling on it. But not all objects move when you push or pull on them. If you push on a wall, you are definitely exerting a force, but unlike the door, it isn't going to move. So objects have other ways of reacting to forces besides moving. Structures that don't break under a load react to forces in three different ways. Structures can be in a state of tension, compression, or torsion (or combinations of these three states). Let's take a look at each of these words to understand what they mean.", audio: "explosion.wav", topic_id: 13)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "What is Tension", desc: "When a structure is being pulled, it is under tension. For example when you sit down on a swing, the force of your weight pulls down on the swing, creating tension in the swing. The chains on the swing act like a rubber band and stretch. Unlike a rubber band, you can't actually see the chain stretch because the amount of the stretch is incredibly small. Imagine instead that the chain links are made of rubber bands instead of metal. With rubber bands, you would definitely be able to see the stretch. But since the purpose of a swing is to allow you to swing, not to bounce or sink straight to the ground, it has to be built with something that stretches just a tiny amount under tension. ", audio: "jump.wav", topic_id: 13)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "What is Elasticity", desc: "When you get off the swing, the chains return to their normal length. If they didn't, the swing would eventually sink to the ground, and it wouldn't be able to fulfill its purpose of being a swing. The swing chains act just like a rubber band that returns to its original size once you stop pulling on it.  This ability of a structure, or any other object, to stretch and then return back to its original size is a behavior known as elasticity.", audio: "jump.wav", topic_id: 13)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "What is Compression?", desc: "When a structure is being pushed, it is under compression. When you sit on a chair, the force of your weight pushes down on the chair, putting the chair under compression. Much as the chains on the swing got a little bit longer when your weight pulled down on them, the chair gets a little bit shorter when you push down on it. When you stand up, the chair goes back to its normal height. Just like the chains on the swing, the chair is showing its elastic behavior.", audio: "jump.wav", topic_id: 13)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "What is Torsion", desc: "Torsion: When a structure is being twisted, it is experiencing torsion. If instead of swinging back and forth, you twist your swing up instead, then the swing is under torsion. You know what happens once you lift your feet off the ground: the chair spins right back to its resting position. Not only is the twisted swing a fun ride, it also demonstrates how a structure is able to return to its normal position without being permanently changed after being twisted.", audio: "jump.wav", topic_id: 13)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "How do structures stand up to forces?", desc: "You've already learned the structures and the materials they are built with have to be elastic, so they can return to their original size when forces are removed. When you exert a force on a structure, it exerts an equal and opposite force back on you. This idea is known as Newton's third law of motion. This means that if you are exerting a force down on a chair, the chair has to be exerting an equal force up back at you. If the chair wasn't exerting an equal force, you would crash through it. If it was exerting more force, you would fly off it. To get an idea for how this works, imagine that the legs of a chair have been replaced with giant, super stiff springs. When you push your finger down on a spring, you can feel it pushing back against your hand. That is exactly what the chair is doing; you just can't see it. ", audio: "jump.wav", topic_id: 13)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Structures of all Sizes experience Tension, Compression and Torsion", desc: "We used small structures like swings and chairs to demonstrate how structures respond to different forces through tension, compression, and torsion. Larger structures like buildings and bridges react to forces the exact same ways. The cables on a suspension bridge experience tension as they help support the weight of the bridge and its users. The roof of your house experiences compression if there is a lot of snow on top of it. A skyscraper can experience torsion if it twists slightly in the wind. Structures can also experience a combination of these reactions. For example a twisted swing is experiencing both torsion from the twist and tension as you are still pulling down on the chains. Tension, compression and torsion (and combinations!) are three reactions that enable structures to support the different forces acting on them.", audio: "jump.wav", topic_id: 13)


#slides for structures - bridges
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Bridges1", desc: "Bridges1", audio: "bridges1.wav", topic_id: 14)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Bridges2", desc: "Bridges2", audio: "explosion.wav", topic_id: 14)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Bridges3", desc: "Bridges3", audio: "jump.wav", topic_id: 14)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Bridges4", desc: "Bridges4", audio: "jump.wav", topic_id: 14)

#slides for structures - skyscrapers
FactoryGirl.create(:slide, image: "slideshow/girlsatdesk.png", title: "Skyscraper1", desc: "Skyscraper1", audio: "explosion.wav", topic_id: 15)
FactoryGirl.create(:slide, image: "slideshow/girlsatdesk.png", title: "Skyscraper2", desc: "Skyscraper2", audio: "explosion.wav", topic_id: 15)
FactoryGirl.create(:slide, image: "slideshow/girlsatdesk.png", title: "Skyscraper3", desc: "Skyscraper3", audio: "explosion.wav", topic_id: 15)
FactoryGirl.create(:slide, image: "slideshow/girlsatdesk.png", title: "Skyscraper4", desc: "Skyscraper4", audio: "explosion.wav", topic_id: 15)


#slides for structures - roads
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Roads1", desc: "Roads1", audio: "jump.wav", topic_id: 16)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Roads2", desc: "Roads2", audio: "explosion.wav", topic_id: 16)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Roads3", desc: "Roads3", audio: "jump.wav", topic_id: 16)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Roads4", desc: "Roads4", audio: "jump.wav", topic_id: 16)

#slides for structures - plumbing
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Plumbing1", desc: "Plumbing1", audio: "jump.wav", topic_id: 17)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Plumbing2", desc: "Plumbing2", audio: "explosion.wav", topic_id: 17)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Plumbing3", desc: "Plumbing3", audio: "jump.wav", topic_id: 17)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Plumbing4", desc: "Plumbing4", audio: "jump.wav", topic_id: 17)

#slides for structures - beams
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Beams, Columns and Other Parts", desc: "Here is the text for Beams, Columns and Other Parts", audio: "jump.wav", topic_id: 18)
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
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Robotics1", desc: "Robotics1", audio: "jump.wav", topic_id: 24)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Robotics2", desc: "Robotics2", audio: "explosion.wav", topic_id: 24)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Robotics3", desc: "Robotics3", audio: "jump.wav", topic_id: 24)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Robotics4", desc: "Robotics4", audio: "jump.wav", topic_id: 24)

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