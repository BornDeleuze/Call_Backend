# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
User.destroy_all
Message.destroy_all
Conversation.destroy_all

User.create(username: "Kaia")
Conversation.create(name: "TEST")
Message.create(user_id: 1, conversation_id: 1, content: "HELLO WORLD!!")

20.times {
  channel = Conversation.create(name: Faker::Movies::Hobbit.location )
}


30.times {
  user = User.create(username: Faker::Movies::Hobbit.character )
}

50.times {
  message = Message.create(
    content: Faker::JapaneseMedia::StudioGhibli.quote ,
    user_id: Random.rand(30),
    conversation_id: Random.rand(20)
  )
}

puts "yay done seeded"





