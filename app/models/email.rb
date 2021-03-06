class Email < ApplicationRecord
  def event_count(event)
    Email.where(event: event).count
  end

  def calculate_rate(event, email_type)
    total_sent_mail  = Email.where(event: 'send', email_type: email_type).count
    total_event_mail = Email.where(event: event, email_type: email_type).count
    
    percentage = (total_event_mail / total_sent_mail.to_f) * 100
    percentage.nan? ? 0 : percentage.round(2)
  end

  def email_types
    Email.distinct.pluck(:email_type)
  end  
end
