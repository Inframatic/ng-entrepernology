class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :company_name
      t.integer :number_of_employees
      t.string :logo

      t.timestamps
    end
  end
end
