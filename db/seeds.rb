# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

roles = Role.find_or_create_by_name({name: 'Admin'})

users = User.find_or_create_by_email(email: 'fabbasi@andrew.cmu.edu', password: 'admin1', password_confirmation: 'admin1')

user_roles = UserRole.find_or_create_by_user_id(user_id:users.id, role_id:roles.id)

fundraiser_types = FundraiserType.create([{name: 'Steelers Game'}, {name: 'Rent-A-Rower'}, {name:'Gwens Girls'}])
