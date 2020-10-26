# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{username: 'dolly_fan'}, {username: 'sailor_moon_fan'}])
polls = Poll.create([{title: 'Dolly Parton Trivia'}, {title: 'Sailor Moon Trivia'}])
questions = Question.create([{question: "Are there actual 'Islands in the Stream'?"}, {question: "Can she 'win love by daylight?'"}])
answer_choices = AnswerChoice.create([{answer: 'Yes!'},{answer: 'No!'}])
responses = Response.create([{response: 'Correct!'}, {response: 'Try again!'}])
