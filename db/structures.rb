# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#### Everything for Structures
catagory = Catagory.create(name:"Structures", navgraphic: "navgraphics/structures.png", headergraphic: "structures", color: "structures", video:"//www.youtube.com/embed/kWsXIIqVy_Q", keypoints: "structures main point one.")


section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "first", main_idea:"A structure is something that has parts put together in a particular way and is load bearing", header:"A structure is something that has <span class='accent3'>parts</span> put together in a <span class='accent3'>particular way</span> and is <span class='accent3'>load bearing</span>", section_image: "section_images/boy_using_tablet_in_car.png", image_position: "imagerightsmall",content: "Are you at home sitting on a chair looking at your iPad? Or maybe you are at the library sitting at a desk watching on a computer. You might even be in a car or an airplane looking at a smartphone or a tablet. Wherever you are, you are likely sitting on a structure, like a chair, and sitting in a structure, like a building. If you are sitting in a vehicle like a car or an airplane, then you are in a machine with structural components, or parts. So what is a structure anyway?<br><br> The simplest definition of a structure is that it is something with parts put together in a particular way. From an engineer's point of view, a structure is something that is 'load bearing'. Let's take a closer look at what each of these two words mean, so we can understand what it means to be 'load bearing'.")


section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "second", main_idea:"Load bearing means to hold up against one or more forces", header:"Load bearing means to <span class='accent3'>hold up against</span> one or more <span class='accent3'>forces</span>", content: 'When you hear the word "load", you might think about carrying a load, like your backpack or a load of laundry. In the case of structures, load is another word for force. A force is a push or a pull on a structure or any other kind of object. "Bearing" might be a word you have never heard before, and it can have a few different definitions (none of them having to do with bears!). In this case, bearing means to hold up or stay strong against something. Putting these two ideas together, a structure is something that can hold up or stay strong against one or more forces, which means it will not break apart, collapse, or otherwise fall down.')

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "third", main_idea:"Structures support their own weight, which is the force gravity exerts on the structure", header:"Structures support their own <span class='accent3'>weight</span>, which is the <span class='accent3'>force gravity exerts</span> on the structure", section_image: "section_images/chair_alone_and_with_backpack.png", image_position: "imagerightlarge", content: "Structures serve different purposes, but they are all load bearing. A chair's purpose is to be sat on (and maybe it's the place you put your backpack when you come home from school...). A house provides shelter. A bridge gives you a way to cross an obstacle. Each of these structures does something different, but they all have one load or force in common: their own weight. An object’s weight is the measure of the pull of gravity on that object. Before a chair can support the force of your weight, it has to support its own weight.  The same thing is true for the house and the bridge. A structure's own weight is called its 'dead load'. Any other force the object supports (like you or your backpack) is called its 'live load'.")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "fourth", main_idea:"Large structures must also stand up to environmental forces like wind and earthquakes", header:"<span class='accent3'>Large structures</span> must also stand up to <span class='accent3'>environmental forces</span> like wind and earthquakes", section_image: "section_images/golden_gate_bridge.jpg", image_position: "imageleftlarge",content: "Some structures have to support more then the force of the weight of people and things that use it. For example, a bridge is designed to support the weight of the vehicles and people crossing it and also to resist the force of the wind blowing against it. It wouldn't be a very useful bridge if it could support a lot of users, but blew over in the first strong wind. Depending on where the bridge is located, it might also be designed to resist the movement of the earth during an earthquake. Earthquakes and wind create environmental forces that act on structures, and they are important considerations for large structures like buildings and bridges.")
 

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "fifth", main_idea:"Engineers help to ensure structures are safe", header:"<span class='accent3'>Engineers</span> help to ensure structures are <span class='accent3'>safe</spam>", content: "Engineers help to make sure that buildings and other large structures are safe to use. Engineers also help to ensure the structural safety of other kinds of technology like vehicles and other machines. For example, an engineer would help to make sure that the frame (a structural component) of your car can support the weight of your car, your family, and your stuff. An engineer will also make sure that the frame protects you if you get in an accident.<br><br> We rely on the structural safety of not only our buildings and bridges but also the vehicles we use to travel and the other machines that we encounter in our modern world. From chairs to buildings and bridges, we are surrounded by structures. What structures do you see around you?")

