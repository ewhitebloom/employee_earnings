class CreateZipCodes < ActiveRecord::Migration
  def change
    create_table :zip_codes do |t|
    	t.integer :zip_code
    end

    add_index :zip_codes, :zip_code
  end
end
