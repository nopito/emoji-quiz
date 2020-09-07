class Question < ApplicationRecord
  has_many :contest_questions
  has_many :contests, through: :contest_questions
end
