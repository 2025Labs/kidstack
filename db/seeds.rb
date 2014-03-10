# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#catagories
FactoryGirl.create(:catagory, name:"Engineering Process", navgraphic: "navgraphics/engineering_process.png", headergraphic: "engineering process", color: "engineering_process")
FactoryGirl.create(:catagory, name:"Materials", navgraphic: "navgraphics/materials.png", headergraphic: "materials", color: "materials")
FactoryGirl.create(:catagory, name:"Structures", navgraphic: "navgraphics/structures.png", headergraphic: "structures", color: "structures")
FactoryGirl.create(:catagory, name:"Machines", navgraphic: "navgraphics/machines.png", headergraphic: "machines", color: "machines")
FactoryGirl.create(:catagory, name:"Energy", navgraphic: "navgraphics/energy.png", headergraphic: "energy", color: "energy")
FactoryGirl.create(:catagory, name:"Computing", navgraphic: "navgraphics/computing.png", headergraphic: "computing", color: "computing")

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
FactoryGirl.create(:topic, name:"Push and Pull",  navgraphic: "navgraphics/push_and_pull.png", catagory_id: 3)
FactoryGirl.create(:topic, name:"Beams",  navgraphic: "navgraphics/beams.png", catagory_id: 3)
FactoryGirl.create(:topic, name:"Bridges", navgraphic: "navgraphics/bridges.png", catagory_id: 3)
FactoryGirl.create(:topic, name:"Skyscrapers",  navgraphic: "navgraphics/skyscrapers.png", catagory_id: 3)
FactoryGirl.create(:topic, name:"Plumbing",  navgraphic: "navgraphics/plumbing.png", catagory_id: 3)
FactoryGirl.create(:topic, name:"Roads",  navgraphic: "navgraphics/roads.png", catagory_id: 3)



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
FactoryGirl.create(:slide, image: "navgraphics/engineering_process.png", title: "Engineering Process1", desc: "Here is the text for Engineering Process1", audio: "jump.wav", catagory_id: 1)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Engineering Process2", desc: "Here is the text for EngineeringProcess2", audio: "explosion.wav", catagory_id: 1)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Engineering Process3", desc: "Here is the text for EngineeringPRocess3", audio: "jump.wav", catagory_id: 1)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Engineering Process4Last", desc: "Here is the text for Engineering Process4", audio: "jump.wav", catagory_id: 1)

#slides for materials main
FactoryGirl.create(:slide, image: "navgraphics/materials.png", title: "Materials1", desc: "Here is the text for Materials1", audio: "jump.wav", catagory_id: 2)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Materials2", desc: "Here is the text for Materials2", audio: "explosion.wav", catagory_id: 2)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Materials3", desc: "Here is the text for Materials3", audio: "jump.wav", catagory_id: 2)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Materials4Last", desc: "Here is the text for Materials4", audio: "jump.wav", catagory_id: 2)

