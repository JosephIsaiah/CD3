class CreateConditions < ActiveRecord::Migration[5.2]
  def change
    create_table :conditions do |t|
      t.string :name
      t.references :category, foreign_key: true
      t.jsonb :fields

      t.timestamps
    end
  end
end
