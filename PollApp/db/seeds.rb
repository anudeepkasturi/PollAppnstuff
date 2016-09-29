# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(username: "Travis")      #1
User.create!(username: "Ish")         #2
User.create!(username: "Niko")        #3
User.create!(username: "Lindsey")     #4
User.create!(username: "Vince")       #5
User.create!(username: "Duc")         #6
User.create!(username: "Ryan")        #7
User.create!(username: "Steve")       #8
User.create!(username: "Robert")      #9

Poll.create!(title: "Election", author_id: 1)
Poll.create!(title: "Meaning of Life", author_id: 2)

Question.create!(poll_id: 1, text: "Who's going to be president?")
Question.create!(poll_id: 1, text: "What's going to happen to this country?")

Question.create!(poll_id: 2, text: "What's the meaning of life?")
Question.create!(poll_id: 2, text: "To be or not to be?")

AnswerChoice.create!(question_id: 1, text: "Donald")
AnswerChoice.create!(question_id: 1, text: "Hillary")
AnswerChoice.create!(question_id: 1, text: "Bernie")
AnswerChoice.create!(question_id: 1, text: "Obama")
AnswerChoice.create!(question_id: 2, text: "Zombie apocalypse")
AnswerChoice.create!(question_id: 2, text: "World War 3")
AnswerChoice.create!(question_id: 2, text: "The Even Greater Depression")
AnswerChoice.create!(question_id: 2, text: "drop_table 'life'")

AnswerChoice.create!(question_id: 3, text: "42")
AnswerChoice.create!(question_id: 3, text: "43")
AnswerChoice.create!(question_id: 4, text: "That is the question")
AnswerChoice.create!(question_id: 4, text: "To be")
AnswerChoice.create!(question_id: 4, text: "Not to be")

Response.create!(answer_id: 1, user_id: 3)
Response.create!(answer_id: 2, user_id: 4)
Response.create!(answer_id: 2, user_id: 9)
Response.create!(answer_id: 2, user_id: 8)
Response.create!(answer_id: 2, user_id: 7)
Response.create!(answer_id: 2, user_id: 6)
Response.create!(answer_id: 3, user_id: 2)
Response.create!(answer_id: 1, user_id: 5)

Response.create!(answer_id: 5, user_id: 7)
Response.create!(answer_id: 5, user_id: 8)
Response.create!(answer_id: 5, user_id: 9)
Response.create!(answer_id: 8, user_id: 2)

Response.create!(answer_id: 9, user_id: 1)
Response.create!(answer_id: 9, user_id: 3)
Response.create!(answer_id: 9, user_id: 4)
Response.create!(answer_id: 10, user_id: 5)
Response.create!(answer_id: 10, user_id: 6)
Response.create!(answer_id: 10, user_id: 7)
Response.create!(answer_id: 10, user_id: 8)
Response.create!(answer_id: 10, user_id: 9)

Response.create!(answer_id: 11, user_id: 1)
Response.create!(answer_id: 12, user_id: 3)
Response.create!(answer_id: 12, user_id: 4)
Response.create!(answer_id: 12, user_id: 5)
Response.create!(answer_id: 13, user_id: 6)
Response.create!(answer_id: 13, user_id: 7)
Response.create!(answer_id: 13, user_id: 8)
