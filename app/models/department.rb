class Department < ActiveRecord::Base
  validates :name, presence: true

  has_many :employee_earningss
end
