# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#### Everything for Engineering Process
catagory = Catagory.create(name:"Engineering Process", navgraphic: "navgraphics/engineering_process.png", headergraphic: "engineering process", color: "engineering_process", video:"//www.youtube.com/embed/UiaXl0giP78", keypoints: "Engineers design things and build things<p>Engineers figure out how things work, or why they don't work<p>Engineers experiment to find out what things are, what they can do, or how well they do them<p>Engineers think of new ways to use things<p>Engineers invent new things")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "first", main_idea:"There are lots of different types of Engineers, and lots of different engineering activities", header:"There are lots of different <span class='accent1'>types of Engineers</span>, and lots of different engineering <span class='accent2'>activities</span> ", content: "Engineers design things and build things, like bridges, robots, computers, skyscrapers, or apps. Engineers sometimes invent things, like electric cars, Mars rovers, tablet computers, mobile phones, video-sharing apps, solar panels. Engineers might have to analyze something to figure out how it works. And, sometimes, engineers might have to figure out why something bad happened to something someone else built before.")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "second", main_idea:"Engineers use their knowledge and brainpower to solve problems", header:"Engineers use their knowledge and brainpower to <span class='accent3'>solve problems</span>", content: "For example, some people are working on inventions to improve our world, like addressing climate change or increasing access to clean water. One example is the work that some people are doing to use cow farts and burps as an energy source. Cow farts and burps contain methane - a greenhouse gas that contributes to climate change - but also the principal component of natural gas, which we can use as an energy source. How cool is that? ")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "third", main_idea:"Innovation is when an Engineer comes up with a brand new solution to a problem", header:"<span class='accent1'>Innovation</span> is when an Engineer comes up with a <span class='accent1'>brand new</span> solution to a problem", content: "Someimes engineers experiment with things. Engineers invent new ways of using thigns that were invented before. And, sometimes, they come up with new things that didn't exist, like the first itme a working car was invented, or an airplane, or a cell phone. Those things didn't exist before - they had to be invented. Innovation is the introduction of something new, such as a new idea, method, or device.")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "fifth", main_idea:"Engineering Design involves looking at possible solutions and evaluating which one is the best solution", header:"Engineering <span class='accent1'>Design</span> involves looking at <span class='accent1'>possible solutions</span> and evaluating which one is the <span class='accent1'>best</span> solution", content: "In Engineering Design, engineers know what they are building, but have to figure out how to build it. Engineering design is where engineers think about different ways they could build something and make choices about the best ways.")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "sixth", main_idea:"Reverse Engineering is where you try to understand the design of something that you didn't build", header:"<span class='accent1'>Reverse Engineering</span> is where you try to understand the design of something that <span class='accent2'>you didn't build</span>", content: "Reverse Engineering means to study an already-built device or machine to understand its design, construction, or function - what it does, how it does it, and how it was made. Sometimes the person who built something isn't around, and you need to figure out how it works. Engineers might take it apart and look at its components, or pieces, and try to figure out what each one is, or does. They might do that in order to improve it, or fix it, or copy it - or maybe just to understand it.")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "seventh", main_idea:"Failure analysis is where Engineers figure why something failed, and what can be learned from it", header:"<span class='accent3'>Failure analysis</span> is where Engineers figure out <span class='accent3'>why something failed</span>, and what can be learned from it", content: "Engineers want to know what went wrong with the machine or structure, so that it can be made safer. For example, if a bridge collapsed, engineers will want to know if there was a design problem that might also be a problem with similar bridges elsewhere. They might have to evaluate a number of different possible causes, and determine the root cause for the failure. For example, for a bridge collapse, there might be a problem with some materials used for the bridge. Or, a specific component might have been built incorrectly, or designed badly. Or, the bridge might be in use beyond what it was designed for - for example, it might have become too heavy for its design. Or, the bridge may have needed some repairs or maintenance, perhaps due to cracks or wear, and no one had noticed or completed the work. Failure analysis is a series of steps to find the causes for failure in a product, device, or structure, and how to correct or prevent them.")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "eighth", main_idea:"Engineers are creative problem solvers, and there are lots of different different engineering fields", header:"Engineers are creative <span class='accent1'>problem solvers</span>, and there are lots of different different engineering <span class='accent2'>fields</span>", content: "Civil Engineers build bridges or skyscrapers - but there may also be materials engineers involved as well. Aeronautical Engineers may build rockets or space shuttles or airplanes, but there may be Mechanical Engineers designing the seats or other internal components, and Computer Engineers or Controls engineers designing the software to help fly it and monitor all of the systems. Electrical Engineers design and build things related to electricity and energy. Computer Scientists create software programs - which we sometimes call apps. There are many types of engineering and many types of engineers.")

