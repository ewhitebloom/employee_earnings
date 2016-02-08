namespace :app do
  task process_earnings_reports: :environment do
    desc 'Create earnings reports for average total earnings for each job title.'
    Title.includes(:employee_earnings).all.each do |title|
      EarningsReport
        .find_or_create_by(title: title, average_total_earnings: title.employee_earnings.average(:total_earnings).to_f)
    end  
  end
end
