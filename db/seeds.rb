# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# user = CreateAdminService.new.call
# puts 'CREATED ADMIN USER: ' << user.email

puts '-------------------'
Role.create(name: "simple_user", description: "Can create comment")
role = Role.create(name: "super_user", description: "can menage all")
puts '--------------------'
User.create(name: "soukaina kholti", email: "soukaina@kholti.com", password: "soukalisa", password_confirmation: "soukalisa", role_id: role.id)
Category.find_or_create_by(title: "Mode", code: "MODE")
Category.find_or_create_by(title: "Beauté", code: "BEAUTE")
Category.find_or_create_by(title: "Cuisine", code: "CUISINE")
Category.find_or_create_by(title: "Bien être", code: "BETRE")
Category.find_or_create_by(title: "None", code: "NONE")
