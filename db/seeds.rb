# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


fundraiser_types = FundraiserType.create([{name: 'Steelers Game'}, {name: 'Rent-A-Rower'}, {name:'Gwens Girls'}])

fundraisers = Fundraiser.create([{name: 'Steelers Vs Jaguars', fundraiser_type_id: fundraiser_types.first, event_date: '2012-08-30', location: 'Heinz Field', description: 'Working a booth at the 
	Steelers game.', capacity: 8}, {name: 'Steelers Vs Titans', fundraiser_type_id: fundraiser_types.first, event_date: '2012-09-08', location: 'Heinz Field', description: 'Working a booth at the Steelers
	game.', capacity: 8}, {name: 'Steelers Vs Ravens', fundraiser_type_id: fundraiser_types.first, event_date: '2012-09-14', location: 'Heinz Field', description: 'Working a booth at the Steelers
	game.', capacity: 8}, {name: 'Steelers Vs 49ers', fundraiser_type_id: fundraiser_types.first, event_date: '2012-10-01', location: 'Heinz Field', description: 'Working a booth at the Steelers
	game.', capacity: 8}, {name: 'Steelers Vs Browns', fundraiser_type_id: fundraiser_types.first, event_date: '2012-10-10', location: 'Heinz Field', description: 'Working a booth at the Steelers
	game.', capacity: 8}, {name: 'Moving Boxes', fundraiser_type_id: fundraiser_types.second, event_date: '2012-09-12', location: '5524 Fair Oaks St', description: 'You will be moving boxes and furniture. Should 
	take about an hour or two.', capacity: 3},{name: 'Steelers Vs Titans', fundraiser_type_id: fundraiser_types.second, event_date: '2012-10-03', location: '5439 Beeler St', description: 'Pulling out 
	weeds in the backyard. Should take around an hour.', capacity: 2},])