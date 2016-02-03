class CreateEmployeeEarnings < ActiveRecord::Migration
  def change
    create_table :employee_earnings do |t|
    	t.string :name
    	t.belongs_to :department, index: true
    	t.belongs_to :title, index: true
    	t.float :total_earnings
    	t.belongs_to :zip_code, index: true
    end

    add_index :employee_earnings, :name
  end
end
