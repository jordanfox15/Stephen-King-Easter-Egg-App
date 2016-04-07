# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.delete_all
Repeater.delete_all
Association.delete_all

book = Book.create([title: 'The Shining', published_date: Date.parse('17/10/1977'), synopsis: 'Taking place mainly in the fictional and haunted Overlook Hotel, the story centers around Jack Torrance along with his wife and son as they spend the winter isolated in the Colorado Rockies.'])

# repeater = Repeater.create([name: 'Overlook Hotel', category: 'Location', description: 'A haunted hotel, past its prime and shut down for the winter comes to life, haunting the winter caretakers and possessing the fathers of the families, causing them to attack their families.'])

# book[0].repeaters << repeater

book = Book.create([title: 'The Stand', published_date: Date.parse('1/9/1978'), synopsis: 'In a post-apocalyptic U.S. two leaders with supernatural powers appear and create differing societies, one good and one evil.'])

# repeater_a = Repeater.create([name: 'Boulder, Colorado', category: 'Location', description: 'The gathering place and start of a new democratic society called the Free Zone.'])

# repeater_b = Repeater.create([name: 'Las Vegas, Nevada', category: 'Location', description: 'The gathering place and start of a new tyrannical society led by Randall Flagg.'])

repeater_c = Repeater.create([name: 'Randall Flagg', category: 'character', description: 'A supernatural and evil being, he is not quite human.  He takes many names and faces in his travels throughout the Stephen King universe.'])

repeater_e = Repeater.create([name: 'The Shop', category: 'character', description: 'Officially known as the U.S. Department of Scientific Intelligence, this top secret government agency pursues its goals with a disregard for morality or law.'])

# book[0].repeaters << repeater_a
# book[0].repeaters << repeater_b
book[0].repeaters << repeater_c
book[0].repeaters << repeater_e

book[0].associations[0].update_attributes(plot: "In his first appearance in the Stephen King universe, Flagg takes on the role of the leader of a new society after the fall of modern civilization.  Located in Las Vegas, Flagg rules with an iron fist, attracting followers drawn to violence and descruction.")

book[0].associations[1].update_attributes(plot: "In The Stand, The Shop was tasked with stopping the superflu viral outbreak before it kills most of humanity, which it completely fails in.")

book = Book.create([title: 'The Dead Zone', published_date: Date.parse('1/8/1979'), synopsis: 'Upon waking from a five year coma, protagonist John Smith finds he has psychic abilities that lead to an apocalyptic vision of a politicians future.'])

# repeater_d = Repeater.create([name: '?Eastern Maine?', category: 'Location', description: 'The hometown of John Smith, psychic protagonist of the Dead Zone.'])

# repeater_f = Repeater.create([name: 'Pheonix, Arizona', category: 'Location', description: 'The setting of the climax of The Dead Zone.'])

# book[0].repeaters << repeater_d
# book[0].repeaters << repeater_f

book = Book.create([title: 'The Dark Tower: The Gunslinger', published_date: Date.parse('10/6/1982'), synopsis: 'As the opening novel in the seven book Dark Tower Series, we are introduced to the primary protagonist Roland Deschain, aka The Gunslinger.  We follow him as he crosses a seemingly endless desert in pursuit of the enigmatic Man in Black.'])

repeater_g = Repeater.create([name: 'Roland Deschain', category: 'character', description: 'The last of the Gunslingers, an ancient group of peace keeping knights from the line of Eld, Roland wields his twin revolvers with preternatural speed and precision, and is single minded in his pursuit of The Dark Tower.'])

repeater_h = Repeater.create([name: 'Jake Chambers', category: 'character', description: 'A young boy of ten or eleven, Jake grew up in Manhattan yet inexplicably finds himself in Mid-World, a companion to the Gunslinger.'])

repeater_i = Repeater.create([name: 'Mid-World', category: 'location', description: 'The fictional setting of most of the Dark Tower Series and home to protagonist Roland Deschain, Mid-World is seen to be an alternate version of Earth.  Having technology that was once more advanced than our own, \'the world has moved on\' resulting in a devolved society, where civilization can be found at all.  Mid-World is also a place where time and space are constantly in flux.'])

repeater_j = Repeater.create([name: 'New York City', category: 'location', description: 'New York is the origin of several of the characters and an often visited setting in the Dark Tower Series.'])

book[0].repeaters << repeater_c
book[0].repeaters << repeater_g
book[0].repeaters << repeater_h
book[0].repeaters << repeater_i
book[0].repeaters << repeater_j

book[0].associations[0].update_attributes(plot: 'Only seen and referred to as The Man in Black, or Walter, it is only much later that we learn these two are the same being.  In The Gunslinger, protagonist Roland pursues him throughout the novel, only catching up to and speaking to him in the very end.')

book[0].associations[1].update_attributes(plot: 'First introduced in this novel, we meet a single minded and dispassionate individual as he chases The Man in Black across the desert in his seemingly endless quest for The Dark Tower.')

book[0].associations[2].update_attributes(plot: 'Jake is a young boy, who after an unfortunate event in Manhattan, inexplicably finds himself in the path of the Gunslinger in his trip across the desert.  Becoming, for a time, the first of Roland\'s companions, Jake is both a distraction and a test in Walter\'s attempt to dissuade Roland from continuing his quest for The Dark Tower.')

book[0].associations[3].update_attributes(plot: 'The setting for the entire novel, our first visit to Mid-World is marked by sparse settings and few people where we learn for the first time what this alternate world is like.')

book[0].associations[4].update_attributes(plot: 'Only mentioned in the story of the origin of Jake Chambers, New York plays a very small role in this novel.')

book = Book.create([title: 'Christine', published_date: Date.parse('29/4/1983'), synopsis: 'A red and white 1958 Plymouth Fury possessed by the antagonistic spirit of an old man is purchased by a troubled teenager.  The two become involved in a co-dependent and murderous relationship as Christine affects everyone around it.'])

book = Book.create([title: 'The Talisman', published_date: Date.parse('8/11/1984'), co_author: 'Peter Straub', synopsis: 'A young boy of 12 sets out on a quest to save his mother by making a cross-country trip from New Hampshire to California.  Along the way he is introduced to \'flipping\', or moving to an alternate dimension known as the Territories where almost everyone and everything is represented in a similar yet altered fashion.'])

book[0].repeaters << repeater_i

book[0].associations[0].update_attributes(plot: 'Mentioned only as \'the Territories\', it is only in the sequel \'Black House\' that this alternate universe and Mid-World are revealed to be one in the same.  In this novel \'the Territories\' is a smaller and less technologically advanced version of the United States that the hero travels to and from in his attempt to save his mother.')






