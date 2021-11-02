class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :job_title
      t.string :company_name

      t.timestamps
    end
  end
end
