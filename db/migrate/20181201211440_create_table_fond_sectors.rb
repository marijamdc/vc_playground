class CreateTableFondSectors < ActiveRecord::Migration[5.1]
  def change
    create_table :table_fond_sectors do |t|
      t.belongs_to :fond, null: false
      t.belongs_to :sector, null: false

      t.timestamps null: false

      t.foreign_key :fonds
      t.foreign_key :sectors
    end
  end
end