question = Question.create(catagory_id: catagory.id, question_num: "1", question_content: "Which of the items in this picture are structures?", question_image: "question_images/four_structures.png", explanation: "A structure is something that is load bearing. All of the items in this picture from the chair to the bridge are all load bearing, which means they can support or stand strong against one or more forces.")

answer = Answer.create(question_id: question.id, image: "answer_images/answer_a.png", answer_content: "Only the bridge and the skyscraper are structures.")

answer = Answer.create(question_id: question.id, image: "answer_images/answer_b.png", answer_content: "The bridge, house, skyscraper, and the chair are all structures.", correct: "true")

answer = Answer.create(question_id: question.id, image: "answer_images/answer_c.png", answer_content: "Only the skyscraper and the house are structures.")


question = Question.create(catagory_id: catagory.id, question_num: "2", question_content: "Which of these two chairs has a “live load”?", question_image: "question_images/chair_alone_and_with_backpack.png",explanation: "A structure’s own weight is called its “dead load”. Any other force the structure supports is called its “live load”. In this example, the backpack is the “live load” of the chair.")

answer = Answer.create(question_id: question.id, image: "answer_images/answer_a.png", answer_content: "The chair without the backpack")

answer = Answer.create(question_id: question.id, image: "answer_images/answer_b.png", answer_content: "The chair with the backpack", correct: "true")


question = Question.create(catagory_id: catagory.id, question_num: "3", question_content: "What forces does a bridge have to stand up to?", question_image: "question_images/golden_gate_bridge.jpg", explanation: "All structures have to support their own weight and the weight of their users. Large structures like bridges and buildings have to stand up to environmental forces like wind and earthquakes as well.")

answer = Answer.create(question_id: question.id, image: "answer_images/answer_a.png", answer_content: "The bridge has to support its own weight and the weight of its users.  It also has to stand up to environmental forces like wind and earthquakes.", correct: "true")

answer = Answer.create(question_id: question.id, image: "answer_images/answer_b.png",answer_content: "The bridge has to support its own weight.")

answer = Answer.create(question_id: question.id, image: "answer_images/answer_c.png",answer_content: "The bridge has to support its own weight and the weight of its users.")

topic = FactoryGirl.create(:topic, name:"forces",  navgraphic: "navgraphics/forces.png", catagory_id: catagory.id)


section = FactoryGirl.create(:section, topic_id: topic.id, linking:"first", main_idea:"Tension, compression, and torsion are three different ways that structures respond to the forces, pushes and pulls, exerted on them", header:"<span class='accent3'>Tension, compression, and torsion</span> are three different ways that structures <span class='accent3'>respond</span> to the <span class='accent3'>forces</span>, pushes and pulls, exerted on them", content:"Structures are load bearing, which means they can support or stay strong against all of the forces acting on them. A force is a push or a pull on one object by another object. When you think about pushing or pulling something, you might think about moving it. For example you might open a door by either pushing or pulling on it. But not all objects move when you push or pull on them. If you push on a wall, you are definitely exerting a force, but unlike the door, it isn't going to move. Structures still experience the force being exerted, but since their job is to stay put, they have other ways of reacting to forces besides moving. Tension, compression and torsion are three different ways that structures respond to the pushes and pulls exerted on them.")

