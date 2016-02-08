require 'rails_helper'

feature "Average Salary by Title" do
  before do 
    teacher_title = Title.find_or_create_by(name: 'Teacher')
    EmployeeEarning.find_or_create_by(name: 'Johnny Mo', title: teacher_title, total_earnings: 100000)
    EmployeeEarning.find_or_create_by(name: 'Johnny Mo', title: teacher_title, total_earnings: 110000)
    EmployeeEarning.find_or_create_by(name: 'Johnny Mo', title: teacher_title, total_earnings: 105000)

    Title.includes(:employee_earnings).all.each do |title|
      EarningsReport
        .find_or_create_by(title: title, average_total_earnings: title.employee_earnings.average(:total_earnings).to_f)
    end
  end  
  
  scenario "User fills in a title to find average salary" do
    visit "/earnings"

    fill_in 'title', :with => 'Teacher'
    click_button 'Search'

    expect(page).to have_text("$105000")
  end
end