Movie.destroy_all
List.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Movie.destroy_all

20.times do
Movie.create(title: Faker::Movie.title, overview: Faker::Quote.most_interesting_man_in_the_world)
end
list_names = ['Horror', 'Rom Com' , 'Ghost', 'Action', 'Slow', 'Boring', 'Sleeping Pill']

list_names.each do |name|
  List.create(name: name)
end
