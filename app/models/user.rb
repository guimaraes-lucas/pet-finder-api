class User < ApplicationRecord
  belongs_to :address
  has_many :pets, dependent: :destroy
end
