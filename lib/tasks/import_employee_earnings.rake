require 'csv'

namespace :app do
  task import_employee_earnings: :environment do
    desc 'Imports employee earnings into database'
      file = File.read('/Users/ericwhitebloom/Downloads/Employee_Earnings_Report_2014.csv')
      CSV.parse(file, headers: true) do |row|
        row['TOTAL EARNINGS'].slice!(0)
        employee = EmployeeEarning.new(name: row['NAME'], total_earnings: row['TOTAL EARNINGS'].to_f)
        employee.title = Title.find_or_create_by(name: row['TITLE'])
        employee.department = Department.find_or_create_by(name: row['DEPARTMENT NAME'])
        employee.zip_code = ZipCode.find_or_create_by(zip_code: row['ZIP'])
        employee.save
      end  
  end
end
