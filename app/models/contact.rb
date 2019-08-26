class Contact < ApplicationRecord
  validates :name, :email, :telephone, :message,
            presence: true
end
