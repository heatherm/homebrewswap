class AddZipCodeToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :zip_code, :string
  end
end
