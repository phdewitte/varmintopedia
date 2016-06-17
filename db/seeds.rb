# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

test_user = User.create(email: "test@test.com", password: "test")

10.times do |i|
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password)
end

# User.all.each do |user|
#   article = Article.create!(
#     author: user)

#   Version.create(
#     title: Faker::Superhero.name,
#     body: Faker::Hipster.paragraph(4),
#     editor: user,
#     article: article,
#     category_names: Faker::Hipster.words(4).join(' '))
# end

# User.all.each do |user|
#   @article = 
#   Version.create(
#     article: Article.all.sample,
#     title: Faker::Superhero.name,
#     body: Faker::Hipster.paragraph(4),
#     editor: user,
#     category_names: Faker::Hipster.words(4).join(' '))
# end

ground_hog_article = Article.create(author: test_user)

ground_hog_article.versions.create(
  title: "Groundhog",
  editor: test_user,
  image_urls: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Marmota_monax_UL_04.jpg/2560px-Marmota_monax_UL_04.jpg",
  category_names: Faker::Hipster.words(4).join(' '),
  body: '<h2>Description</h2><p>The <b>groundhog</b> (<i>Marmota monax</i>), also known as a <b>woodchuck</b>, or <b>whistlepig</b>,<sup id="cite_ref-si_2-0" class="reference"><a href="#cite_note-si-2">[2]</a></sup> is a <a href="/wiki/Rodent" title="Rodent">rodent</a> of the family <a href="/wiki/Sciuridae" class="mw-redirect" title="Sciuridae">Sciuridae</a>, belonging to the group of large <a href="/wiki/Ground_squirrel" title="Ground squirrel">ground squirrels</a> known as <a href="/wiki/Marmot" title="Marmot">marmots</a>.<sup id="cite_ref-MSW3_3-0" class="reference"><a href="#cite_note-MSW3-3">[3]</a></sup> The groundhog is also referred to as a chuck, wood-shock, groundpig, whistler, thickwood badger, Canada marmot, monax, moonack, weenusk, and red monk. The name "thickwood badger" was given in the Northwest to distinguish the animal from the prairie badger. Monax was an Indian name of the woodchuck, which meant "the digger".<sup id="cite_ref-Seton_4-0" class="reference"><a href="#cite_note-Seton-4">[4]</a></sup><sup class="reference" style="white-space:nowrap;">:300-301</sup> Young groundhogs may be called chucklings.<sup id="cite_ref-Schoonmaker_5-0" class="reference"><a href="#cite_note-Schoonmaker-5">[5]</a></sup><sup class="reference" style="white-space:nowrap;">:66</sup> Other marmots, such as the <a href="/wiki/Yellow-bellied_marmot" title="Yellow-bellied marmot">yellow-bellied</a> and <a href="/wiki/Hoary_marmot" title="Hoary marmot">hoary marmots</a>, live in rocky and mountainous areas, but the groundhog is a lowland creature. It is widely distributed in <a href="/wiki/North_America" title="North America">North America</a> and common in the northeastern and central <a href="/wiki/United_States" title="United States">United States</a> and <a href="/wiki/Canada" title="Canada">Canada</a>. Groundhogs are found as far north as <a href="/wiki/Alaska" title="Alaska">Alaska</a>, with their habitat extending southeast to <a href="/wiki/Georgia_(U.S._state)" title="Georgia (U.S. state)">Georgia</a>.<sup id="cite_ref-6" class="reference"><a href="#cite_note-6">[6]</a></sup></p>'
  )


muskrat_article = Article.create(author: test_user)

