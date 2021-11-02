class CreateFactValues < ActiveRecord::Migration[6.1]
  def change
    create_table :fact_values do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :fact, null: false, foreign_key: true
      t.text :data

      t.timestamps
    end
  end
end
