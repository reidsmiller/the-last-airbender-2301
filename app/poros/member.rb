class Member
  attr_reader :name, :photo_url, :allies, :enemies, :affiliation

  def initialize(data)
    @name = data[:name]
    @photo_url = data[:photoUrl]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
  end

  def allies_list
    @allies.empty? ? 'None' : @allies.join(', ')
  end

  def enemies_list
    @enemies.empty? ? 'None' : @enemies.join(', ')
  end
end