section = FactoryGirl.create(:section, topic_id: topic.id, linking:"second", main_idea:"When a structure is being pulled, it is under tension", header:"When a structure is being <span class='accent3'>pulled</span>, it is under <span class='accent3'>tension</span>", content:"When a structure is being pulled, it is under tension. For example when you sit down on a swing, the force of your weight pulls down on the swing, creating tension in the swing. The chains on the swing act like a rubber band and stretch. Unlike a rubber band, you can't actually see the chain stretch because the amount of the stretch is incredibly small. Imagine instead that the chain links are made of rubber bands instead of metal. With rubber bands, you would definitely be able to see the stretch. But since the purpose of a swing is to allow you to swing, not to bounce or sink straight to the ground, it has to be built with something that stretches just a tiny amount under tension. <br><br> When you get off the swing, the chains return to their normal length. If they didn't, the swing would eventually sink to the ground, and it wouldn't be able to continue being a swing. The swing chains act just like a rubber band that returns to its original size once you stop pulling on it.  This ability to stretch and then return back to its original size is a behavior known as elasticity.")

section = FactoryGirl.create(:section, topic_id: topic.id, linking:"third", main_idea:"When a structure is being pushed, it is under compression", header:"When a structure is being <span class='accent3'>pushed</span>, it is under <span class='accent3'>compression</span>", content:"When you sit on a chair, the force of your weight pushes down on the chair, putting the chair under compression. Much as the chains on the swing got a little bit longer when your weight pulled down on them, the chair gets a little bit shorter when you push down on it. When you stand up, the chair goes back to its normal height. Just like the chains on the swing, the chair has elastic behavior.")

section = FactoryGirl.create(:section, topic_id: topic.id, linking:"fourth", main_idea:"When a structure is being twisted, it is under torsion", header:"When a structure is being <span class='accent3'>twisted</span>, it is under <span class='accent3'>torsion</span>", content:"When a structure is being twisted, it is under torsion. If instead of swinging back and forth, you twist your swing up instead, then the swing is under torsion. You know what happens once you lift your feet off the ground: the chair spins right back to its resting position. Not only is the twisted swing a fun ride, it also demonstrates how a structure is able to return to its normal position after being twisted.")

section = FactoryGirl.create(:section, topic_id: topic.id, linking:"fifth", main_idea:"All structures, no matter what size, or what they do, are either under compression or tension, or both forces at the same time", header:"<span class='accent3'>All structures</span>, no matter what size, or what they do, are either <span class='accent3'>under compression or tension</span>, or both forces at the same time.", content:"We used small structures like swings and chairs to demonstrate how structures respond to different pushes and pulls through tension, compression, and torsion. Larger structures like buildings and bridges react to forces these exact same ways. The cables on a suspension bridge experience tension as they help support the weight of the bridge and its users. The roof of your house experiences compression if there is a lot of snow on top of it. A skyscraper can experience torsion if it twists slightly in the wind. Structures can also experience a combination of these reactions. For example a twisted swing is experiencing both torsion from the twist and tension as you are still pulling down on the chains. Tension, compression and torsion describe three ways structures respond to the different forces acting on them.")



topic = FactoryGirl.create(:topic, name:"arches",  navgraphic: "navgraphics/arches_coming_soon.png", catagory_id: catagory.id, available: "no")



topic = FactoryGirl.create(:topic, name:"bridges",  navgraphic: "navgraphics/bridges.png", catagory_id: catagory.id)

section = FactoryGirl.create(:section, topic_id: topic.id, linking:"first", main_idea:"Bridges are structures that allow people to cross over obstacles", header:"<span class='accent3'>Bridges</span> are structures that allow people to <span class='accent3'>cross over obstacles</span>", section_image: "section_images/different_bridges.png", image_position: "imagerightlarge", image_caption: "Bridges allow us to cross over many different obstacles. Clockwise from top left: Pedestrian Bridge, Spain, &#169; JCVStock. Millau Viaduct, France, &#169; PHB.cz (Richard Semik)/Shutterstock.com. Peace Bridge, Canada, &#169; Jeff Whyte/Shutterstock.com. Tower Bridge, England, &#169; pcruciatti.", content:"Bridges are structures that allow people to cross over obstacles. An obstacle might be something found in nature, like a river or another large body of water like a bay.  Other obstacles are manmade, like a freeway that you need to safely cross over to get to school. Bridges solve transportation problems by shortening the distance people have to travel to get from one place to another. <br><br>We live in a world full of bridges. There are over 600,000 bridges in the United States alone. Bridges are some of the most beautiful and well know structures in the world. Like all structures, bridges are load bearing. Unlike many structures, the structural components of a bridge are usually on display, making it easier to understand how they support their loads.")

