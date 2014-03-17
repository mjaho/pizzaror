# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 t1 = Topping.create name:"Juusto", amount:"200", unit:"g"
 t2 = Topping.create name:"Pekoni", amount:"10", unit:"siivu"
 t3 = Topping.create name:"Boysenmarja", amount:"30", unit:"kpl"
 t4 = Topping.create name:"Koskenkorva", amount:"3", unit:"dl"
 t5 = Topping.create name:"Liivate", amount:"20", unit:"g"

 u1 = User.create username:"admin", firstname:"Antti", lastname:"Admin", userlevel:2
 u2 = User.create username:"Luigi", firstname:"Luigi", lastname:"Pizzanen", userlevel:1

 p1 = Pizza.create name:"Darraspecial", user_id: u2.id
 p1.toppings << t4
 p1.toppings << t5

 p2 = Pizza.create name:"Herrasväen herkku", user_id: u2.id
 p2.toppings << t2
 p2.toppings << t3