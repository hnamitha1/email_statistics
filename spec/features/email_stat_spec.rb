require 'rails_helper'

describe 'display email statistics'  do
  describe 'email count by event' do
    before do
	FactoryGirl.create(:email, event: 'send')
	FactoryGirl.create(:email, event: 'open')
	FactoryGirl.create(:email, event: 'open')
	FactoryGirl.create(:email, event: 'click')

	visit ('/')
    end

    it 'total number of emails sent' do
      expect(page).to have_content 'Emails sent: 1'
    end

    it 'total number of emails open' do
      expect(page).to have_content 'Emails open: 2'
    end

    it 'total number of emails click' do
      expect(page).to have_content 'Emails click: 1'
    end
  end

  describe 'open and click rates per email type' do
    before do
      3.times { FactoryGirl.create(:email, email_type: 'Order', event: 'send') }
      2.times { FactoryGirl.create(:email, email_type: 'Order', event: 'open') }
      1.times { FactoryGirl.create(:email, email_type: 'Order', event: 'click') }
      5.times { FactoryGirl.create(:email, email_type: 'Shipment', event: 'send') }
      4.times { FactoryGirl.create(:email, email_type: 'Shipment', event: 'open') }
      3.times { FactoryGirl.create(:email, email_type: 'Shipment', event: 'click') }

      visit '/'
    end

    it 'open rate per email type' do
    	expect(page).to have_content '66.67'
    	expect(page).to have_content '80.0'
    end

    it 'click rate per email type' do
    	expect(page).to have_content '33.33'
      expect(page).to have_content '60.0'
    end
  end
end
