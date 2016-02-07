class CreateEarningsReport < ActiveRecord::Migration
  def change
    create_table :earnings_reports do |t|
    	t.belongs_to :title, index: true
    	t.float :average_total_earnings
    end
  end
end
