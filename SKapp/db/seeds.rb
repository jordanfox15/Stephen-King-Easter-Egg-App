# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

book = Book.create([title: 'The Shining', published_date: Date.parse('17/10/1977'), synopsis: 'Taking place mainly in the fictional and haunted Overlook Hotel, the story centers around Jack Torrance along with his wife and son as they spend the winter isolated in the Colorado Rockies.'])
