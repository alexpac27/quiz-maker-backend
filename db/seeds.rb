

User.destroy_all
Question.destroy_all

alex = User.create(username: "alexo", password: "pass123")
joseph = User.create(username: "josephy", password: "pass123")

q1 = Question.create(category: "Geography", difficulty: "hard", question: "Which of these island countries is located in the Caribbean?", correct_answer: "Barbados", incorrect_answers: "Fiji,Maldives,Seychelles")


# CREATING QUESTIONS

# questions = JSON.parse(RestClient.get("https://opentdb.com/api.php?amount=20").body)["results"]
# questions.each do |quest|
#     Question.create!(category: quest["category"], difficulty: quest["difficulty"], question: quest["question"], correct_answer: quest["correct_answer"], incorrect_answers: (quest["incorrect_answers"].class == Array ? quest["incorrect_answers"].join(', '): quest["incorrect_answer"]))
# end

# https://opentdb.com/api.php?amount=25&category={9}&difficulty={easy}&type=multiple
# https://opentdb.com/api.php?amount=10&category=9&difficulty=easy