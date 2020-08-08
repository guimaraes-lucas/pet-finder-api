class Pet < ApplicationRecord
  belongs_to :type_pet
  belongs_to :user
end
