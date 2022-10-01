class AddIncomesToOwners < ActiveRecord::Migration[6.1]
  def change
    add_column :owners, :sex, :string
    add_column :owners, :income, :integer
  end
end
