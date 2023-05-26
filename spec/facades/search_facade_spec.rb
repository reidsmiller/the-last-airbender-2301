require 'rails_helper'

RSpec.describe SearchFacade do
  before(:each) do
    @facade = SearchFacade.new('fire+nation')
  end

  it 'returns an array of members' do
    expect(@facade.members).to be_a(Array)
    expect(@facade.members.first).to be_a(Member)
    expect(@facade.members.count).to eq(25)
  end

  it 'returns the total number of members' do
    expect(@facade.member_count).to eq(97)
  end
end