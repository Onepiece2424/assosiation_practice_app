class Owner < ApplicationRecord
  has_many :cats, dependent: :destroy
  scope :publish, -> {where(cats: { name: "モモ" }, name: "田中")}
end
