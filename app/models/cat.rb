class Cat < ApplicationRecord
  belongs_to :owner
  has_many :cat_child
end
