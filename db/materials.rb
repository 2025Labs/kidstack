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

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "first", main_idea:"Materials are what things are made of", header:"Materials are what things are <span class='accent1'>made of</span>", content: "What is a material? A material is what something is made of. Some examples are: wood, stone, plastic, glass, cement, cotton, or steel. Engineers have special words they use to describe materials, like <i>properties</i> or <i>behaviors</i>. For now, you can just think about what they <i>seem</i> like to you. For example, glass is hard and it breaks easily. Wood is softer, and you can dent it with something hard like a hammer. A rubber ball is solid but “squishy”. Fabrics like cotton can be bent or crumpled, and then go right back to how they looked before -- but if you step on a soda can and crumple it, it will not go back to its initial shape when you step off it.<br><br>You encounter materials in everything you touch. Look around you to see what materials you can identify. How do they feel? What happens when you try to bend them, or stretch them, or drop them?")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "second", main_idea:"Materials have properties, which describe how they behave under certain conditions", header:"Materials have <span class='accent1'>properties</span>, which describe how they behave under certain conditions", content: "If you drop a glass container, it is likely to break, but if you drop a pencil, it usually won't. If you stretch a rubber band out a few inches, it will snap right back; if you somehow manage to stretch out a pencil a few inches, it will break instead of stretching and recovering. These types of properties have names. Properties are inherent to a material, but can be changed through heating, cooling, hammering, or adding other things to it. One example of changing the properties in a material is the process for making steel by adding carbon to iron. Iron and steel are mostly the same in terms of the elements that compose it (steel is iron with a tiny bit of carbon), but they have different properties; the same is true for copper and bronze (bronze is copper with a small amount of tin).
")

