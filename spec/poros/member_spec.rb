require 'rails_helper'

RSpec.describe Member do
  before(:each) do
    @member1 = Member.new({
      allies: ['Ozai'],
      enemies: ['Earth Kingdom'],
      photoUrl: 'https://vignette.wikia.nocookie.net/avatar/images/9/9d/Chan.png/revision/latest?cb=20140908141053',
      name:'Chan',
      affiliation: 'Fire Nation Navy'
    })

    @member2 = Member.new({
      allies: [],
      enemies: [],
      photoUrl: 'https://vignette.wikia.nocookie.net/avatar/images/9/9d/Chan.png/revision/latest?cb=20140908141053',
      name: 'Ember Island Players',
      affiliation: 'Fire Nation'
    })
  end

  it 'exists' do
    expect(@member1).to be_a(Member)
    expect(@member1.name).to eq('Chan')
    expect(@member1.photo_url).to eq('https://vignette.wikia.nocookie.net/avatar/images/9/9d/Chan.png/revision/latest?cb=20140908141053')
    expect(@member1.allies).to eq(['Ozai'])
    expect(@member1.enemies).to eq(['Earth Kingdom'])
  end

  describe 'instance methods' do
    context '#allies_list' do
      it 'returns a list of allies' do
        expect(@member1.allies_list).to eq('Ozai')
        expect(@member2.allies_list).to eq('None')
      end
    end

    context '#enemies_list' do
      it 'returns a list of enemies' do
        expect(@member1.enemies_list).to eq('Earth Kingdom')
        expect(@member2.enemies_list).to eq('None')
      end
    end
  end
end