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

repeater = Repeater.create([name: 'Overlook Hotel', category: 'Location', description: 'A haunted hotel, past its prime and shut down for the winter comes to life, haunting the winter caretakers and possessing the fathers of the families, causing them to attack their families.'])

book[0].repeaters << repeater

book = Book.create([title: 'The Stand', published_date: Date.parse('1/9/1978'), synopsis: 'In a post-apocalyptic U.S. two leaders with supernatural powers appear and create differing societies, one good and one evil.'])

repeater_a = Repeater.create([name: 'Boulder, Colorado', category: 'Location', description: 'The gathering place and start of a new democratic society called the Free Zone.'])

repeater_b = Repeater.create([name: 'Las Vegas, Nevada', category: 'Location', description: 'The gathering place and start of a new tyrannical society led by Randall Flagg.'])

repeater_c = Repeater.create([name: 'Randall Flagg', category: 'Character', description: 'A supernatural and evil being, he is not quite human.  He takes many names and faces in his travels throughout the Stephen King universe.'])

repeater_e = Repeater.create([name: 'The Shop', category: 'Organization', description: 'Officially known as the U.S. Department of Scientific Intelligence, this top secret government agency pursues its goals with a disregard for morality or law.  In The Stand they were tasked with stopping the viral outbreak before it kills most of humanity.'])

book[0].repeaters << repeater_a
book[0].repeaters << repeater_b
book[0].repeaters << repeater_c
book[0].repeaters << repeater_e

book = Book.create([title: 'The Dead Zone', published_date: Date.parse('1/8/1979'), synopsis: 'Upon waking from a five year coma, protagonist John Smith finds he has psychic abilities that lead to an apocalyptic vision of a politicians future.'])

repeater_d = Repeater.create([name: '?Eastern Maine?', category: 'Location', description: 'The hometown of John Smith, psychic protagonist of the Dead Zone.'])

repeater_f = Repeater.create([name: 'Pheonix, Arizona', category: 'Location', description: 'The setting of the climax of The Dead Zone.'])

book[0].repeaters << repeater_d
book[0].repeaters << repeater_f






