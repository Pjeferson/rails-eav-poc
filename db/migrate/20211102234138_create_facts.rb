class CreateFacts < ActiveRecord::Migration[6.1]
  def change
    create_table :facts do |t|
      t.string :name
      t.string :data_type
      t.string :key

      t.timestamps
    end
  end
end
