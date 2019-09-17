class Category < ApplicationRecord
  has_and_belongs_to_many :blogs
  validates :name,
            presence: true
  validates :name,
            length: {maximum: 255}, allow_blank: true
end