#slides for structures main
FactoryGirl.create(:slide, image: "slideshow/girlsatdesk.png", title: "Structure1", desc: "Are you at home sitting on a chair looking at your iPad? Or maybe you are at the library sitting at a desk watching on a computer. You might even be in a car or an airplane looking at a smartphone. Wherever you are, you  are likely sitting on a structure, like a chair, and sitting in a structure, like a building. If you are sitting in a vehicle like a car or an airplane, then you are in vehicle, which is machine with structural components, or parts. In this slideshow, you are going to learn what a structure is. ", audio: "structuresmain_audio/structuresmain_slide1.wav", catagory_id: 3, topic_id: 0)
FactoryGirl.create(:slide, image: "slideshow/CowboyJames.png", title: "Structure2", desc: "The simplest definition of a structure is that it's something with parts put together in a particular way. From an engineer's point of view, a structure is something that is 'load bearing'. Let's take a closer look at what each of these two words mean, so we can understand what it means to be 'load bearing'. ", audio: "structuresmain_audio/structuresmain_slide2.wav", catagory_id: 3, topic_id: 0)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Structure3", desc: "When you hear the word 'load', you might think about carrying a load, or a load of laundry. In the case of structures, load is another word for force. A force is a push or a pull on a structure or any other kind of object. 'Bearing' might be a word you've never heard before, and it can have a few different definitions (none of them having to do with bears!). In this case, bearing means to hold up or stay strong against something. Putting these two ideas together, a structure is something that can hold up or stay strong against one or more forces, which means it won't break apart, collapse, or otherwise fall down.", audio: "structuresmain_audio/structuresmain_slide3.wav", catagory_id: 3, topic_id: 0)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Structure4", desc: "Structures serve different purposes, but they are all load bearing. A chair's purpose is to be sat on (and maybe it's the place you put your backpack when you come home from school...). A house provides shelter. A bridge gives you a way to cross an obstacle. Each of these structures does something different, but they all have one load or force in common: their own weight. Before a chair can support the force of your weight, it has to support its own weight. The same thing is true for the house and the bridge. A structure's own weight is called its 'dead load.' Any other force the object supports (like you or your backpack) is called its 'live load'.", audio: "structuresmain_audio/structuresmain_slide4.wav", catagory_id: 3, topic_id: 0)
FactoryGirl.create(:slide, image: "slideshow/boysonswings.png", title: "Structure5", desc: "Some structures have to support more then the force of the weight of people and things that use it. For example, a bridge is designed to support the weight of the vehicles and people crossing it and also to resist the force of the wind blowing against it. It wouldn't be a very useful bridge if it could support a lot of users, but blew over in the first strong wind. Depending on where the bridge is located, it might also be designed to resist the movement of the earth during an earthquake. Earthquakes and wind are environmental forces that act on structures, and they are important considerations for large structures like buildings and bridges.", audio: "structuresmain_audio/structuresmain_slide5.wav", catagory_id: 3, topic_id: 0)
FactoryGirl.create(:slide, image: "slideshow/boysonchair.png", title: "Structure6", desc: "Engineers who work with structures are called structural engineers. They help to make sure that buildings and other large structures are safe to use. Structural engineers also work with machines and other objects in which their structure is critical to making sure that the object works and is safe. For example, a structural engineer would help to make sure that the frame (a structural component) of your car can support the weight of the car, your family, and your stuff. The structural engineer will also make sure that the frame doesn't collapse if you get in an accident.", audio: "structuresmain_audio/structuresmain_slide6.wav", catagory_id: 3, topic_id: 0)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Structure7Last", desc: "We are surrounded by structures. What structures do you see around you?", audio: "structuresmain_audio/structuresmain_slide7.wav", catagory_id: 3, topic_id: 0)

#slides for machines main
FactoryGirl.create(:slide, image: "navgraphics/machines.png", title: "Machines1", desc: "Here is the text for Machines1", audio: "jump.wav", catagory_id: 4)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Machines2", desc: "Here is the text for Machines2", audio: "explosion.wav", catagory_id: 4)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Machines3", desc: "Here is the text for Machines3", audio: "jump.wav", catagory_id: 4)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Machines4Last", desc: "Here is the text for Machines4", audio: "jump.wav", catagory_id: 4)

#slides for energy main
FactoryGirl.create(:slide, image: "navgraphics/energy.png", title: "Energy1", desc: "Here is the text for Energy1", audio: "jump.wav", catagory_id: 5)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Energy2", desc: "Here is the text for Energy2", audio: "explosion.wav", catagory_id: 5)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Energy3", desc: "Here is the text for Energy3", audio: "jump.wav", catagory_id: 5)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Energy4Last", desc: "Here is the text for Energy4", audio: "jump.wav", catagory_id: 5)

#slides for computing main
FactoryGirl.create(:slide, image: "navgraphics/computing.png", title: "Computing1", desc: "Here is the text for Computing1", audio: "jump.wav", catagory_id: 6)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Computing2", desc: "Here is the text for computing2", audio: "explosion.wav", catagory_id: 6)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Computing3", desc: "Here is the text for computing3", audio: "jump.wav", catagory_id: 6)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Computing4Last", desc: "Here is the text for computing4", audio: "jump.wav", catagory_id: 6)

#slides for engineering process - R & D
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Research and Development1", desc: "Here is the text for Research and Development1", audio: "jump.wav", topic_id: 1)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Research and Development2", desc: "Here is the text for Research and Development2", audio: "explosion.wav", topic_id: 1)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Research and Development3", desc: "Here is the text for Research and Development3", audio: "jump.wav", topic_id: 1)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Research and Development4Last", desc: "Here is the text for Research and Development4", audio: "jump.wav", topic_id: 1)

