# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#### Everything for Engineering Process
catagory = Catagory.create(name:"Engineering Process", navgraphic: "navgraphics/engineering_process.png", headergraphic: "engineering process", color: "engineering_process", video:"//www.youtube.com/embed/UiaXl0giP78", keypoints: "Engineers design things and build things<p>Engineers figure out how things work, or why they don't work<p>Engineers experiment to find out what things are, what they can do, or how well they do them<p>Engineers think of new ways to use things<p>Engineers invent new things")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "first", main_idea:"There are lots of different types of Engineers and engineering activities", header:"There are lots of different <span class='accent1'>types of Engineers</span> and engineering <span class='accent2'>activities</span> ", content: "Engineers design things and build things, like bridges, robots, computers, skyscrapers, or apps. Engineers sometimes invent things, like electric cars, Mars rovers, tablet computers, mobile phones, video-sharing apps, solar panels. Engineers might have to analyze something to figure out how it works. And, sometimes, engineers might have to figure out why something bad happened to something someone else built before.")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "second", main_idea:"Engineers use their knowledge and brainpower to solve problems", header:"Engineers use their knowledge and brainpower to <span class='accent3'>solve problems</span>", content: "For example, some people are working on inventions to improve our world, like addressing climate change or increasing access to clean water. One example is the work that some people are doing to use cow farts and burps as an energy source. Cow farts and burps contain methane - a greenhouse gas that contributes to climate change - but also the principal component of natural gas, which we can use as an energy source. How cool is that? ")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "third", main_idea:"Innovation means to come up with a brand new solution to a problem", header:"<span class='accent1'>Innovation</span> means to come up with a <span class='accent1'>brand new</span> solution to a problem", section_image: "section_images/early_inventions.png", image_position: "imageleftmedium", content: "Someimes engineers experiment with things. Engineers invent new ways of using thigns that were invented before. And, sometimes, they come up with new things that didn't exist, like the first itme a working car was invented, or an airplane, or a cell phone. Those things didn't exist before - they had to be invented. Innovation is the introduction of something new, such as a new idea, method, or device.")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "fifth", main_idea:"Engineering Design involves looking at possible solutions and evaluating which one is the best solution", header:"Engineering <span class='accent1'>Design</span> involves looking at <span class='accent1'>possible solutions</span> and evaluating which one is the <span class='accent1'>best</span> solution", content: "In Engineering Design, engineers know what they are building, but have to figure out how to build it. Engineering design is where engineers think about different ways they could build something and make choices about the best ways.")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "sixth", main_idea:"Reverse Engineering is where you try to understand the design of something that you didn't build", header:"<span class='accent1'>Reverse Engineering</span> is where you try to understand the design of something that <span class='accent2'>you didn't build</span>", section_image: "section_images/opening_keyboard.png", image_position: "imagerightmedium", content: "Reverse Engineering means to study an already-built device or machine to understand its design, construction, or function - what it does, how it does it, and how it was made. Sometimes the person who built something isn't around, and you need to figure out how it works. Engineers might take it apart and look at its components, or pieces, and try to figure out what each one is, or does. They might do that in order to improve it, or fix it, or copy it - or maybe just to understand it.")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "seventh", main_idea:"Failure Analysis is where Engineers figure why something failed, and what can be learned from it", header:"<span class='accent3'>Failure Analysis</span> is where Engineers figure out <span class='accent3'>why something failed</span>, and what can be learned from it", section_image: "section_images/I35W_Collapse.jpg", image_position: "imageleftlarge", content: "Engineers want to know what went wrong with the machine or structure, so that it can be made safer. For example, if a bridge collapsed, engineers will want to know if there was a design problem that might also be a problem with similar bridges elsewhere. They might have to evaluate a number of different possible causes, and determine the root cause for the failure. For example, for a bridge collapse, there might be a problem with some materials used for the bridge. Or, a specific component might have been built incorrectly, or designed badly. Or, the bridge might be in use beyond what it was designed for - for example, it might have become too heavy for its design. Or, the bridge may have needed some repairs or maintenance, perhaps due to cracks or wear, and no one had noticed or completed the work. Failure analysis is a series of steps to find the causes for failure in a product, device, or structure, and how to correct or prevent them.")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "eighth", main_idea:"Engineers are creative problem solvers, and there are lots of different different engineering fields", header:"Engineers are creative <span class='accent1'>problem solvers</span>, and there are lots of different different engineering <span class='accent2'>fields</span>", content: "Civil Engineers build bridges or skyscrapers - but there may also be materials engineers involved as well. Aeronautical Engineers may build rockets or space shuttles or airplanes, but there may be Mechanical Engineers designing the seats or other internal components, and Computer Engineers or Controls engineers designing the software to help fly it and monitor all of the systems. Electrical Engineers design and build things related to electricity and energy. Computer Scientists create software programs - which we sometimes call apps. There are many types of engineering and many types of engineers.")

