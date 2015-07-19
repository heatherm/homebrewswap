class AddAccountToBeer < ActiveRecord::Migration
  def change
    add_column :beers, :account_id, :integer
  end
end