#slides for engineering process - Product Innovation
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Product Innovation1", desc: "Here is the text for Product Innovation1", audio: "jump.wav", topic_id: 2)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Product Innovation2", desc: "Here is the text for Product Innovation2", audio: "explosion.wav", topic_id: 2)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Product Innovation3", desc: "Here is the text for Product Innovation3", audio: "jump.wav", topic_id: 2)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Product Innovation4Last", desc: "Here is the text for Product Innovation4", audio: "jump.wav", topic_id: 2)

#slides for engineering process - Design Process
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Design Process1", desc: "Here is the text for Design Process", audio: "jump.wav", topic_id: 3)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Design Process2", desc: "Here is the text for Design Process2", audio: "explosion.wav", topic_id: 3)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Design Process3", desc: "Here is the text for Design Process3", audio: "jump.wav", topic_id: 3)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Design Process4Last", desc: "Here is the text for Design Process4", audio: "jump.wav", topic_id: 3)

#slides for engineering process - Failure Analysis
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Failure Analysis1", desc: "Here is the text for Failure Analysis1", audio: "jump.wav", topic_id: 4)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Failure Analysis2", desc: "Here is the text for Failure Analysis2", audio: "explosion.wav", topic_id: 4)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Failure Analysis3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 4)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Failure Analysis4Last", desc: "Here is the text for Failure Analysis4", audio: "jump.wav", topic_id: 4)

#slides for engineering process - Reverse Engineering
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Reverse Engineering1", desc: "Here is the text for Reverse Engineering1", audio: "jump.wav", topic_id: 5)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Reverse Engineering2", desc: "Here is the text for Reverse Engineering2", audio: "explosion.wav", topic_id: 5)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Reverse Engineering3", desc: "Here is the text for Reverse Engineering3", audio: "jump.wav", topic_id: 5)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Reverse Engineering4Last", desc: "Here is the text for Reverse Engineering4", audio: "jump.wav", topic_id: 5)

#slides for engineering process - Technology
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Technology1", desc: "Here is the text for Technonogy1", audio: "jump.wav", topic_id: 6)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Technology2", desc: "Here is the text for Technology2", audio: "explosion.wav", topic_id: 6)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Technology3", desc: "Here is the text for Technology3", audio: "jump.wav", topic_id: 6)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Technology4Last", desc: "Here is the text for Technology4", audio: "jump.wav", topic_id: 6)

#slides for materials - History of Materials
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "History of Materials1", desc: "Here is the text for History of Materials1", audio: "jump.wav", topic_id: 7)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "History of Materials2", desc: "Here is the text for History of Materials2", audio: "explosion.wav", topic_id: 7)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "History of Materials3", desc: "Here is the text for History of Materials3", audio: "jump.wav", topic_id: 7)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "History of Materials4Last", desc: "Here is the text for History of Materials4", audio: "jump.wav", topic_id: 7)

#slides for materials - Concrete
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Concrete1", desc: "Here is the text for Concrete1", audio: "jump.wav", topic_id: 8)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Concrete2", desc: "Here is the text for Concrete2", audio: "explosion.wav", topic_id: 8)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Concrete3", desc: "Here is the text for Concrete3", audio: "jump.wav", topic_id: 8)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Concrete4Last", desc: "Here is the text for Concrete4", audio: "jump.wav", topic_id: 8)

#slides for materials - Concrete
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Metals, Mining and Metallurgy", desc: "Here is the text for Metals, Mining and Metallurgy", audio: "jump.wav", topic_id: 9)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steve2", desc: "Here is the text for Steve2", audio: "explosion.wav", topic_id: 9)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve3", desc: "Here is the text for Steve3", audio: "jump.wav", topic_id: 9)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steve4", desc: "Here is the text for Steve4", audio: "jump.wav", topic_id: 9)

#slides for materials - Glass
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Glass, Ceramic and Porcelain1", desc: "Here is the text for Glass, Ceramic and Porcelain1", audio: "jump.wav", topic_id: 10)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Glass, Ceramic and Porcelain2", desc: "Here is the text for Glass, Ceramic and Porcelain2", audio: "explosion.wav", topic_id: 10)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Glass, Ceramic and Porcelain3", desc: "Here is the text for Glass, Ceramic and Porcelain3", audio: "jump.wav", topic_id: 10)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Glass, Ceramic and Porcelain4", desc: "Here is the text for Glass, Ceramic and Porcelain4", audio: "jump.wav", topic_id: 10)


