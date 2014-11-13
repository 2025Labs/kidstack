# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



#### Everything for Machines

catagory = FactoryGirl.create(:catagory, name:"Machines", navgraphic: "navgraphics/machines.png", headergraphic: "machines", color: "machines")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "first", main_idea:"A machine is something with one or more parts that uses energy to do a job", header:"A machine is something with one or more <span class='accent1'>parts</span> that uses <span class='accent1'>energy</span> to do a job", content: "You know that a bicycle or a car is a machine, but did you know that a doorknob is also a machine?  A machine is something with one or more parts that uses energy to do a job. Machines include tools like scissors, hammers, and flashlights. Machines also include vehicles like bicycles, cars, and planes, and appliances like refrigerators, washing machines, and microwaves. Electronic devices such as televisions, computers, tablets, and smart phones are also machines. There are machines that do almost any kind of work you can think of, but they all have at least one part and use energy to get something done.")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "second", main_idea:"Simple Machines have few parts and make work easier", header:"<span class='accent1'>Simple Machines</span> have <span class='accent1'>few parts</span> and make <span class='accent1'>work easier</span>", content: "Simple machines are a special class of machines, typically with only one or two parts. There are six types of simple machines:  levers, pulleys, wheels and axels, screws, wedges, and inclined planes.  Some examples of simple machines include doorknobs, ramps, and knives. Simple machines make work easier. In our everyday lives, we use the word work to describe many different efforts. In engineering and science, the mechanical definition of work is: work = force x distance. <br><br> A force is a push or pull. Doing mechanical work means that you are pushing or pulling something, which is another way of saying you are moving it. With a simple machine, you can apply a smaller force over a longer distance to do the same amount of work as a big force over a short distance.  <br><br> To think about how this works, picture a moving truck. If a mover has to lift a heavy box up into the truck, she has to use a lot of strength to lift it straight up. If she uses a ramp to roll the box into the truck, she can use less strength over a longer distance. The mover is doing the same amount of work—getting the box into the truck—but it is a lot easier to use the ramp, because it requires less force. ")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "third", main_idea:"Most machines are a combination of parts, which work together to get the job done", header:"Most machines are a <span class='accent1'>combination of parts</span>, which work together to get the job done", content: "Simple machines can be parts for more complex machines. For example, any machine that has wheels—like a bicycle, car or wheel barrel—has wheels and axels. Anything that cuts—like a lawn mower or a blender—has a wedge. However, most machines are more than just combinations of simple machines. <br><br> The different parts a machine requires depends on the job the machine will do. Machines that have parts that rub against each other or against the ground need parts like wheels and ball bearings that reduce the friction created when two objects rub against each other. Machines that are meant to travel quickly have parts that reduce drag, which is the resistance created by air or water.  Machines that people ride in or on have parts that provide comfort, such as the seat of a bicycle or the cup holders in a car.  <br><br> Most machines also include structural parts like the frame of a car or bicycle. The structural parts of a machine are designed to support the weight of the machine. If the machine has users, like a car, the structure of the car is also designed to protect the people inside if the machine is in an accident. Engineers work to improve the design and materials used to create machine parts to make them safer, last longer, and more energy efficient.")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "fourth", main_idea:"Most machines in the modern world get their energy from fossil fuels, electricity, or people power", header:"Most machines in the modern world get their <span class='accent1'>energy</span> from <span class='accent1'>fossil fuels, electricity, or people power</span>", content: "There are a lot of different machines, but only a handful of ways to power them.  Most machines in the modern world are powered by fossil fuels, electricity, or people power. To get power from a fossil fuel, like coal or gas, you have to burn it. If you want to convert that energy into motion, you need an engine. Engines turn the potential energy in fossil fuels into motion. For example, when a car engine burns gasoline, it releases a huge amount of energy. That energy is used to create motion in the car, which is channeled to the axles, which spin the wheels. Not all machines that use fossil fuels have parts that move. For example, a gas stove used for cooking does not require any moving parts to do its job. <br><br>  Electricity is another modern power source for machines. Machines usually get electricity either from being plugged into an electrical outlet or from batteries. You can learn how electricity is generated in the Energy section of this website. When you turn an electrically powered machine on, you are closing an electrical circuit.  When an electrical circuit is closed, it creates a flow of electrical energy. We call this flow of energy a 'current'. This electrical energy can be used to power many things like flashlights and televisions.  For machines with moving parts, a motor can be used to turn electrical energy into motion. Some examples of machines with motors include fans, blenders, and electric cars. <br><br> People are still an important source of energy for many machines. From simple machines like doorknobs to bicycles and skateboards, our world would not be complete without people power.")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "fifth", main_idea:"Electronic machines can be programmed to follow instructions",  header:"<span class='accent1'>Electronic machines</span> can be <span class='accent1'>programmed</span> to follow instructions", content:'An electronic machine is still a machine with parts that uses energy to do a job. What makes electronic machines different is that they have some logic implemented inside, which means that they can be programmed with instructions. Think of a DVR that is programmed to record every episode of a favorite television show. Somewhere in that machine is logic, which tells the machine that "if it is time for favorite show, start recording.” There is also logic that says, "If the end time for the favorite show has now been reached, stop recording." Electronic machines have computer chips inside that allow them to respond to instructions. Examples of electronic machines include computers, smartphones, and printers.')


section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "sixth", main_idea:"Machines allow us to do work faster and easier, and allow us do things we could not do without them", header:"Machines allow us to do <span class='accent1'>work faster and easier</span>, and allow us do things we could <span class='accent1'>not do without them</span>", content:'Machines allow us to do things much faster and easier than we could do without them. All the vehicles in our world help us get places faster, even machines we power ourselves like skateboards and bicycles. Getting a ride in a car to school is usually a lot faster than walking (unless there is a lot of trafffic!). It is also much faster and easier to make a smoothie with a blender, than to try to make one by hand. <br><br>Modern machines also allow us to do things we could never do without them. There is no way to take a picture or watch a movie without a machine. Now we can do both using a pocket-sized computer called a smartphone. Engineers help to create the machines that have changed and will continue to change our world.')

#topic = FactoryGirl.create(:topic, name:"simple machines", navgraphic: "navgraphics/machinessimplemachines.png", catagory_id: catagory.id, video: "EPDesign.m4v", keypoints: "a simple machine is...")
#topic = FactoryGirl.create(:topic, name:"gears",  navgraphic: "navgraphics/gears.png", catagory_id: catagory.id, video: "EPDesign.m4v")
#topic = FactoryGirl.create(:topic, name:"motors",  navgraphic: "navgraphics/machinesmotors.png", catagory_id: catagory.id, video: "EPDesign.m4v")
#topic = FactoryGirl.create(:topic, name:"engines",  navgraphic: "navgraphics/machinesengines.png", catagory_id: catagory.id, video: "EPDesign.m4v")
#topic = FactoryGirl.create(:topic, name:"electronics",  navgraphic: "navgraphics/machineselectronics.png", catagory_id: catagory.id, video: "EPDesign.m4v")
#topic = FactoryGirl.create(:topic, name:"robotics",  navgraphic: "navgraphics/machinesrobotics.png", catagory_id: catagory.id, video: "EPDesign.m4v")
