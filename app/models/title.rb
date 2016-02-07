class Title < ActiveRecord::Base
  validates :name, presence: true

  has_many :employee_earnings
end
