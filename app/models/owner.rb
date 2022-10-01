class Owner < ApplicationRecord
  has_many :cats, dependent: :destroy
end
