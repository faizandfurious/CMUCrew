# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Myself (Admin rights)
admin = Role.find_or_create_by_name({name: 'Admin'})
faiz = User.find_or_create_by_email(email: 'fabbasi@andrew.cmu.edu', first_name: 'Faiz', last_name: 'Abbasi' password: 'admin1', password_confirmation: 'admin1')
faiz_admin = UserRole.find_or_create_by_user_id(user_id:faiz.id, role_id:admin.id)

#Fundraisers
fundraiser = Role.find_or_create_by_name({name: 'Fundraiser'})
kelsey = User.find_or_create_by_email(email: 'kdiffley@andrew.cmu.edu', first_name: 'Kelsey', last_name: 'Diffley' password: 'password', password_confirmation: 'password')
jinie = User.find_or_create_by_email(email: 'jinie@andrew.cmu.edu', first_name: 'Jinie', last_name: 'Haytko' password: 'password', password_confirmation: 'password')
kelsey_fundraiser = UserRole.find_or_create_by_user_id(user_id: kelsey.id, role_id: fundraiser.id)
jinie_fundraiser = UserRole.find_or_create_by_user_id(user_id: jinie.id, role_id: fundraiser.id)

#Coach
coach = Role.find_or_create_by_user_id({name: 'Coach'})
alyssa = User.find_or_create_by_name(email:'alyssa@andrew.cmu.edu', first_name: 'Alyssa', last_name: 'Fogel', password: 'password', password_confirmation: 'password')
alyssa_coach = UserRole.find_or_create_by_user_id(user_id: alyssa.id, role_id: coach.id)

#Fundraiser Types
steelers = FundraiserType.find_or_create_by_name(name: 'Steelers Game')
rentarower = FundraiserType.find_or_create_by_name(name: 'Rent-A-Rower')
gwensgirls = FundraiserType.find_or_create_by_name(name: 'Gwens Girls')

