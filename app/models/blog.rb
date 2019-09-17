class Blog < ApplicationRecord
  has_and_belongs_to_many :categories
  validates :title, :body,
            presence: true
  validates :title,
            length: {maximum: 255}, allow_blank: true
end