## Topic and slides for EP: Innovation
#topic = FactoryGirl.create(:topic, name:"Exploration and Innovation",  navgraphic: "navgraphics/explorationinnovation.png", catagory_id: catagory.id, video:"//www.youtube.com/embed/klNCvGRzsnE", keypoints: "It can take many people, many years to invent something new<p>" )


## Everything for EP: Design
topic = FactoryGirl.create(:topic, name:"design process",  navgraphic: "navgraphics/design_process.png", catagory_id: catagory.id, video:"//www.youtube.com/embed/r0dMu9GJCk8", keypoints: "" )

section = FactoryGirl.create(:section, topic_id: topic.id, linking: "first", main_idea:"In the Engineering Design Process, Engineers know what they are building and how it is planned to be used", header:"In the Engineering Design Process, Engineers know <span class='accent1'> what</span> they are building and  <span class='accent2'>how</span> it is planned to be used", content: "How do engineers design the things they build? Designing and building things are not the only engineering activities, but engineering design is often what people think about when they think about engineering. <br><br> Engineers design things before they build them. They start with what they know about what it needs to do - its 'functions' - as well as how it is planned be used. A good example of an engineering design problem is building a bridge. When the engineers think about how to design a bridge, they know where the bridge is supposed to go, such as across a wide river, or a narrow creek or a deep canyon. And, they know what it is supposed to carry, for example, cars and trucks, or trains, or people. As you might imagine, a walking bridge would be designed differently than a train bridge. <br><br>You can imagine what might happen if a bridge is built incorrectly for its planned use. For example, what might happen if you build a walking bridge over a deep canyon and then drive a cement truck over it? The truck could be far too heavy for the bridge, and it could end up at the bottom of a ravine. Or if you build a very short bridge over a very wide river, your bridge users might end up in the river. Sometimes, however, engineers make assumptions about how something will be used, and then it ends up being used somewhat differently. That's a topic we'll cover another day.")

section = FactoryGirl.create(:section, topic_id: topic.id, linking: "second", main_idea: "Engineers incorporate goals and constraints in their design", header: "Engineers incorporate  <span class='accent2'>goals</span> and <span class='accent3'>constraints</span> in their design", content:"Using the bridge example, we might start with the following goals and constraints: <br><br>We need a bridge to connect San Francisco to Oakland over the San Francisco Bay (goal).  It needs to be able to handle the weight of cars at maximum capacity (bumper to bumper traffic), at or above 2500 cars at a time (constraint). It needs to be able to handle the weight of people occupying the full span of the bridge for festivals (constraint). It needs to be able to withstand winds of up to 60 miles per hour (constraint). It needs to be able to withstand an earthquake of up to 7.5 magnitude on the Richter scale (constraint).<br><br>If a bridge is needed in an area where there are earthquakes or hurricanes or tornadoes, then the engineers have to think about how to design the bridge to be able to withstand those types of expected events. They might spend a great amount of time thinking about designing for earthquake safety for bridges in California, but more time thinking about hurricanes in Florida, and more time anticipating tornados in Oklahoma. <br><br>By the way, engineers think not only about <i>whether</i> a particular event may occur in an area, but also how <i>strong</i> an event of that type is likely to be. As an example, Japan's Fukishima nuclear power plant was designed to withstand an 8.6 earthquake, because engineers had not predicted that a larger earthquake was not likely to happen. The March 11, 2011 magnitude 9.1 earthquake showed that their assumption that a stronger earthquake would not occur were wrong. Sometimes designs are flawed, because perfect knowledge is never available - but engineers have to do the best job they can with the information they have.")
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "third", main_idea: "Engineers may use computers to simulate what they plan to build",  header: "Engineers may use computers to  <span class='accent1'>simulate</span> what they plan to build", content: "Engineers may try out different materials and design options to see what works better. These days, they may be able to simulate the different options using a computer. Simulate means that they can try out a design on the computer so they can see how it might perform without having to build it.")
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "fourth", main_idea: "Unlike innovation or invention, Engineers know what they are building when using the Design Process", header: "Unlike innovation or invention, Engineers know <span class='accent1'>what</span> they are building when using the Design Process", content: "Engineering Design involves figuring out the best way to build something for a particular use. When you're starting the design, you know what you're building at the end, and how it is planned to be used. You're just figuring out the <i>best</i> way to do it. This is very different from inventing something, like figuring out how to make a person fly like a bird. People wanted to fly for a long time, and they tried lots of different things before they found something that worked. Invention often takes a long time like that. Engineering design is also different from research which is exploring what something does, or is capable of, or could be used for. Inventing, or innovation, is another Engineering Process.")


