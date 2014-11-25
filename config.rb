require_relative 'setup'
Mail.defaults do
  delivery_method :smtp, {
    :address              => ENV['SMTP_SERVER'],
    :port                 => 465,
    :user_name => ENV['MAIL_SMPT_USER'] ,
    :password => ENV['MAIL_SMPT_PASSWORD'] ,
    :authentication       => :login,
    :ssl                  => true,
    :tls                  => true,
    :enable_starttls_auto => true
  }
end