section = FactoryGirl.create(:section, topic_id: topic.id, linking:"second", main_idea:"When helping to design a bridge, engineers must consider the obstacle to be crossed and the forces that will act on the bridge", header:"When helping to design a bridge, engineers must consider the <span class='accent3'>obstacle</span> to be crossed and the <span class='accent3'>forces</span> that will act on the bridge.", section_image: "section_images/drawing_a_bridge.jpg", image_position: "imageleftmedium", content:"There are lots of facts engineers need to know before they can help design a bridge, including environmental factors like what obstacle needs to be crossed and how far down the ground is in case additional supports are needed. Engineers will also need to know if the area experiences any natural events like earthquakes. All of these environmental factors will help the engineer develop a set of design constraints, or requirements, that the bridge must meet to be safe.  These requirements are called design constraints, because they will represent limitations on the design, or plan, of the bridge. <br><br> Another key design constraint is ensuring the bridge is strong enough to stand up to the forces (pushes and pulls) that will be acting it. If you’ve watched the structures video, you know that if a structure is load bearing, it is designed to stand up to forces acting on it. In addition to planning for all of the environmental factors above, engineers must also plan for the bridge to stand up to, or support, its own weight – its dead load – along with the weight of the users of the bridge – its live load. The environment also holds potential forces engineers must plan for, such as the possibility of high winds blowing against the bridge.<br><br>Along with the different forces and environmental factors, an important design constraint with every engineering project is the budget, or amount of money, available to complete the project. Materials, equipment, and labor – the work done by people – are expensive and will place additional restrictions on the design. Once an engineer understands all of the design constraints on building a particular bridge, she can figure out what kind of bridge design will work best.")

section = FactoryGirl.create(:section, topic_id: topic.id, linking:"third", main_idea:"Different types of bridges, including the beam bridge, the suspension bridge, and the arch bridge, use different structural elements to support their loads", header:"Different types of bridges, including the beam bridge, the suspension bridge, and the arch bridge, use different <span class='accent3'>structural elements</span> to <span class='accent3'>support their loads</span>", section_image: "section_images/different_types_of_bridges.png", image_position: "imagerightmedium", content:"A bridge has two components: the deck, which is the horizontal part of the bridge on which users cross, and the supports for that deck. The deck can be made up of one or more spans. A span is the distance between two supports. The key distinction between the different types of bridges is how the deck of the bridge – and therefore all of the users of the bridge – is supported. Let’s look more closely at three different types of bridges, the beam bridge, the suspension bridge and the arch bridge to see how they support their loads.<br><br>A beam is a horizontal structural element supported on both ends. With bridges, this beam is called a span. A beam bridge can have a single span or it can be continuous and have many spans and therefore many supports. As with all beams, each span of a beam bridge is under both tension and compression. Compression on the top of the deck from the weight of the deck and the people and vehicles using the bridge, and tension on the bottom of the deck, as the deck is pushed down from the load it is supporting. <br><br> A suspension bridge supports its deck with a pair of cables. These two cables run along the top of two towers and are then anchored to the earth at each end. Suspender cables attach the deck to these  top two cables. All of the cables are under tension (being pulled) from the weight of holding the deck up. The towers are under compression (being pushed) from the weight of cables (and the deck they are supporting) pushing down on them.<br><br>An arch bridge works by diverting the force of its load to abutments on either side of the arch. Because of its semicircular shape, every part of an arch is under compression. If you were to stand on top of arch, it would not bend under your weight like a beam would. An arch bridge can be designed as a single arch with a deck on top, or as a series of arches that are connected with a deck on top. Arch bridges can also be built with the span of the deck passing through the arch, called a through arch bridge. A through arch bridge uses cables or beams to support the deck, which work like the suspender cables in a suspension bridge.  The oldest bridges in the world that are still standing (some still in use) are arch bridges. Modern arch bridge designs look very different than ancient arch bridges, but they still rely on the strength of the arch to support their users. ")

