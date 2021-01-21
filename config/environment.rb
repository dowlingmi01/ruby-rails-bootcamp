# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net', 
  :port => '587', 
  :authentication => :plain, 
  :user_name => ENV['SENDGRID_USERNAME'], 
  :password => ENV['SENDGRID_PASSWORD'], 
  # :user_name => ENV['michaeldowling440@gmail.com'], 
  # :password => ENV['Tr00p3r&P0lly@r3d0gs'], 
  :domain => 'heroku.com', 
  :enable_starttls_auto => true 
}