## Topic and slides for EP: Innovation
#topic = FactoryGirl.create(:topic, name:"Exploration and Innovation",  navgraphic: "navgraphics/explorationinnovation.png", catagory_id: catagory.id, video:"//www.youtube.com/embed/klNCvGRzsnE", keypoints: "It can take many people, many years to invent something new<p>" )


## Everything for EP: Design
topic = FactoryGirl.create(:topic, name:"design process",  navgraphic: "navgraphics/design_process.png", catagory_id: catagory.id, video:"//www.youtube.com/embed/r0dMu9GJCk8", keypoints: "" )

section = FactoryGirl.create(:section, topic_id: topic.id, linking: "first", main_idea:"In the Engineering Design Process, Engineers know what they are building and how it will be used.", header:"In the Engineering Design Process, Engineers know <span class='accent1'> what</span> they are building and  <span class='accent2'>how</span> it will be used.", content: "How do engineers design the things they build? Designing and building things are not the only engineering activities, but engineering design is often what people think about when they think about engineering. <p><p> Engineers design things before they build them. They start with what they know about what it needs to do, or its function as well as how it will be used. A good example of an engineering design problem is building a bridge. When the engineers think about how to design a bridge, they know where the bridge is supposed to go, such as across a wide river, or a narrow creek or a deep canyon. And they know what it is supposed to carry. For example, cars and trucks, or trains, or people. As you might imagine, a walking bridge would be designed differently than a train bridge. <p><p>You can imagine what might happen if a bridge is built incorrectly for its planned use. For example, what might happen if you build a walking bridge over a deep canyon and then drive a cement truck over it. The truck could be far too heavy for the bridge, and it could end up at the bottom of a ravine. Or if you build a very short bridge over a very wide river, your bridge users might end up in the river.")

section = FactoryGirl.create(:section, topic_id: topic.id, linking: "second", main_idea: "Engineers incorporate constraints in their design.", header: "Engineers incorporate  <span class='accent3'>constraints</span> in their design.", content:"Now what if your bridge is going to be built in an area where there are earthquakes or hurricanes or tornados. Then the engineers might also have to think about how to design the bridge to not fall down when common events for the area occur. They might spend a great amount of time thinking about earthquake safety for bridges in California, but more time thinking about hurricanes in Florida. And more time anticipating tornados in Oklahoma. <p><p>	Engineers also have to think about materials that might be used in the design and decide whether some materials are better than others. For example, could you build a bridge out of jello or cardboard boxes? What about building a bridge out of paper in a rainy area. For that matter, would a paper bridge work in any climate? <p><p> You might have noticed that many bridges these days are built out of of steel and cement. But, many older bridges were built out of wood, masonry, and sometimes iron.")
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "third", main_idea: "Engineers use computers to simulate what they plan to build.",  header: "Engineers use computers to  <span class='accent1'>simulate</span> what they plan to build.", content: "There are still many choices in how to build a bridge. Engineers may try out different materials and design options to see what works better. These days, they may be able to simulate the different options using a computer. Simulate means that they can try out a design on the computer so they can see how it might perform without having to build it.")
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "fourth", main_idea: "Unlike innovation or invention, Engineers know what they are building when using the Design Process.", header: "Unlike innovation or invention, Engineers know what they are building when using the Design Process.", content: "Engineering Design involves figuring out the best way to build something for a particular use. When you're starting the design, you know what you're building at the end, and how it is planned to be used. You're just figuring out the best way to do it. This is very different from inventing something, like figuring out how to make a person fly like a bird. People wanted to fly for a long time, and they tried lots of different things before they found something that worked. Invention often takes a long time like that. Engineering design is also different from research which is exploring what something does or is capable of or could be used for. Inventing or innovation another Engineering Process.")


## Everything for EP: Innovation
topic = FactoryGirl.create(:topic, name:"innovation process",  navgraphic: "navgraphics/innovation_process.png", catagory_id: catagory.id, video:"//www.youtube.com/embed/ozXquvURKlg", keypoints: "" )

section = FactoryGirl.create(:section, topic_id: topic.id, linking: "first", main_idea:"innovation idea 1", header:"innovation idea 1", content: "innovation content 1")

## Everything for EP: FA
topic = FactoryGirl.create(:topic, name:"failure analysis",  navgraphic: "navgraphics/failure_analysis_coming_soon.png", catagory_id: catagory.id, video:"", keypoints: "these are some key points" )
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "first", main_idea:"FA idea 1", header:"FA idea 1", content: "FA content 1")


## Everything for EP: Reverse Engineering
topic = FactoryGirl.create(:topic, name:"reverse engineering",  navgraphic: "navgraphics/reverse_engineering_coming_soon.png", catagory_id: catagory.id, video:"", keypoints: "these are some key points" )
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "first", main_idea:"RE idea 1", header:"RE idea 1", content: "RE content 1")


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