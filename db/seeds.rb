# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Activity.destroy_all

gary = User.create(name: "Gray", password: "123", status: "Test status", image: "https://graymag.com/wp-content/uploads/2018/09/GRAY-Stage.jpg")
ruby = User.create(name: "Ruby", password: "123", status: "Ruby test status", image: "https://media.geeksforgeeks.org/wp-content/cdn-uploads/20190902124355/ruby-programming-language.png")

activity1 = Activity.create(title: "Sleep On It", user_id: gary.id)
activity2 = Activity.create(title: "How Deep Is Your Love", user_id: gary.id)
activity3 = Activity.create(title: "Officially Missing You", user_id: gary.id)
activity4 = Activity.create(title: "Island In The Sun", user_id: gary.id)
activity5 = Activity.create(title: "Focus", user_id: gary.id)
activity6 = Activity.create(title: "True Colors", user_id: gary.id)
activity7 = Activity.create(title: "Dragonball Durag", user_id: gary.id)


