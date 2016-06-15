# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |i|
  User.create!(email: Faker::Internet.email, password: Faker::Internet.password)
end

User.all.each do |user|
  article = Article.create!(author: user)
  Version.create!(title: Faker::Superhero.name, body: Faker::Hipster.paragraph(4), editor: user, article: article)
end