# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email



Role.create({name: "simple_user", description: "Can create comment"})
role = Role.create({name: "super_user", description: "can menage all"})

User.create({name: "Bennani ayoub", email: "ayoub-bennani@hotmail.com", password: "monpassword", password_confirmation: "monpassword", role_id: role.id})

cat1 = Category.find_or_create_by({title: "Mode", code: "MODE" })
cat2 = Category.find_or_create_by({title: "Beauté", code: "BEAUTE" })
cat3 = Category.find_or_create_by({title: "Cuisine", code: "CUISINE" })
cat4 = Category.find_or_create_by({title: "Bien être", code: "BETRE" })
cat5 = Category.find_or_create_by({title: "None", code: "NONE" })