#slides for materials - Steel
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Steel1", desc: "Here is the text for Steel1", audio: "jump.wav", topic_id: 11)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Steel2", desc: "Here is the text for Steel2", audio: "explosion.wav", topic_id: 11)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steel3", desc: "Here is the text for Steel3", audio: "jump.wav", topic_id: 11)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Steel4Last", desc: "Here is the text for Steel4", audio: "jump.wav", topic_id: 11)

#slides for materials - Silicon and Fiber Optics
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Silicon and Fiber Optics1", desc: "Here is the text for Silicon and Fiber Optics1", audio: "jump.wav", topic_id: 12)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Silicon and Fiber Optics2", desc: "Here is the text for Silicon and Fiber Optics2", audio: "explosion.wav", topic_id: 12)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Silicon and Fiber Optics3", desc: "Here is the text for Silicon and Fiber Optics3", audio: "jump.wav", topic_id: 12)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Silicon and Fiber Optics4", desc: "Here is the text for Silicon and Fiber Optics4", audio: "jump.wav", topic_id: 12)

#slides for structures - push and pull
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "PushandPull1", desc: "In the introduction to structures, you learned that structures are load bearing and that load is another word for force. In this section, we are going to look more closely at how structures react to the different forces that act on them, and how structures are able to stand up to those forces without permanently changing or breaking.", audio: "structuresandforces_audio/structuresandforces_slide1.wav", topic_id: 13)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "PushandPull2", desc: "By definition, a force is a push or a pull on one object by another object. When you think about pushing or pulling an object, you might think about moving it. For example you might open a door by either pushing or pulling on it. But not all objects move when you push or pull on them. If you push on a wall, you are definitely exerting a force, but unlike the door, it isn't going to move. So objects have other ways of reacting to forces besides moving. Structures that don't break under a load react to forces in three different ways. Structures can be in a state of tension, compression, or torsion (or combinations of these three states). Let's take a look at each of these words to understand what they mean.", audio: "structuresandforces_audio/structuresandforces_slide2.wav", topic_id: 13)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "PushandPull3", desc: "When a structure is being pulled, it is under tension. For example when you sit down on a swing, the force of your weight pulls down on the swing, creating tension in the swing. The chains on the swing act like a rubber band and stretch. Unlike a rubber band, you can't actually see the chain stretch because the amount of the stretch is incredibly small. Imagine instead that the chain links are made of rubber bands instead of metal. With rubber bands, you would definitely be able to see the stretch. But since the purpose of a swing is to allow you to swing, not to bounce or sink straight to the ground, it has to be built with something that stretches just a tiny amount under tension. ", audio: "structuresandforces_audio/structuresandforces_slide3.wav", topic_id: 13)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "PushandPull4", desc: "When you get off the swing, the chains return to their normal length. If they didn't, the swing would eventually sink to the ground, and it wouldn't be able to fulfill its purpose of being a swing. The swing chains act just like a rubber band that returns to its original size once you stop pulling on it.  This ability of a structure, or any other object, to stretch and then return back to its original size is a behavior known as elasticity.", audio: "structuresandforces_audio/structuresandforces_slide4.wav", topic_id: 13)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "PushandPull5", desc: "When a structure is being pushed, it is under compression. When you sit on a chair, the force of your weight pushes down on the chair, putting the chair under compression. Much as the chains on the swing got a little bit longer when your weight pulled down on them, the chair gets a little bit shorter when you push down on it. When you stand up, the chair goes back to its normal height. Just like the chains on the swing, the chair is showing its elastic behavior.", audio: "structuresandforces_audio/structuresandforces_slide5.wav", topic_id: 13)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "PushandPull6", desc: "Torsion: When a structure is being twisted, it is experiencing torsion. If instead of swinging back and forth, you twist your swing up instead, then the swing is under torsion. You know what happens once you lift your feet off the ground: the chair spins right back to its resting position. Not only is the twisted swing a fun ride, it also demonstrates how a structure is able to return to its normal position without being permanently changed after being twisted.", audio: "structuresandforces_audio/structuresandforces_slide6.wav", topic_id: 13)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "PushandPull7", desc: "You've already learned that structures and the materials they are built with have to be elastic, so they can return to their original size when forces are removed. When you exert a force on a structure, it exerts an equal and opposite force back on you. This idea is known as Newton's third law of motion. This means that if you are exerting a force down on a chair, the chair has to be exerting an equal force up back at you. If the chair wasn't exerting an equal force, you would crash through it. If it was exerting more force, you would fly off it. To get an idea for how this works, imagine that the legs of a chair have been replaced with giant, super stiff springs. When you push your finger down on a spring, you can feel it pushing back against your hand. That is exactly what the chair is doing; you just can't see it. ", audio: "structuresandforces_audio/structuresandforces_slide7.wav", topic_id: 13)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "PushandPull8Last", desc: "We used small structures like swings and chairs to demonstrate how structures respond to different forces through tension, compression, and torsion. Larger structures like buildings and bridges react to forces the exact same ways. The cables on a suspension bridge experience tension as they help support the weight of the bridge and its users. The roof of your house experiences compression if there is a lot of snow on top of it. A skyscraper can experience torsion if it twists slightly in the wind. Structures can also experience a combination of these reactions. For example a twisted swing is experiencing both torsion from the twist and tension as you are still pulling down on the chains. Tension, compression and torsion (and combinations!) are three reactions that enable structures to support the different forces acting on them.", audio: "structuresandforces_audio/structuresandforces_slide8.wav", topic_id: 13)


