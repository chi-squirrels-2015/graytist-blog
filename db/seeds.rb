# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
20.times do
  date = Faker::Time.backward(days: 45, period: :day)
  title = Faker::Lorem.sentence
  body = ""
  10.times { body << Faker::Lorem.paragraph }

  Post.create(title: title,
              body: body,
              created_at: date,
              updated_at: date)
end