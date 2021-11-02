# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Fact.create([
  { name: 'Favorite beatle', data_type: 'text', key: 'favorite_beatle' },
  { name: 'Number of kids', data_type: 'number', key: 'number_of_kids' }
])
