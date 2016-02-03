class ZipCode < ActiveRecord::Base
  validates :zip_code, presence: true
end
