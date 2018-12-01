class CreateFonds < ActiveRecord::Migration[5.1]
  def change
    create_table :fonds do |t|
      t.string :name, null: false
      t.string :web

      t.timestamps
    end
  end
end
