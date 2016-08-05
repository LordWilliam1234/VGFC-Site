class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :health
      t.integer :stun
      t.decimal :forwardwalk
      t.decimal :backwalk

      t.timestamps null: false
    end
  end
end
