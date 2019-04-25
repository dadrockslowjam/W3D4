# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Users
bort = User.create([{username: 'Bort'}])
trob = User.create([{username: 'Trob'}])
plonk = User.create([{username: 'Plonk'}])

#poll
p1 = Poll.create([{author_id: 1}, {title: 'Bort Poll'}])
p2 = Poll.create([{author_id: 2}, {title: 'Trob Poll'}])
p3 = Poll.create([{author_id: 3}, {title: 'Plonk Poll'}])

#questions
q1 = Question.create([{q_text: 'Why?'},{poll_id: 1}])
q2 = Question.create([{q_text: 'How?'},{poll_id: 2}])
q3 = Question.create([{q_text: 'When?'},{poll_id: 3}])

#answer_choices
ac1 = AnswerChoice.create([{question_id: 1 }, {a_text: 'Why?Why?Why?'}])
ac2 = AnswerChoice.create([{question_id: 2 }, {a_text: 'How?How?How?'}])
ac3 = AnswerChoice.create([{question_id: 3 }, {a_text: 'When?When?When?'}])

#Responses
r1 = Response.create([{user_id: 3}, {answer_choice: 3}])
r2 = Response.create([{user_id: 2}, {answer_choice: 2}])
r3 = Response.create([{user_id: 1}, {answer_choice: 1}])