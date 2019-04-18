# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating Technology Stack"

tech_names = ["Ruby on Rails", "PostgreSQL", "HTML 5", "CSS 3", "JavaScript", "Heroku", "RESTful API", "Devise"]
tech_icons = {
  "Ruby on Rails" => "https://res.cloudinary.com/abandolon/image/upload/v1555588780/rails_logo.png",
  "PostgreSQL" => "https://res.cloudinary.com/abandolon/image/upload/v1555588780/icons8-postgresql-100.png",
  "HTML 5" => "https://res.cloudinary.com/abandolon/image/upload/v1555588779/icons8-html-5-100.png",
  "CSS 3" => "https://res.cloudinary.com/abandolon/image/upload/v1555588778/icons8-css3-100.png",
  "JavaScript" => "https://res.cloudinary.com/abandolon/image/upload/v1555588779/icons8-js-100.png",
  "Heroku" => "https://res.cloudinary.com/abandolon/image/upload/v1555588779/icons8-heroku-100.png",
  "RESTful API" => "https://res.cloudinary.com/abandolon/image/upload/v1555588780/icons8-rest-api-100.png",
  "Devise" => "https://res.cloudinary.com/abandolon/image/upload/v1555588778/devise.png"
}

tech_names.each do |tech|
  Technology.create(name: tech, icon: tech_icons[tech])
end
