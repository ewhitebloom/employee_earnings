# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
every 5.minutes do
  rake "app:import_employee_earnings"
  rake 'app:process_earnings_reports.rake'
end

# Learn more: http://github.com/javan/whenever