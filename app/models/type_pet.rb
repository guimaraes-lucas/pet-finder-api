class TypePet < ApplicationRecord
  has_many :pets, dependent: :destroy
end
