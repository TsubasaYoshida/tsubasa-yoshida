class Contact < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PHONE_REGEX = /\A\d{10}\z|\A\d{11}\z/
  validates :name, :email, :telephone, :message,
            presence: true
  validates :email,
            format: {with: VALID_EMAIL_REGEX}, allow_blank: true
  validates :telephone,
            format: {with: VALID_PHONE_REGEX}, allow_blank: true
end
