# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Person.destroy_all
Program.destroy_all

Person.create( first_name: "Carlos", 
    last_name: "Montero", 
    username: "calmontero", 
    password_digest: "1234567" )
puts "Seeding person..."

Program.create( name: "Web Developer", 
    summary: "As a Web Developer, you design and create websites or applications. You write code for websites and applications using programming languages such as HTML, work with graphic and UX designers to determine the website’s layout, and monitor website traffic.", 
    hours: 60, 
    image: "https://www.amazoncareerchoice.com/servlet/rtaImage?eid=a0h3g000000HTPP&feoid=00N3g000000rUeu&refid=0EM3g000002Q9kP"
    )
puts "Seeding program..."

puts "✅ Done seeding!"