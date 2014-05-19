# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  Item.create(price: 10 , pictures_url: "www.google.fr/image/1" , description: "vélo bleu et rouge" , title: "vélo" ,location: "paris" )
end
