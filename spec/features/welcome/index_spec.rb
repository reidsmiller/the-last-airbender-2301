require 'rails_helper'

RSpec.describe 'Welcome Index Page' do
  describe 'When I visit the welcome index page' do
    it 'I can select Fire Nation and click search for members' do
      visit root_path
      
      select 'Fire Nation', from: :nation
      click_button 'Search For Members'

      expect(current_path).to eq(search_path)
    end
  end
end