## Everything for EP: Innovation
topic = FactoryGirl.create(:topic, name:"innovation process",  navgraphic: "navgraphics/innovation_process.png", catagory_id: catagory.id, video:"//www.youtube.com/embed/ozXquvURKlg", keypoints: "" )

section = FactoryGirl.create(:section, topic_id: topic.id, linking: "first", main_idea:"Invention can take many people, many years", header:"Invention can take many <span class='accent1'>people</span>, many <span class='accent2'>years</span>", content: "How do new things get invented? Inventing new things isn't easy. Invention can take many people, many years. For example, Leonardo da Vinci designed flying machines in the 1400s, but it wasn't until the 1800s that someone else, Otto Lilienthal, got a glider - a non-powered flying craft - to fly. And the Wright Brothers' didn't fly the first engine-powered airplane until 1902. Now we can all fly just about anywhere in the world. You can read more about the history of flight on the NASA site <a href='http://www.grc.nasa.gov/WWW/k-12/UEET/StudentSite/historyofflight.html' target='_blank'>here</a>. It took a long time for the automobile - the car - to be invented, too.")
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "second", main_idea:"Sometimes it's not clear who should get credit for an invention", header:"Sometimes it's not clear <span class='accent3'>who invented</span> something", content: "Sometimes there were many people that researched a particular topic, and each one contributed a new discovery or invention or idea. Then, it can be really hard to say who actually should get the credit for the invention - or even, which <i>thing</i> should be classified as the <i>first</i> one of those things. <br><br>For airplanes, there were multiple innovations in gliders before the first aircraft with an engine. For cars, Leonardo da Vinci designed some vehicles in the 1400s. There was also supposedly a wind-driven vehicle designed by <a href='http://www.ausbcomp.com/~bbott/cars/carhist.htm' target='_blank'>Guido da Vigevano</a> in 1335, and maybe even a steam-powered vehicle built for a Chinese emperor in the 1600s. The US <a href='http://www.loc.gov/rr/scitech/mysteries/auto.html' target='_blank'>Library of Congress</a> credits German Karl Benz with the first true automobile around 1885. And, Henry Ford is generally credited with figuring out how to mass-produce cars, which means to make large numbers of something in a repeatable, orderly way.")
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "third", main_idea:"For example, many discoveries and inventions were required before the telephone and Internet", header:"Many discoveries and inventions were required <span class='accent3'>before</span> the telephone and Internet", content: "We are so used to making phone calls, sending emails and text messages, or sharing videos, pictures, and status updates. But, all of these things required invention of the telephone first, and inventing the telephone required us to build some basic understanding of electricity and magnetism. It took thousands of years from observing electricity in nature to understanding that electricity and magnetism are related, and that electromagnetic energy moves in waves. And then it took more years to be able to send the first telegraph message, and then to be able to send telegrams without wires, and then to be able to make voice telephone calls. Before telegraph systems and telephones were invented, people sent messages manually, for example by sending a messenger on horseback, or sending smoke signals, or beating drums. Smoke signals and drums require the people receiving the message to be close enough to see the message or hear it. Messengers on horseback or on foot could go much farther, but then it could take a very long time for the message to be delivered.")
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "fourth", main_idea:"Many people made key discoveries that enabled the basic understanding of electricity that was required to invent telegraphy", header:"Many people made key <span class='accent1'>discoveries</span> that enabled the <span class='accent2'>basic understanding</span> of electricity that was required to invent telegraphy", content: "Benjamin Franklin experimented with electricity and showed that lightning is electrical. But, Arabs may have figured that out four hundred years prior. <br><br>Alessandro Volta discovered that copper and zinc in salt water  can produce electricty. This discovery showed that chemical reactions can create electric currents. Through this discovery, Volta figured out the basic mechanisms to make a battery work. His invention, called the voltaic pile, was created around 1800. The words 'volt' and 'voltage' are named after him. <br><br>Hans Christian Orsted discovered in 1820 that a wire carrying an electric current can move a nearby magnetic needle on a compass. The magnetic needle turned to point at a right angle from the wire. This was one of the early discoveries that electricity and magnetism are very closely related. <br><br>Andre-Marie Ampere showed that parallel wires, both with an electric current, will act like magnets and attract each other if the current is running in the same direction, or repel each other if their currents are flowing in opposite directions. And Michael Faraday discovered in 1831 that a changing magnetic field will induce an electric current. <br><br>Then, <a href='http://www.history.com/topics/inventions/telegraph' target='_blank'>Samuel Morse</a> figured out how to use patterns in the current in a wire to convey information. We call this encoding of data Morse Code. The first telegraph message was carried in 1844 between Washington DC and Baltimore, Maryland. 
<br><br>Later, James Clerk Maxwell discovered the precise mathematical relationships between electricity and magnetism, published in 1855. Maxwell discovered that electromagnetism moves, or propogates, through space at the speed of light, concluding that light is a form of electromagnetic energy. Hertz demonstrated low frequency electromagnetic radiation, called radio waves. <br><br><a href='http://www.history.com/topics/inventions/guglielmo-marconi' target='_blank'>Gugliemo Marconi</a> began experimenting with wireless telegraphy in the late 1800s and managed to send a signal - a single letter 's' - across the Atlantic Ocean in 1901. Marconi's company became well established selling wireless telegraphy 'radios' and it was a Marconi radio that the Titanic used to signal that it had hit an iceberg and was sinking. To invent wireless telegraphy, he had to use the inventions of people before him - but there are also disputes as to whether he is the person who should get credit for the invention at all. Sometimes multiple people are experimenting in an area at the same time, and they may end up making similar discoveries.")
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "fifth", main_idea:"Disagreements over credit for inventions are common", header:"<span class='accent3'>Disagreements</span> over <span class='accent2'>credit</span> for inventions are common", content: "Like many inventions, there were disputes over who should get credit for wireless radio. Marconi's company became quite successful, but others also had claims to very similar inventions. According to a <a href='http://www.history.com/topics/inventions/guglielmo-marconi' target='_blank'>History.com</a> article on Marconi, Russian physicist Alexander Popov had figured out how to broadcast in the mid 1890s. And Nikola Tesla - for whom the Tesla automobile brand is named - had claimed to invent the wireless telegraph in 1893, before Marconi. In fact, some of Marconi's patents - that is, legal claims to inventions - were declared invalid due to Tesla's prior work. Even now, companies and individuals often argue over who made an invention first, and lawsuits related to inventions are quite common.")
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "sixth", main_idea:"Some inventors were scientists or mathematicians, while others were just curious people tinkering with ideas", header:"Some inventors were <span class='accent2'>scientists</span> or mathematicians, while others were just <span class='accent2'>curious</span> people <span class='accent2'>tinkering</span> with ideas", content: "Ben Franklin dropped out of school at age ten. Michael Faraday was a self-educated scientist. James Clerk Maxwell was a highly-educated mathematician, and Hertz had a PhD and was a professor of Physics. Gugliemo Marconi was born into nobility and was privately educated. Regardless of background, the common thread that weaves these people together is a curiosity about how things work and a willingness to work to figure them out.")



