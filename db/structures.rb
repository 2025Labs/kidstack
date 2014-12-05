# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#### Everything for Structures
catagory = Catagory.create(name:"Structures", navgraphic: "navgraphics/structures.png", headergraphic: "structures", color: "structures", keypoints: "structures main point one.")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "first", main_idea:"A structure is something that has parts put together in a particular way and is load bearing", header:"A structure is something that has <span class='accent3'>parts</span> put together in a <span class='accent3'>particular way</span> and is <span class='accent3'>load bearing</span>", section_image: "section_images/boy_using_tablet_in_car.png", image_position: "imagerightsmall",content: "Are you at home sitting on a chair looking at your iPad? Or maybe you are at the library sitting at a desk watching on a computer. You might even be in a car or an airplane looking at a smartphone or a tablet. Wherever you are, you are likely sitting on a structure, like a chair, and sitting in a structure, like a building. If you are sitting in a vehicle like a car or an airplane, then you are in a machine with structural components, or parts. So what is a structure anyway?<br><br>
The simplest definition of a structure is that it is something with parts put together in a particular way. From an engineer's point of view, a structure is something that is 'load bearing'. Let's take a closer look at what each of these two words mean, so we can understand what it means to be 'load bearing'.")


section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "second", main_idea:"Load bearing means to hold up against one or more forces", header:"Load bearing means to <span class='accent3'>hold up against</span> one or more <span class='accent3'>forces</span>", content: 'When you hear the word "load", you might think about carrying a load, like your backpack or a load of laundry. In the case of structures, load is another word for force. A force is a push or a pull on a structure or any other kind of object. "Bearing" might be a word you have never heard before, and it can have a few different definitions (none of them having to do with bears!). In this case, bearing means to hold up or stay strong against something. Putting these two ideas together, a structure is something that can hold up or stay strong against one or more forces, which means it will not break apart, collapse, or otherwise fall down.')

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "third", main_idea:"Structures support their own weight, which is the force gravity exerts on the structure", header:"Structures support their own <span class='accent3'>weight</span>, which is the <span class='accent3'>force gravity exerts</span> on the structure", section_image: "section_images/chair_alone_and_with_backpack.png", image_position: "imagerightlarge", content: "Structures serve different purposes, but they are all load bearing. A chair's purpose is to be sat on (and maybe it's the place you put your backpack when you come home from school...). A house provides shelter. A bridge gives you a way to cross an obstacle. Each of these structures does something different, but they all have one load or force in common: their own weight. An object’s weight is the measure of the pull of gravity on that object. Before a chair can support the force of your weight, it has to support its own weight.  The same thing is true for the house and the bridge. A structure's own weight is called its 'dead load'. Any other force the object supports (like you or your backpack) is called its 'live load'.")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "fourth", main_idea:"Large structures must also stand up to environmental forces like wind and earthquakes", header:"<span class='accent3'>Large structures</span> must also stand up to <span class='accent3'>environmental forces</span> like wind and earthquakes", section_image: "section_images/golden_gate_bridge.jpg", image_position: "imageleftlarge",content: "Some structures have to support more then the force of the weight of people and things that use it. For example, a bridge is designed to support the weight of the vehicles and people crossing it and also to resist the force of the wind blowing against it. It wouldn't be a very useful bridge if it could support a lot of users, but blew over in the first strong wind. Depending on where the bridge is located, it might also be designed to resist the movement of the earth during an earthquake. Earthquakes and wind create environmental forces that act on structures, and they are important considerations for large structures like buildings and bridges.")
 

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "fifth", main_idea:"Structural Engineers help to ensure structures are safe", header:"<span class='accent3'>Structural Engineers</span> help to ensure structures are <span class='accent3'>safe</spam>", content: "Engineers who work with structures are called structural engineers. They help to make sure that buildings and other large structures are safe to use. Structural engineers also work with machines and other objects in which their structure is critical to making sure that the object works and is safe. For example, a structural engineer would help to make sure that the frame (a structural component) of your car can support the weight of the car, your family, and your stuff. The structural engineer will also make sure that the frame protects you if you get in an accident.<br><br> We are surrounded by structures. What structures do you see around you?")

topic = FactoryGirl.create(:topic, name:"forces",  navgraphic: "navgraphics/forces_coming_soon.png", catagory_id: catagory.id, available: "no")

topic = FactoryGirl.create(:topic, name:"forces",  navgraphic: "navgraphics/arches_coming_soon.png", catagory_id: catagory.id, available: "no")

topic = FactoryGirl.create(:topic, name:"forces",  navgraphic: "navgraphics/bridges_coming_soon.png", catagory_id: catagory.id, available: "no")

topic = FactoryGirl.create(:topic, name:"forces",  navgraphic: "navgraphics/skyscrapers_coming_soon.png", catagory_id: catagory.id, available: "no")

topic = FactoryGirl.create(:topic, name:"infrastructure",  navgraphic: "navgraphics/infrastructure_coming_soon.png", catagory_id: catagory.id, available: "no")


#catagory = FactoryGirl.create(:catagory, name:"structures", navgraphic: "navgraphics/structures.png", headergraphic: "structures", color: "structures", video: "StructuresMain.m4v", keypoints: "The chair you are sitting on...is a structure<p> The building you're sitting in...is a structure<p>A structure is something that is 'load bearing'" )
#topic = FactoryGirl.create(:topic, name:"push and pull",  navgraphic: "navgraphics/push_and_pull.png", catagory_id: catagory.id, video: "EPDesign.m4v", keypoints: "Structures react to different forces on them<p>Structures are designed to stand up to those forces without breaking<p>Two important types of forces are pushes and pulls")
#topic = FactoryGirl.create(:topic, name:"beams",  navgraphic: "navgraphics/beams.png", catagory_id: catagory.id, video: "EPDesign.m4v", keypoints: "beams are pretty, beams are great, there'll be key points, but not until late-r")
#topic = FactoryGirl.create(:topic, name:"bridges", navgraphic: "navgraphics/bridges.png", catagory_id: catagory.id, video: "EPDesign.m4v", keypoints: "bridges have key points too")
#topic = FactoryGirl.create(:topic, name:"skyscrapers",  navgraphic: "navgraphics/skyscrapers.png", catagory_id: catagory.id)