section = FactoryGirl.create(:section, topic_id: topic.id, linking:"fourth", main_idea:"One main distinction between the different bridge designs is the maximum length a single span of the bridge can be", header:"One main <span class='accent3'>distinction</span> between the different bridge designs is the <span class='accent3'>maximum length</span> a <span class='accent3'>single span</span> of the bridge can be", section_image: "section_images/ak_vs_lp_bridge.png", image_position: "imageleftlarge", image_caption: "Top: Lake Pontchartrain Causeway, &#169; pisaphotograpy/Shutterstock.com, Bottom: Akashi Kaikyo Bridge, &#169; Sean Pavone.",content: "Just as skyscrapers challenge engineers to build vertically, or up, bridges challenge engineers to build horizontally, or across. Bridges are noted both for their overall length, and for the length of their longest span. Beam bridges are the longest bridges in the world, but a single span on a beam bridge is shorter than a single span on many of the other bridge designs. For example, the Lake Pontchartrain Causeway, part of the highway system in Louisiana, is 23.8 miles long, but the individual spans of its deck are only 56 feet. <br><br>On the other end of the spectrum, the longest suspension bridge in the world is the Akashi Kaikyo Bridge in Japan. Like the Lake Pontchartrain Causeway, the Akashi Kaikyo Bridge is part of a highway system. This bridge is only 2.4 miles long, but its longest span is 6,532 feet long. The Akashi Kaikyo Bridge is about a tenth the length of the Lake Pontchartrain Causeway, but its longest span is 116 times longer than any span on the Causeway. <br><br>These distances and lengths point out not only the differences in the bridge designs, but also the different design constraints that each bridge must meet. Bridges are a critical part of our transporation infrastructure, or system. They are each are designed to meet the unique requirements of the many obstacles that people cross every day on their way to work, school, and play.")

topic = FactoryGirl.create(:topic, name:"forces",  navgraphic: "navgraphics/skyscrapers_coming_soon.png", catagory_id: catagory.id, available: "no")

topic = FactoryGirl.create(:topic, name:"infrastructure",  navgraphic: "navgraphics/infrastructure_coming_soon.png", catagory_id: catagory.id, available: "no")


#catagory = FactoryGirl.create(:catagory, name:"structures", navgraphic: "navgraphics/structures.png", headergraphic: "structures", color: "structures", video: "StructuresMain.m4v", keypoints: "The chair you are sitting on...is a structure<p> The building you're sitting in...is a structure<p>A structure is something that is 'load bearing'" )
#topic = FactoryGirl.create(:topic, name:"push and pull",  navgraphic: "navgraphics/push_and_pull.png", catagory_id: catagory.id, video: "EPDesign.m4v", keypoints: "Structures react to different forces on them<p>Structures are designed to stand up to those forces without breaking<p>Two important types of forces are pushes and pulls")
#topic = FactoryGirl.create(:topic, name:"beams",  navgraphic: "navgraphics/beams.png", catagory_id: catagory.id, video: "EPDesign.m4v", keypoints: "beams are pretty, beams are great, there'll be key points, but not until late-r")
#topic = FactoryGirl.create(:topic, name:"bridges", navgraphic: "navgraphics/bridges.png", catagory_id: catagory.id, video: "EPDesign.m4v", keypoints: "bridges have key points too")
#topic = FactoryGirl.create(:topic, name:"skyscrapers",  navgraphic: "navgraphics/skyscrapers.png", catagory_id: catagory.id)
