class Emoji < ApplicationRecord
  # Validations
  validates :name, presence: true, uniqueness: true
  validates :image_url, presence: true, format: URI::regexp(%w[http https])

  def to_s
    name
  end
end
