class CreateGuesses < ActiveRecord::Migration[5.1]
  def change
    create_table :guesses do |t|
      t.belongs_to :card
      t.string :answer
      t.boolean :correct

      t.timestamps
    end
  end
end