muskrat_article.versions.create(
  title: "Muskrat",
  editor: test_user,
  image_urls: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Muskrat_Foraging.JPG/440px-Muskrat_Foraging.JPG",
  category_names: Faker::Hipster.words(4).join(' '),
  body: '<h2>Description</h2><p>The <b>muskrat</b> (<i>Ondatra zibethicus</i>), the <a href="/wiki/Monotypic_species" class="mw-redirect" title="Monotypic species">only species</a> in <a href="/wiki/Genus" title="Genus">genus</a> <i><b>Ondatra</b></i> and tribe <i><b>Ondatrini</b></i>, is a medium-sized <a href="/wiki/Semiaquatic" class="mw-redirect" title="Semiaquatic">semiaquatic</a> <a href="/wiki/Rodent" title="Rodent">rodent</a> native to <a href="/wiki/North_America" title="North America">North America</a>, and is an <a href="/wiki/Introduced_species" title="Introduced species">introduced species</a> in parts of <a href="/wiki/Europe" title="Europe">Europe</a>, <a href="/wiki/Asia" title="Asia">Asia</a>, and <a href="/wiki/South_America" title="South America">South America</a>. The muskrat is found in <a href="/wiki/Wetland" title="Wetland">wetlands</a> over a wide range of <a href="/wiki/Climate" title="Climate">climates</a> and <a href="/wiki/Habitat" title="Habitat">habitats</a>. It has important effects on the ecology of wetlands<sup id="cite_ref-Keddy_2-0" class="reference"><a href="#cite_note-Keddy-2">[2]</a></sup> and is a resource of <a href="/wiki/Food" title="Food">food</a> and <a href="/wiki/Fur" title="Fur">fur</a> for <a href="/wiki/Human" title="Human">humans</a>.</p>
<p>The muskrat is the largest species in the subfamily <a href="/wiki/Arvicolinae" title="Arvicolinae">Arvicolinae</a>, which includes 142 other species of rodents, mostly <a href="/wiki/Vole" title="Vole">voles</a> and <a href="/wiki/Lemming" title="Lemming">lemmings</a>. Muskrats are referred to as "<a href="/wiki/Rat" title="Rat">rats</a>" in a general sense because they are medium-sized rodents with an <a href="/wiki/Adaptation" title="Adaptation">adaptable</a> lifestyle and an <a href="/wiki/Omnivore" title="Omnivore">omnivorous</a> diet. They are not, however, so-called "true rats", that is, members of the genus <i><a href="/wiki/Rattus" class="mw-redirect" title="Rattus">Rattus</a></i>.</p>'
  )

prairie_dog_article = Article.create(author: test_user)

prairie_dog_article.versions.create(
  title: "Prairie dog",
  editor: test_user,
  image_urls: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Black-Tailed_Prairie_Dog.jpg/1024px-Black-Tailed_Prairie_Dog.jpg",
  category_names: Faker::Hipster.words(4).join(' '),
  body: '<p><b>Prairie dogs</b> (genus <i><b>Cynomys</b></i>) are <a href="/wiki/Herbivorous" class="mw-redirect" title="Herbivorous">herbivorous</a> burrowing <a href="/wiki/Rodent" title="Rodent">rodents</a> native to the <a href="/wiki/Grassland" title="Grassland">grasslands</a> of <a href="/wiki/North_America" title="North America">North America</a>. The five species are: <a href="/wiki/Black-tailed_prairie_dog" title="Black-tailed prairie dog">black-tailed</a>, <a href="/wiki/White-tailed_prairie_dog" title="White-tailed prairie dog">white-tailed</a>, <a href="/wiki/Utah_prairie_dog" title="Utah prairie dog">Utah</a>, and <a href="/wiki/Mexican_prairie_dog" title="Mexican prairie dog">Mexican prairie dogs</a>. They are a type of <a href="/wiki/Ground_squirrel" title="Ground squirrel">ground squirrel</a>, found in the <a href="/wiki/United_States" title="United States">United States</a>, <a href="/wiki/Canada" title="Canada">Canada</a> and <a href="/wiki/Mexico" title="Mexico">Mexico</a>. In Mexico, prairie dogs are found primarily in the northern states, which lie at the southern end of the Great Plains: northeastern <a href="/wiki/Sonora" title="Sonora">Sonora</a>, north and northeastern <a href="/wiki/Chihuahua_(state)" title="Chihuahua (state)">Chihuahua</a>, northern <a href="/wiki/Coahuila" title="Coahuila">Coahuila</a>, northern <a href="/wiki/Nuevo_Le%C3%B3n" title="Nuevo León">Nuevo León</a>, and northern <a href="/wiki/Tamaulipas" title="Tamaulipas">Tamaulipas</a>. In the United States, they range primarily to the west of the <a href="/wiki/Mississippi_River" title="Mississippi River">Mississippi River</a>, though they have also been introduced in a few eastern locales. Despite the name, they are not <a href="/wiki/Canis" title="Canis">canines</a>.</p>')

