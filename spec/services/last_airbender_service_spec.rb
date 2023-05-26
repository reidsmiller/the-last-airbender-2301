require 'rails_helper'

RSpec.describe LastAirbenderService do
  context '#get_members' do
    it 'returns member data for a given nation' do
      search = LastAirbenderService.new.get_members('fire+nation')
      expect(search).to be_a(Array)
      member_data = search.first

      expect(member_data).to have_key(:_id)
      expect(member_data[:_id]).to be_a(String)

      expect(member_data).to have_key(:allies)
      expect(member_data[:allies]).to be_a(Array)
      expect(member_data[:allies].first).to be_a(String)

      expect(member_data).to have_key(:enemies)
      expect(member_data[:enemies]).to be_a(Array)
      expect(member_data[:enemies].first).to be_a(String)

      expect(member_data).to have_key(:name)
      expect(member_data[:name]).to be_a(String)

      expect(member_data).to have_key(:affiliation)
      expect(member_data[:affiliation]).to be_a(String)
    end
  end
end