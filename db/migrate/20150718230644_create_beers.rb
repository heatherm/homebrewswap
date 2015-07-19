class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :style
      t.timestamp :brewed_on
      t.integer :growlers_remaining

      t.timestamps null: false
    end
  end
end
