# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Soup.delete_all
User.delete_all

Soup.create(name:"Corn chowder", ingredients: "corn", img_url: "https://thecozyapron.com/wp-content/uploads/2018/08/corn-chowder_thecozyapron_1.jpg")
Soup.create(name:"Thai chicken soup", ingredients: "chicken", img_url: "https://assets.bonappetit.com/photos/57ae14b153e63daf11a4e1eb/16:9/w_1280,c_limit/thai-chicken-soup-646.jpg")
Soup.create(name:"Carrot Soup", ingredients: "carrot", img_url: "https://pinchofyum.com/wp-content/uploads/Carrot-Soup-1-4.jpg")

User.create(name: "Ishmet", location: "New York")
User.create(name: "Lawson", location: "California")
User.create(name: "John Doe", location: "London")
