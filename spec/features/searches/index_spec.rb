require 'rails_helper'

RSpec.describe 'Search Index Page' do
  describe 'When I visit the search index page' do
    before(:each) do
      visit root_path
      select 'Fire Nation', from: :nation
      click_button 'Search For Members'
    end

    it 'I can see the total number of people who live in the Fire Nation' do
      expect(page).to have_content('Total Number of People: 97')
    end

    it 'I can see detailed information for the first 25 members of the Fire Nation' do
      expect(page).to have_css('.member', count: 25)
      expect(page).to have_content('Name: Chan (Fire Nation admiral)')
      expect(page).to have_content('Allies: Ozai')
      expect(page).to have_content('Enemies: Earth Kingdom')
      expect(page).to have_content('Affiliations: Fire Nation Navy')
    end
  end
end