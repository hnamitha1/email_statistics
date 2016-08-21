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
	
end