#slides for structures - bridges
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Beams, Columns and Other Parts1", desc: "This is the text for Beams, Columns and Other Parts1", audio: "bridges1.wav", topic_id: 14)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Beams, Columns and Other Parts2", desc: "This is the text for Beams, Columns and Other Parts2", audio: "explosion.wav", topic_id: 14)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Beams, Columns and Other Parts3", desc: "This is the text for Beams, Columns and Other Parts3", audio: "jump.wav", topic_id: 14)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Beams, Columns and Other Parts4Last", desc: "This is the text for Beams, Columns and Other Parts4", audio: "jump.wav", topic_id: 14)

#slides for structures - skyscrapers
FactoryGirl.create(:slide, image: "slideshow/girlsatdesk.png", title: "Skyscraper1", desc: "This is the text for Skyscraper1", audio: "explosion.wav", topic_id: 15)
FactoryGirl.create(:slide, image: "slideshow/girlsatdesk.png", title: "Skyscraper2", desc: "This is the text for Skyscraper2", audio: "explosion.wav", topic_id: 15)
FactoryGirl.create(:slide, image: "slideshow/girlsatdesk.png", title: "Skyscraper3", desc: "This is the text for Skyscraper3", audio: "explosion.wav", topic_id: 15)
FactoryGirl.create(:slide, image: "slideshow/girlsatdesk.png", title: "Skyscraper4Last", desc: "This is the text for Skyscraper4", audio: "explosion.wav", topic_id: 15)


#slides for structures - bridges
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Bridges1", desc: "This is the Text for Bridges1", audio: "jump.wav", topic_id: 16)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Bridges2", desc: "This is the Text for Bridges2", audio: "explosion.wav", topic_id: 16)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Bridges3", desc: "This is the Text for Bridges3", audio: "jump.wav", topic_id: 16)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Bridges4Last", desc: "This is the Text for Bridges4", audio: "jump.wav", topic_id: 16)

#slides for structures - plumbing
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Plumbing1", desc: "Plumbing1", audio: "jump.wav", topic_id: 17)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Plumbing2", desc: "Plumbing2", audio: "explosion.wav", topic_id: 17)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Plumbing3", desc: "Plumbing3", audio: "jump.wav", topic_id: 17)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Plumbing4Last", desc: "Plumbing4", audio: "jump.wav", topic_id: 17)

#slides for structures - roads
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Roads1", desc: "Here is the text for Roads1", audio: "jump.wav", topic_id: 18)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Roads2", desc: "Here is the text for Roads2", audio: "explosion.wav", topic_id: 18)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Roads3", desc: "Here is the text for Roads3", audio: "jump.wav", topic_id: 18)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Roads4Last", desc: "Here is the text for v4", audio: "jump.wav", topic_id: 18)