## Everything for EP: FA
topic = FactoryGirl.create(:topic, name:"failure analysis",  navgraphic: "navgraphics/failure_analysis.png", catagory_id: catagory.id, video:"//www.youtube.com/embed/UiaXl0giP78", keypoints: "these are some key points" )
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "first", main_idea:"To find all about Failure Analysis, you can look at this video. The Failure Analysis content starts 5 minutes, 19 seconds (5:19) in the video", header:"To find all about Failure Analysis, you can look at this video", content: "We haven't done a full video on Failure Analysis yet, but you can look at our Engineering Process main video. The Failure Analysis content starts 5 minutes, 19 seconds (5:19) into the video.")
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "second", main_idea:"Sometimes something that was built before fails, and Engineers have to figure out why", header:"Sometimes something that was built before <span class='accent1'>fails</span>, and Engineers have to figure out <span class='accent2'>why</span>", content: "For example, a building or a bridge might collapse, or a plane might crash, or an offshore oil drilling platform may have an explosion. These things are very rare, but they have all happened at some point in time, and various types of engineers had to figure out why.")
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "third", main_idea:"Failure Analysis is about finding out what went wrong, and what can be learned from it", header:"Failure Analysis is about finding out <span class='accent3'>what went wrong</span>, and what can be <span class='accent3'>learned</span> from it", content: "For example, if a bridge deck collapsed, engineers want to know if there are other bridges of similar designs that might also be at risk. Or, if a particular material that was used may have been a poor choice. Or, if maintenance practices for that type of bridge need to be different. In any case, the engineers are not just thinking about what went wrong with the specific thing that failed, but also what it means for similar things built elsewhere. ")
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "fourth", main_idea:"Failure Analysis is a series of steps to find causes for failure in a product, device, or structure, and how to correct or prevent them", header:"Failure Analysis is a series of steps to find <span class='accent3'>causes</span> for failure in a product, device, or structure, and how to <span class='accent2'>correct or prevent</span> them", content: "There are lots of examples of past failures that have been investigated. ")


