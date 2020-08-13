# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

alex = User.create(username: "alexo", password: "pass123")
joseph = User.create(username: "josephy", password: "pass123")


# https://opentdb.com/api.php?amount=25&category={9}&difficulty={easy}&type=multiple
# https://opentdb.com/api.php?amount=10&category=9&difficulty=easy