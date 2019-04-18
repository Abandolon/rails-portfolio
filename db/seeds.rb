# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Resetting Technology Stack"
Technology.destroy_all
puts "Finished Resetting Technology Stack"

puts "Resetting Skills"
Skill.destroy_all
puts "Finished Resetting Skills"

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

puts "Created #{Technology.count} Tech objects"

puts "Creating Skills"

skills = ["Ruby", "HTML 5", "CSS 3", "Project Management", "Team Management", "Git Flow Management"]
skills_icon = {
  "Ruby" => "far fa-gem",
  "HTML 5" => "fab fa-html5",
  "CSS 3" => "fab fa-css3-alt",
  "Project Management" => "far fa-map",
  "Team Management" => "fas fa-users",
  "Git Flow Management" => "fab fa-github-square"
}

skills.each do |skill|
  Skill.create(name: skill, icon: skills_icon[skill])
end

puts "Created #{Skill.count} Skills"
