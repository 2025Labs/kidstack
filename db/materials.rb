# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#### Everything for Materials
#catagory = FactoryGirl.create(:catagory, name:"materials", navgraphic: "navgraphics/materials.png", headergraphic: "materials", color: "materials", keypoints: "And here are some key points<p>" )
catagory = Catagory.create(name:"Materials", navgraphic: "navgraphics/materials.png", headergraphic: "materials", color: "materials", keypoints: "materials main point one.")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "first", main_idea:"Materials means what things are made of", header:"Materials means what things are <span class='accent1'>made of</span>", content: "What is a material? A material is what something is made of. Some examples are: wood, stone, plastic, glass, cement, cotton, or steel. Engineers have special words they use to describe materials, like <i>properties</i> or <i>behaviors</i>. For now, you can just think about what they <i>seem</i> like to you. For example, glass is hard and it breaks easily. Wood is softer, and you can dent it with something hard like a hammer. A rubber ball is solid but “squishy”. Fabrics like cotton can be bent or crumpled, and then go right back to how they looked before -- but if you step on a soda can and crumple it, it will not go back to its initial shape when you step off it.<br><br>You encounter materials in everything you touch. Look around you to see what materials you can identify. How do they feel? What happens when you try to bend them, or stretch them, or drop them?")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "second", main_idea:"Materials have properties, which describe how they behave under certain conditions", header:"Materials have <span class='accent1'>properties</span>, which describe how they behave under certain conditions", content: "If you drop a glass container, it is likely to break, but if you drop a pencil, it usually won't. If you stretch a rubber band out a few inches, it will snap right back; if you somehow manage to stretch out a pencil a few inches, it will break instead of stretching and recovering. These types of properties have names. Properties are inherent to a material, but can be changed through heating, cooling, hammering, or adding other things to it. One example of changing the properties in a material is the process for making steel by adding carbon to iron. Iron and steel are mostly the same in terms of the elements that compose it (steel is iron with a tiny bit of carbon), but they have different properties; the same is true for copper and bronze (bronze is copper with a small amount of tin).
")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "third", main_idea:"Materials used to build something must be a good fit for how the thing will be used", header:"Materials used to build something must be a <span class='accent1'>good fit</span> for how the thing will be <span class='accent1'>used</span>", content: "Would you build a bridge out of particle board? Or make a basketball out of glass?<br><br>Particle board is a wood product made from leftover wood, such as wood chips or sawdust. It is used in places where a wood-like material is desired, but low cost is more important than strength: such as kitchen drawers or low-cost furniture. So, it probably not the best choice for a structure - like a bridge - that must hold the weight of lots of large vehicles. And a basketball made of glass would likely not survive the first bounce on the floor - and even if it did, it would not rebound nicely back into your hand to allow you to continue to dribble down the basketball court. Odds are, you would end up with glass pieces all around your feet!<br><br>Clearly then, materials used to build things - devices, machines, or structures - must be a good fit for how those things are to be used, and choice of materials is often part of the design process. This section will describe some basics about how Engineers think about materials.
")

topic = FactoryGirl.create(:topic, name:"behaviors and properties",  navgraphic: "navgraphics/behaviors_and_properties_coming_soon.png", catagory_id: catagory.id, available: "no")
topic = FactoryGirl.create(:topic, name:"history of materials",  navgraphic: "navgraphics/history_of_materials_coming_soon.png", catagory_id: catagory.id, available: "no")
topic = FactoryGirl.create(:topic, name:"steel",  navgraphic: "navgraphics/steel_coming_soon.png", catagory_id: catagory.id, available: "no")
topic = FactoryGirl.create(:topic, name:"concrete",  navgraphic: "navgraphics/concrete_coming_soon.png", catagory_id: catagory.id, available: "no")
topic = FactoryGirl.create(:topic, name:"plastics",  navgraphic: "navgraphics/plastics_coming_soon.png", catagory_id: catagory.id, available: "no")
topic = FactoryGirl.create(:topic, name:"glass",  navgraphic: "navgraphics/glass_coming_soon.png", catagory_id: catagory.id, available: "no")
topic = FactoryGirl.create(:topic, name:"semiconductors",  navgraphic: "navgraphics/semiconductors_coming_soon.png", catagory_id: catagory.id, available: "no")
topic = FactoryGirl.create(:topic, name:"metal alloys",  navgraphic: "navgraphics/metal_alloys_coming_soon.png", catagory_id: catagory.id, available: "no")
