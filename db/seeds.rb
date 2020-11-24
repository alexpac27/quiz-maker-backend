User.destroy_all
Question.destroy_all
Quiz.destroy_all


# CREATING USERS

alex = User.create(username: "alexo", password: "pass123")
joseph = User.create(username: "josephy", password: "pass123")



# CREATING QUESTIONS

questions = JSON.parse(RestClient.get("https://opentdb.com/api.php?amount=50").body)["results"]
questions.each do |quest|
    Question.create!(category: quest["category"], difficulty: quest["difficulty"], question: quest["question"], correct_answer: quest["correct_answer"], incorrect_answers: (quest["incorrect_answers"].class == Array ? quest["incorrect_answers"].join(', '): quest["incorrect_answer"]))
end

# CREATING QUIZZES 

Quiz.create(name:"Alex's History Quiz", user_id: 1, question_id: 1)
Quiz.create(name:"Alex's History Quiz", user_id: 1, question_id: 2)
Quiz.create(name:"Random Quiz", user_id: 1, question_id: 3)
Quiz.create(name:"Random Quiz", user_id: 1, question_id: 4)
Quiz.create(name:"Random Quiz", user_id: 1, question_id: 5)

Quiz.create(name:"Joseph's Awesome Quiz", user_id: 2, question_id: 12)
Quiz.create(name:"Joseph's Awesome Quiz", user_id: 2, question_id: 13)
Quiz.create(name:"Joseph's Awesome Quiz", user_id: 2, question_id: 14)
Quiz.create(name:"All About the Quiz", user_id: 2, question_id: 15)
Quiz.create(name:"All About the Quiz", user_id: 2, question_id: 16)

Quiz.create(name:"Alex's History Quiz", user_id: 1, question_id: 17)
Quiz.create(name:"Alex's History Quiz", user_id: 1, question_id: 18)
Quiz.create(name:"Random Quiz", user_id: 1, question_id: 19)
Quiz.create(name:"Random Quiz", user_id: 1, question_id: 20)
Quiz.create(name:"Random Quiz", user_id: 1, question_id: 21)

Quiz.create(name:"Joseph's Awesome Quiz", user_id: 2, question_id: 22)
Quiz.create(name:"Joseph's Awesome Quiz", user_id: 2, question_id: 23)
Quiz.create(name:"Joseph's Awesome Quiz", user_id: 2, question_id: 24)
Quiz.create(name:"All About the Quiz", user_id: 2, question_id: 25)
Quiz.create(name:"All About the Quiz", user_id: 2, question_id: 26)
