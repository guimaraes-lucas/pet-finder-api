class Address < ApplicationRecord
  has_many :users, dependent: :destroy
end
