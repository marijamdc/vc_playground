class CreateStages < ActiveRecord::Migration[5.1]
  def change
    create_table :stages do |t|
      t.string :name, null: false
      t.references :fond, null: false, index: true, foreign_key: true
      t.integer :minimum
      t.integer :maximum
      t.timestamps
    end
  end
end
