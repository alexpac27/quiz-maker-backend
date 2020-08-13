class QuizSerializer < ActiveModel::Serializer
  attributes :id, :name, :question_id, :user_id, :integer
end