rat_article = Article.create(author: test_user)

rat_article.versions.create(
  title: "Rat",
  editor: test_user,
  image_urls: "https://upload.wikimedia.org/wikipedia/commons/0/01/Rattus_norvegicus_1.jpg",
  category_names: Faker::Hipster.words(4).join(' '),
  body: '<h2>Description</h2><p><b>Rats</b> are various medium-sized, long-tailed <a href="/wiki/Rodent" title="Rodent">rodents</a> of the <a href="/wiki/Family_(biology)" title="Family (biology)">superfamily</a> <a href="/wiki/Muroidea" title="Muroidea">Muroidea</a>. "True rats" are members of the genus <i>Rattus</i>, the most important of which to humans are the <a href="/wiki/Black_rat" title="Black rat">black rat</a>, <i>Rattus rattus</i>, and the <a href="/wiki/Brown_rat" title="Brown rat">brown rat</a>, <i>Rattus norvegicus</i>. Many members of other rodent genera and families are also referred to as rats, and share many characteristics with true rats.</p>
<p>Rats are typically distinguished from <a href="/wiki/Mouse" title="Mouse">mice</a> by their size. Generally, when someone discovers a large <a href="/wiki/Muroid" class="mw-redirect" title="Muroid">muroid</a> rodent, its <a href="/wiki/Common_name" title="Common name">common name</a> includes the term <i>rat</i>, while if it is smaller, the name includes the term <i>mouse</i>. The muroid family is broad and complex, and the common terms <i>rat</i> and <i>mouse</i> are not <a href="/wiki/Taxonomy_(biology)" title="Taxonomy (biology)">taxonomically</a> specific. Scientifically, the terms are not confined to members of the <i>Rattus</i> and <i><a href="/wiki/Mus_(genus)" class="mw-redirect" title="Mus (genus)">Mus</a></i> genera, for example, the <a href="/wiki/Pack_rat" title="Pack rat">pack rat</a> and <a href="/wiki/Cotton_mouse" title="Cotton mouse">cotton mouse</a>.</p>'
  )

squirrel_article = Article.create(author: test_user)

squirrel_article.versions.create(
  title: "Squirrel",
  editor: test_user,
  image_urls: "https://upload.wikimedia.org/wikipedia/commons/6/68/Sciuridae.jpg",
  category_names: Faker::Hipster.words(4).join(' '),
  body: '<h2>Description</h2><p><b>Squirrels</b> are members of the <a href="/wiki/Family_(biology)" title="Family (biology)">family</a> <b>Sciuridae</b>, consisting of small or medium-size <a href="/wiki/Rodent" title="Rodent">rodents</a>. The family includes <a href="/wiki/Tree_squirrel" title="Tree squirrel">tree squirrels</a>, <a href="/wiki/Ground_squirrel" title="Ground squirrel">ground squirrels</a>, <a href="/wiki/Chipmunk" title="Chipmunk">chipmunks</a>, <a href="/wiki/Marmot" title="Marmot">marmots</a> (including <a href="/wiki/Groundhog" title="Groundhog">woodchucks</a>), <a href="/wiki/Flying_squirrel" title="Flying squirrel">flying squirrels</a>, and <a href="/wiki/Prairie_dog" title="Prairie dog">prairie dogs</a>. Squirrels are indigenous to the Americas, Eurasia, and Africa, and have been <a href="/wiki/Introduced_species" title="Introduced species">introduced</a> to Australia.<sup id="cite_ref-Seebeck_1-0" class="reference"><a href="#cite_note-Seebeck-1">[1]</a></sup> The earliest known squirrels date from the <a href="/wiki/Eocene" title="Eocene">Eocene</a> and are most closely related to the <a href="/wiki/Mountain_beaver" title="Mountain beaver">mountain beaver</a> and to the <a href="/wiki/Dormouse" title="Dormouse">dormouse</a> among living rodent families.</p>
<p></p>'
  )