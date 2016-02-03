class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
    	t.string :name
    end

    add_index :departments, :name
  end
end
