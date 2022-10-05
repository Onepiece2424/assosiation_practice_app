class Owner < ApplicationRecord
  has_many :cats, dependent: :destroy
  has_many :dogs, dependent: :destroy
  scope :publish, -> {where(cats: { name: "モモ" }, name: "田中")}

  class << self
    def owner_name
      title = "classメソッドの使用"
      ret = "Ownerだよ!"
      p title + ret
    end
  end
end
