class Telephone < ApplicationRecord
  belongs_to :friend

  validates :number, presence: true, 
    format: { with: /\A[\d\(\-\)]*\z/ },
    length: { minimum: 8, maximum: 20, allow_blank: true },
    uniqueness: true
end
