class ZipCode < ActiveRecord::Base
  validates :zip_code, presence: true

  has_many :employee_earnings
end
