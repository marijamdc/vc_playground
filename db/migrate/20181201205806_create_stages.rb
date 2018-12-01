class CreateStages < ActiveRecord::Migration[5.1]
  def change
    create_table :stages do |t|
      t.string :name, null: false
      t.integer :minimum
      t.integer :maximum
      t.timestamps
    end
  end
end
