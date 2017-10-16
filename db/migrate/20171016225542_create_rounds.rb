class CreateRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :rounds do |t|
      t.integer :first_try, default: 0
      t.belongs_to :deck
      t.timestamps
    end
  end
end
