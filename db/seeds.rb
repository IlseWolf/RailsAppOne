# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(:name => "Burrowing Owl", :description => "Wingspan of 50-60 cm, lives on the ground", :image_url => "burrowingowl.jpg", :colour => "Brown", :latin_name => "Athene cunicalaria", :price =>"100")

Product.create(:name => "Spotted Wood OWl", :description => "Lives in Asia", :image_url => "spottedwoodowl.jpg", :colour => "Brown", :latin_name => "Strix seloputo", :price =>"100")

Product.create(:name => "Oriental Bay Owl", :description => "Family of the Barn Owl", :image_url => "orientalbayowl.jpg", :colour => "Brown", :latin_name => "Phodilus badius", :price =>"100")
