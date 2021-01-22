# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => 'email-smtp.eu-central-1.amazonaws.com', 
  :port => '587', 
  :authentication => :plain, 
  :user_name => ENV['SMTP_CREDENTIALS_USER_NAME'], 
  :password => ENV['SMTP_CREDENTIALS_PASSWORD'], 
  # :user_name => ENV['michaeldowling440@gmail.com'], 
  # :password => ENV['Tr00p3r&P0lly@r3d0gs'], 
  # :domain => 'heroku.com',
  # :domain => 'unlikely-leader-lms.herokuapp.com', 
  :enable_starttls_auto => true 
}