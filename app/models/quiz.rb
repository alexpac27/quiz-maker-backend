class Quiz < ApplicationRecord
    belongs_to :user
    belongs_to :question
end