#slides for machines - simple machines
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Simple Machines1", desc: "Here is the text for Simple Machines1", audio: "jump.wav", topic_id: 19)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Simple Machines2", desc: "Here is the text for Simple Machines2", audio: "explosion.wav", topic_id: 19)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Simple Machines3", desc: "Here is the text for Simple Machines3", audio: "jump.wav", topic_id: 19)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Simple Machines4Last", desc: "Here is the text for Simple Machines4", audio: "jump.wav", topic_id: 19)

#slides for machines - gears
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Gears1", desc: "Here is the text for Gears1", audio: "jump.wav", topic_id: 20)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Gears2", desc: "Here is the text for Gears2", audio: "explosion.wav", topic_id: 20)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Gears3", desc: "Here is the text for Gears3", audio: "jump.wav", topic_id: 20)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Gears4Last", desc: "Here is the text for Gears4", audio: "jump.wav", topic_id: 20)

#slides for machines - motors
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Motors1", desc: "Here is the text for Motors1", audio: "jump.wav", topic_id: 21)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Motors2", desc: "Here is the text for Motors2", audio: "explosion.wav", topic_id: 21)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Motors3", desc: "Here is the text for Motors3", audio: "jump.wav", topic_id: 21)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Motors4Last", desc: "Here is the text for Motors4", audio: "jump.wav", topic_id: 21)

#slides for machines - engines
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Engines1", desc: "Here is the text for Engines1", audio: "jump.wav", topic_id: 22)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Engines2", desc: "Here is the text for Engines2", audio: "explosion.wav", topic_id: 22)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Engines3", desc: "Here is the text for Engines3", audio: "jump.wav", topic_id: 22)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Engines4Last", desc: "Here is the text for Engines4", audio: "jump.wav", topic_id: 22)

#slides for machines - electronics
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Electronics1", desc: "Here is the text for Electronics1", audio: "jump.wav", topic_id: 23)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Electronics2", desc: "Here is the text for Electronics2", audio: "explosion.wav", topic_id: 23)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Electronics3", desc: "Here is the text for Electronics3", audio: "jump.wav", topic_id: 23)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Electronics4Last", desc: "Here is the text for Electronics4", audio: "jump.wav", topic_id: 23)

#slides for machines - robotics
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Robotics1", desc: "Here is the text for Robotics1", audio: "jump.wav", topic_id: 24)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Robotics2", desc: "Here is the text for Robotics2", audio: "explosion.wav", topic_id: 24)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Robotics3", desc: "Here is the text for Robotics3", audio: "jump.wav", topic_id: 24)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Robotics4Last", desc: "Here is the text for Robotics4", audio: "jump.wav", topic_id: 24)

#slides for energy - history of energy
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "History of Energy1", desc: "Here is the text for History of Energy1", audio: "jump.wav", topic_id: 25)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "History of Energy2", desc: "Here is the text for History of Energy2", audio: "explosion.wav", topic_id: 25)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "History of Energy3", desc: "Here is the text for History of Energy3", audio: "jump.wav", topic_id: 25)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "History of Energy4Last", desc: "Here is the text for History of Energy4", audio: "jump.wav", topic_id: 25)

#slides for energy - renewable energy
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Renewable Energy1", desc: "Here is the text for Renewable Energy1", audio: "jump.wav", topic_id: 26)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Renewable Energy2", desc: "Here is the text for Renewable Energy2", audio: "explosion.wav", topic_id: 26)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Renewable Energy3", desc: "Here is the text for Renewable Energy3", audio: "jump.wav", topic_id: 26)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Renewable Energy4Last", desc: "Here is the text for Renewable Energy4", audio: "jump.wav", topic_id: 26)

#slides for energy - nonrenewable energy
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Nonrenewable Energy1", desc: "Here is the text for Nonrenewable Energy1", audio: "jump.wav", topic_id: 27)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Nonrenewable Energy2", desc: "Here is the text for Nonrenewable Energy2", audio: "explosion.wav", topic_id: 27)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Nonrenewable Energy3", desc: "Here is the text for Nonrenewable Energy3", audio: "jump.wav", topic_id: 27)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Nonrenewable Energy4", desc: "Here is the text for Nonrenewable Energy4", audio: "jump.wav", topic_id: 27)

