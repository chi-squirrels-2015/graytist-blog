# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
20.times do
  date = Faker::Time.backward(45, :day)
  title = Faker::Lorem.sentence
  body = ""
  rand(8..12).times do
    body << Faker::Lorem.sentences(12).join(" ") + "\n"
  end

  Post.create(title: title,
              body: body,
              created_at: date,
              updated_at: date)
end