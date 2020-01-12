User.create!(first_name: "Eric", last_name: "R", email: "eric@email.com", password: "password")
User.create!(first_name: "Peter", last_name: "Jang", email: "peter@email.com", password: "password")
User.create!(first_name: "Diana", last_name: "K", email: "diana@email.com", password: "password")

LostPet.create!(user_id: 1, address: "215 W Ohio", search_area: "5 miles", breed: "poodle", color: "brown", size: "sm", age: "7", gender: "m", behaviour_type: "friendly", name: "spike", picture: "")
LostPet.create!(user_id: 2, address: "1 S State", search_area: "2 miles", breed: "pitbull", color: "black", size: "med", age: "4", gender: "f", behaviour_type: "aggressive", name: "poli", picture: "")
LostPet.create!(user_id: 3, address: "700 N Michigan", search_area: "10 miles", breed: "husky", color: "grey", size: "lg", age: "8", gender: "m", behaviour_type: "shy", name: "ozzy", picture: "")

FoundPet.create!(address: "215 W Ohio", breed: "poodle", color: "brown", size: "sm", gender: "m", add_info: "barks alot", shelter_info: "n/a", user_id: 2)
FoundPet.create!(address: "35th Shields", breed: "husky", color: "grey", size: "lg", gender: "m", add_info: "shy", shelter_info: "n/a", user_id: 2)
FoundPet.create!(address: "1997 N Clybourn Ave", breed: "terrier", color: "black", size: "sm", gender: "f", add_info: "friendly", shelter_info: "PAWS Chicago 1997 N Clybourn Ave", user_id: 2)

MessageBody.create!(sender_id: 1, receiver_id: 2, body: "wassup")
MessageBody.create!(sender_id: 2, receiver_id: 1, body: "i got yo dog")
