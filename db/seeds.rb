# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Board.delete_all
Board.create! name: "testing", description: "testing", public: true 
Board.create! name: "testing2", description: "hahahahahahahahah", public: true 
Pin.create! title:"blahh", description:"cutieee", url: "http://images2.fanpop.com/image/photos/13700000/CUTIE-PIE-3-despicable-me-13771518-632-391.jpg", likes: 0