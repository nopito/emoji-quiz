class Contest < ApplicationRecord
  has_many :contest_questions
  has_many :questions, through: :contest_questions
end
