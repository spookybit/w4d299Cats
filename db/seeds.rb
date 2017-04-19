# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
cat1 = Cat.create(name: :Peggy, birthdate: "1985/09/29", color: :blue, sex: :F, description: "I am a god at boggle and I am a spanish substitue teacher.")
cat2 = Cat.create(name: :Hank, birthdate: "1983/03/25", color: :green, sex: :M, description: "This cat likes propane and propane accessories.")
cat3 = Cat.create(name: :Bobby, birthdate: "2005/06/15", color: :brown, sex: :M, description: "I am Hanks son.")


catr1 = CatRentalRequest.create(cat_id: 1, start_date: '2017/04/18', end_date: '2017/04/20', status: 'APPROVED')
catr2 = CatRentalRequest.create(cat_id: 1, start_date: '2017/04/19', end_date: '2017/04/21', status: 'PENDING')
catr3 = CatRentalRequest.create(cat_id: 1, start_date: '2017/04/21', end_date: '2017/04/25', status: 'PENDING')
catr4 = CatRentalRequest.create(cat_id: 1, start_date: '2017/04/23', end_date: '2017/04/26', status: 'PENDING')
catr5 = CatRentalRequest.create(cat_id: 1, start_date: '2017/04/27', end_date: '2017/04/29', status: 'PENDING')
