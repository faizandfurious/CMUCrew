# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



#Myself (Admin rights)
admin = Role.find_or_create_by_name({name: 'Admin'})
faiz = User.find_or_create_by_email(email: 'fabbasi@andrew.cmu.edu', first_name: 'Faiz', last_name: 'Abbasi', password: 'admin1', password_confirmation: 'admin1')
faiz_admin = UserRole.find_or_create_by_user_id(user_id:faiz.id, role_id:admin.id)

#Coach
coach = Role.find_or_create_by_name({name: 'Coach'})
alyssa = User.find_or_create_by_email(email:'alyssa@andrew.cmu.edu', first_name: 'Alyssa', last_name: 'Fogel', password: 'password', password_confirmation: 'password')
alyssa_coach = UserRole.find_or_create_by_user_id(user_id: alyssa.id, role_id: coach.id)

#Normal User
wesley = User.find_or_create_by_email(email:'wesley@andrew.cmu.edu', first_name: 'Wesley', last_name: 'Transue', password: 'password', password_confirmation: 'password')


#Rowers

rfaiz = Rower.find_or_create_by_first_name(first_name:'Faiz', last_name: 'Abbasi', weight: '180', height: '6', rowing_side:'Port' )
rkelsey = Rower.find_or_create_by_first_name(first_name:'Kelsey', last_name: 'Diffley', weight: '140', height: '5.2', rowing_side:'Port' )
rwesley = Rower.find_or_create_by_first_name(first_name:'Wesley', last_name: 'Transue', weight: '180', height: '6', rowing_side:'Starboard' )

#Fundraiser Types
steelers = FundraiserType.find_or_create_by_name(name: 'Steelers Game')
rentarower = FundraiserType.find_or_create_by_name(name: 'Rent-A-Rower')
gwensgirls = FundraiserType.find_or_create_by_name(name: 'Gwens Girls')


#Fundraisers
fundraiser = Role.find_or_create_by_name({name: 'Fundraiser'})
kelsey = User.find_or_create_by_email(email: 'kdiffley@andrew.cmu.edu', first_name: 'Kelsey', last_name: 'Diffley', password: 'password', password_confirmation: 'password')
jinie = User.find_or_create_by_email(email: 'jinie@andrew.cmu.edu', first_name: 'Jinie', last_name: 'Haytko', password: 'password', password_confirmation: 'password')
kelsey_fundraiser = UserRole.find_or_create_by_user_id(user_id: kelsey.id, role_id: fundraiser.id)
jinie_fundraiser = UserRole.find_or_create_by_user_id(user_id: jinie.id, role_id: fundraiser.id)



#Workout Types
cardio = WorkoutType.find_or_create_by_name(name: 'Cardio')
steadystate = WorkoutType.find_or_create_by_name(name: 'Steady State')
lifting = WorkoutType.find_or_create_by_name(name: 'Lifting')
sprint = WorkoutType.find_or_create_by_name(name: 'Sprint Work')


#Boats

#Eights
lyssyboo = Boat.find_or_create_by_name(name:"Lyssy Boo", boat_type:"8+", color:"Black", model:"Vespoli")
sectional = Boat.find_or_create_by_name(name:"Sectional", boat_type:"8+", color:"White", model:"Vespoli")
elizabethwinter = Boat.find_or_create_by_name(name:"Liz Winter", boat_type:"8+", color:"Grey", model:"Vespoli")
# highleyrecommended = Boat.find_or_create_by_name(name:"", boat_type:"", color:"", model:"")
# abigailsimon = Boat.find_or_create_by_name(name:"", boat_type:"", color:"", model:"")
#Fours
whitev1 = Boat.find_or_create_by_name(name:"White V1", boat_type:"4+", color:"White", model:"Vespoli")
millikowski = Boat.find_or_create_by_name(name:"Milikowski", boat_type:"4+", color:"Black", model:"Vespoli")
# classof05 = Boat.find_or_create_by_name(name:"", boat_type:"", color:"", model:"")
# scooter = Boat.find_or_create_by_name(name:"", boat_type:"", color:"", model:"")
# prinz = Boat.find_or_create_by_name(name:"", boat_type:"", color:"", model:"")
# meatrack = Boat.find_or_create_by_name(name:"", boat_type:"", color:"", model:"")
#Pairs
bearbetzler = Boat.find_or_create_by_name(name:"Beta", boat_type:"2-", color:"Grey", model:"Hudson")
oliversung = Boat.find_or_create_by_name(name:"Oliver Sung", boat_type:"2-", color:"Grey", model:"Hudson")
# buttercup = Boat.find_or_create_by_name(name:"", boat_type:"", color:"", model:"")
#Doubles
calbeardouble = Boat.find_or_create_by_name(name:"Calbear", boat_type:"2x", color:"White", model:"Vespoli")
# merkledouble = Boat.find_or_create_by_name(name:"", boat_type:"", color:"", model:"")
#Singles
resistance = Boat.find_or_create_by_name(name:"Resistance", boat_type:"1x", color:"White", model:"Hudson")
# millisingle = Boat.find_or_create_by_name(name:"", boat_type:"", color:"", model:"")