## Everything for EP: Reverse Engineering
topic = FactoryGirl.create(:topic, name:"reverse engineering",  navgraphic: "navgraphics/reverse_engineering.png", catagory_id: catagory.id, video:"//www.youtube.com/embed/UiaXl0giP78", keypoints: "these are some key points" )
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "first", main_idea:"Reverse Engineering is discussed starting from 4:15 in this video", header:"To find all about Reverse Engineering, you can look at this video", content: "We haven't done a full video on Reverse Engineering yet, but you can look at our Engineering Process main video. The Reverse Engineering content starts 4 minutes, 25 seconds (4:25) in the video.")
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "second", main_idea:"There's more to Engineering than just building new things", header:"There's <span class='accent1'>more</span> to Engineering than just <span class='accent2'>building new things</span>", content: "Sometimes Engineers have to analyze something that was built before, either to learn about it, or to understand why it broke. Sometimes the person who built something is not around - but you need to understand how it works. Maybe it stopped working, and you need to fix it. First, you need to understand how it's supposed to work before you can fix it. Or, maybe you want to improve it so that it can do more things. Then, you need to understand how it works so that you can add new capabilities to it.")
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "third", main_idea:"Reverse Engineering is a process by which Engineers take apart an already-built device to understand the details of what it does and how it works", header:"Reverse Engineering is a process by which Engineers take apart an <span class='accent1'>already-built</span> device to <span class='accent3'>understand</span> the details of what it does and how it works", content: "Why would someone want to take something apart? Well, there are a few possible reasons. One might be just to learn about it and understand how it works. Imagine if you were to take apart your television - please don't actually do that, your parents probably would be quite mad at you! But, if you did, you could see what the components, or parts, are. Electronic components tend to have information on them that identifies what they are, so you could look up the components to identify their function (you can look up just about anything online these days). If you looked at the parts and what they do, you could get a much better understanding of how the thing you use every day actually works. Engineering students often take apart devices for these very reasons. If you have older, broken devices hanging around your house (anything from mixers to remote controls to toasters), you might think about (safe!) ways to do a little of your own reverse engineering. But, please --- only do this with an adult's permission, and with competent adult supervision!")
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "fourth", main_idea:"Sometimes people want to Reverse Engineer something built by another group of people, so that they can imitate it", header:"Sometimes people want to Reverse Engineer something built by another group of people, so that they can <span class='accent2'>imitate</span> it", content: "Imagine if an alien spacecraft landed in your backyard. Wouldn't you want to know how their spacecraft works, and whether they know something we don't about space travel? Or, as another example, imagine that a well-known company is working on the next generation of its smartphone, and everyone wants to find out about what it will look like, what it can do, and what great new capabilities it will have. Next imagine that an engineer in the company has a prototype phone and has brought it along on a night out on the town...and somehow left it behind in a bar or restaurant. You can bet that the phone will find its way into the hands of someone who will do their best to reverse engineer everything they can to find all about the product that this company is preparing to sell. As a matter of fact, you might recognize this example as an actual news item! The actual item was a particular generation of Apple iPhone.")
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "fifth", main_idea:"Sometimes you need to fix or improve something that was built by another company, or other people, when those people aren't around to fix or improve it themselves", header:"Sometimes you need to fix or improve something that was built by another company, or other people, when those people <span class='accent3'>aren't around</span> to fix or improve it themselves", content:"There are other motivations for reverse engineering, including trying to figure out how legacy devices work in order to modify them, fix them, or add something new to them. For example, an organization may have an important, but outdated piece of equipment that is no longer supported by the company that manufactured it (and potentially the source company no longer even exists). The engineers will have to reverse engineer the equipment first to understand how it is put together before they can make any fixes or modifications. take something apart - physically or logically - to understand its parts, what they do, and how it functions.")