#slides for energy - energy transmission
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Energy Transmission1", desc: "Here is the text for Energy Transmission1", audio: "jump.wav", topic_id: 28)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Energy Transmission2", desc: "Here is the text for Energy Transmission2", audio: "explosion.wav", topic_id: 28)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Energy Transmission3", desc: "Here is the text for Energy Transmission3", audio: "jump.wav", topic_id: 28)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Energy Transmission4Last", desc: "Here is the text for Energy Transmission4", audio: "jump.wav", topic_id: 28)

#slides for energy - energy storage
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Energy Storage1", desc: "Here is the text for Energy Storage1", audio: "jump.wav", topic_id: 29)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Energy Storage2", desc: "Here is the text for Energy Storage2", audio: "explosion.wav", topic_id: 29)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Energy Storage3", desc: "Here is the text for Energy Storage3", audio: "jump.wav", topic_id: 29)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Energy Storage4Last", desc: "Here is the text for Energy Storage4", audio: "jump.wav", topic_id: 29)

#slides for energy - energy consumption
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Energy Consumption1", desc: "Here is the text for Energy Consumption1", audio: "jump.wav", topic_id: 30)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Energy Consumption2", desc: "Here is the text for Energy Consumption2", audio: "explosion.wav", topic_id: 30)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Energy Consumption3", desc: "Here is the text for Energy Consumption3", audio: "jump.wav", topic_id: 30)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Energy Consumption4Last", desc: "Here is the text for Energy Consumption4", audio: "jump.wav", topic_id: 30)

#slides for computing - hardware
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Hardware1", desc: "Here is the text for Hardware1", audio: "jump.wav", topic_id: 31)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Hardware2", desc: "Here is the text for Hardware2", audio: "explosion.wav", topic_id: 31)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Hardware3", desc: "Here is the text for Hardware3", audio: "jump.wav", topic_id: 31)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Hardware4Last", desc: "Here is the text for Hardware4", audio: "jump.wav", topic_id: 31)

#slides for computing - software
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Software1", desc: "Here is the text for Software1", audio: "jump.wav", topic_id: 32)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Software2", desc: "Here is the text for Software2", audio: "explosion.wav", topic_id: 32)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Software3", desc: "Here is the text for Software3", audio: "jump.wav", topic_id: 32)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Software4Last", desc: "Here is the text for Software4", audio: "jump.wav", topic_id: 32)

#slides for computing - networks
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Networks1", desc: "Here is the text for Networks1", audio: "jump.wav", topic_id: 33)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Networks2", desc: "Here is the text for Networks2", audio: "explosion.wav", topic_id: 33)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Networks3", desc: "Here is the text for Networks3", audio: "jump.wav", topic_id: 33)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Networks4Last", desc: "Here is the text for Networks4", audio: "jump.wav", topic_id: 33)

#slides for computing - routing
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Routing1", desc: "Here is the text for Routing1", audio: "jump.wav", topic_id: 34)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Routing2", desc: "Here is the text for Routing2", audio: "explosion.wav", topic_id: 34)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Routing3", desc: "Here is the text for Routing3", audio: "jump.wav", topic_id: 34)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Routing4Last", desc: "Here is the text for Routing4", audio: "jump.wav", topic_id: 34)

#slides for computing - challenges
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Challenges in Computing1", desc: "Here is the text for Chalenges in Computing1", audio: "jump.wav", topic_id: 35)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Challenges in Computing2", desc: "Here is the text for Challenges in Computing2", audio: "explosion.wav", topic_id: 35)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Challenges in Computing3", desc: "Here is the text for Challenges in Computing3", audio: "jump.wav", topic_id: 35)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Challenges in Computing4Last", desc: "Here is the text for Challenges in Computing4", audio: "jump.wav", topic_id: 35)

#slides for computing - future
FactoryGirl.create(:slide, image: "slideshow/steve1.jpg", title: "Future of Computing1", desc: "Here is the text for Future of Computing1", audio: "jump.wav", topic_id: 36)
FactoryGirl.create(:slide, image: "slideshow/steve2.jpg", title: "Future of Computing12", desc: "Here is the text for Future of Computing12", audio: "explosion.wav", topic_id: 36)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Future of Computing13", desc: "Here is the text for Future of Computing13", audio: "jump.wav", topic_id: 36)
FactoryGirl.create(:slide, image: "slideshow/steve3.jpg", title: "Future of Computing14Last", desc: "Here is the text for Future of Computing14", audio: "jump.wav", topic_id: 36)