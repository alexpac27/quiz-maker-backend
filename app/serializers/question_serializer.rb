class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :category, :type, :difficulty, :question, :correct_answer, :incorrect_answer
end
