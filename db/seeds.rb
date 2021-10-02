# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Person.destroy_all
Program.destroy_all

#Person.create( first_name: "Carlos", 
#    last_name: "Montero" )
#puts "Seeding person..."

movies = Program.create(
[
    {   name: "Web Developer",
        summary: "As a Web Developer, you design and create websites or applications. You write code for websites and applications using programming languages such as HTML, work with graphic and UX designers to determine the website’s layout, and monitor website traffic.",
        duration: "8 months",
        image_url: "https://cdn.kenzie.academy/wp-content/uploads/prod/2020/11/02155935/AdobeStock_241083104-1400x934.jpg",
        rating: rand(1..5)
    },
    {   name: "Computer User Support Specialist",
        summary: "As a Computer User Support Specialist, you help customers with their computers. You assist computer users with various issues, such as installing software, and fixing or setting up hardware.",
        duration: "120 hours duration",
        image_url: "https://www.bryantstratton.edu/~/media/outcomes-computer-support-specialist-300x250.ashx?la=en&hash=DE3A6B3B77B0B9BF0ECAEF6D104C306615AF37BD",
        rating: rand(1..5)
    },
    {   name: "Information Security Analyst",
        summary: "As an Information Security Analyst, you provide security and protection to computers and networks within an organization. Your day-to-day tasks will involve implementing, upgrading, and monitoring security measures.",
        duration: "6 months",
        image_url: "https://www.northeastern.edu/graduate/blog/wp-content/uploads/2019/10/Information-Security-Analysts.jpg",
        rating: rand(1..5)
    },
    {   name: "HTML, CSS, and Javascript for Web Developers",
        summary: "Do you realize that the only functionality of a web application that the user directly interacts with is through the web page? Implement it poorly and, to the user, the server-side becomes irrelevant! Today’s user expects a lot out of the web page: it has to load fast, expose the desired service, and be comfortable to view on all devices: from a desktop computers to tablets and mobile phones.",
        duration: "250 hours duration",
        image_url: "https://miro.medium.com/max/5120/1*l4xICbIIYlz1OTymWCoUTw.jpeg",
        rating: rand(1..5)
    },
    {   name: "Java Programming",
        summary: "Take your first step towards a career in software development with this introduction to Java—one of the most in-demand programming languages and the foundation of the Android operating system. Designed for beginners, this Specialization will teach you core programming concepts and equip you to write programs to solve complex problems. In addition, you will gain the foundational skills a software engineer needs to solve real-world problems, from designing algorithms to testing and debugging your programs.",
        duration: "12 months",
        image_url: "https://i.pcmag.com/image_urlry/articles/03mYCJkIdptJX1Soh08tBzt-1.1630572092.fit_lim.size_1600x900.jpg",
        rating: rand(1..5)
    }
])

puts "Seeding program..."

puts "✅ Done seeding!"