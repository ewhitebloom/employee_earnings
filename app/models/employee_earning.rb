class EmployeeEarning < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :title
  belongs_to :department
  belongs_to :zip_code
end
