class Title < ActiveRecord::Base
  validates :name, presence: true
end