section = FactoryGirl.create(:section, catagory_id: catagory.id, linking: "third", main_idea:"Materials used to build something must be a good fit for how the thing will be used", header:"Materials used to build something must be a <span class='accent1'>good fit</span> for how the thing will be <span class='accent1'>used</span>", content: "Would you build a bridge out of particle board? Or make a basketball out of glass?<br><br>Particle board is a wood product made from leftover wood, such as wood chips or sawdust. It is used in places where a wood-like material is desired, but low cost is more important than strength: such as kitchen drawers or low-cost furniture. So, it probably not the best choice for a structure - like a bridge - that must hold the weight of lots of large vehicles. And a basketball made of glass would likely not survive the first bounce on the floor - and even if it did, it would not rebound nicely back into your hand to allow you to continue to dribble down the basketball court. Odds are, you would end up with glass pieces all around your feet!<br><br>Clearly then, materials used to build things - devices, machines, or structures - must be a good fit for how those things are to be used, and choice of materials is often part of the design process. This section will describe some basics about how Engineers think about materials.
")

topic = FactoryGirl.create(:topic, name:"behaviors and properties",  navgraphic: "navgraphics/behaviors_and_properties.png", catagory_id: catagory.id, available: "yes")
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "first", main_idea:"Materials have properties, which describe how they behave under different conditions", header:"Materials have <span class='accent1'>properties</span>, which describe how they <span class='accent1'>behave</span> under different <span class='accent1'>conditions</span>", content: "If you drop a glass object, it is likely to break. If you drop a pencil, it usually won't. If you stretch a rubber band out a few inches, it will snap right back. If you try to stretch out a pencil a few inches, it won’t stretch (noticeably). If you keep trying, and pull <i>really</i> hard, it will break instead of stretching and recovering like a rubber band would. These types of properties have names. <br><br>Materials have properties, but these properties can be changed by heating, cooling, hammering, or adding other things to the material. For example, if you add a tiny bit of carbon to iron, you can make steel - a different material that has different properties than iron. Iron is very soft and prone to rusting; steel is stronger and harder - these properties are very different, even though most of what makes up steel actually is iron.")
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "second", main_idea:"A property is something about the material that is true regardless of its size or shape", header:"A property is something about the material that is <span class='accent1'>true regardless</span> of its <span class='accent1'>size</span> or <span class='accent1'>shape</span>", content: "For example, <i>Density</i> is the amount of mass per unit volume. Think of density as the amount of heaviness of something as compared to its size: a marble is denser than a cotton ball, because it is pretty heavy for its size. However, the density of a small ice cube is the same as the density of a very large block of ice. <br><br>A material's <i>Melting Point</i> is the temperature at which the material will melt; for example, 32° (Fahrenheit, or F) for ice, but 2600° for low carbon steel. The melting point of mercury is about -38° F, which is why mercury is liquid at room temperature.<br><br>There is a property called <i>Yield Strength</i>, which is how much a material can yield - or stretch - without breaking. One that can stretch before it breaks is <i>ductile</i>; one that breaks right away is called <i>brittle</i>. Rubber and copper are ductile; glass is brittle. Copper is made into wiring because it is both ductile and conducts electricity - it has to be ductile to be made into copper wiring; otherwise it would just break when stretched out into thin wire (which would make for lousy circuits!). And, the ductility of rubber is the reason that a rubber ball bounces - it deforms upon contact with the ground, and the reaction to snap back to a fully round shape is what creates the upward movement. That's why a ball will bounce higher off a hard surface, like concrete, than a soft surface, like carpet - a hard surface creates more deformity in the ball. Try that with a glass basketball!")
section = FactoryGirl.create(:section, topic_id: topic.id, linking: "second", main_idea:"Strength and Stiffness are important - but different - properties", header:"<span class='accent1'>Strength</span> and <span class='accent1'>Stiffness</span> are important - but different - properties", content: "Strength is different from stiffness. <i>Strength</i> refers to the amount of force or stress required to break something. Rubber is strong - what happens if you construct a bridge from it? The rubber bridge may not break - but that doesn't make it a good bridge! Can you imagine a rubber bridge fully loaded with cars? Perhaps - if the rubber bridge were over a fast-moving river - the bridge would bend down so much that the cars are immersed in the water and left to float downstream. Instead, you want a bridge made of a material or materials that will be stiffer.<br><br><i>Stiffness</i> is a measure of the inherent elasticity (or stretchiness) of a material. For example, rubber has a very low measure of stiffness - it's not very stiff at all - while diamond has a very high measure of stiffness. We build bridges and buildings out of stiff materials. <br><br>Rubber may be strong and not stiff - but strength and stiffness are not opposites. Here are some examples:<br><br><table>
				<tr>
				    <td></td>
				    <td width='50''><b><u>Material</b></u></td>
				    <td width='120'><b><u>Stiffness</b></u></td>
					<td><b><u>Strength</b></u></td>
				</tr><tr>
				    <td width='40'></td>
				    <td width='100'>Steel:</td>
				    <td width='130'>Stiff</td>
					<td>Strong</td>
				</tr>
				<tr>
				    <td></td>
					<td>Jelly:</td>
			     	<td>Flexible (un-Stiff)</td>
					<td>Weak</td>
				</tr>
				<tr>
				    <td></td>
					<td>Nylon:</td>
			     	<td>Flexible (un-Stiff)</td>
					<td>Strong</td>
				</tr>
				<tr>
				    <td></td>
					<td>Cracker:</td>
			     	<td>Stiff</td>
					<td>Weak</td>
				</tr>

				</table>	<br> <img alt='Representation of atoms or molecules in a solid under tension and compression' class='picpadding' src='/assets/springs.png' /><br><br>")

topic = FactoryGirl.create(:topic, name:"history of materials",  navgraphic: "navgraphics/history_of_materials_coming_soon.png", catagory_id: catagory.id, available: "no")
topic = FactoryGirl.create(:topic, name:"steel",  navgraphic: "navgraphics/steel_coming_soon.png", catagory_id: catagory.id, available: "no")
topic = FactoryGirl.create(:topic, name:"concrete",  navgraphic: "navgraphics/concrete_coming_soon.png", catagory_id: catagory.id, available: "no")
topic = FactoryGirl.create(:topic, name:"plastics",  navgraphic: "navgraphics/plastics_coming_soon.png", catagory_id: catagory.id, available: "no")
topic = FactoryGirl.create(:topic, name:"glass",  navgraphic: "navgraphics/glass_coming_soon.png", catagory_id: catagory.id, available: "no")
topic = FactoryGirl.create(:topic, name:"semiconductors",  navgraphic: "navgraphics/semiconductors_coming_soon.png", catagory_id: catagory.id, available: "no")
topic = FactoryGirl.create(:topic, name:"metal alloys",  navgraphic: "navgraphics/metal_alloys_coming_soon.png", catagory_id: catagory.id, available: "no")
