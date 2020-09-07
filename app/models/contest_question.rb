class ContestQuestion < ApplicationRecord
  belongs_to :contest
  belongs_to :question
end
