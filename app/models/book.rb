class Book < ApplicationRecord

  validates :title, {presence: true}
  validates :body, {presence: true}
  validates :title, length: { maximum: 199 }
  belongs_to :user
end
