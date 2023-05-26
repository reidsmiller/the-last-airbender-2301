class SearchFacade
  def initialize(nation)
    @nation = nation
  end

  def members
    @members = members_data[0..24].map do |member_data|
      Member.new(member_data)
    end
  end

  def member_count
    @count = members_data.count
  end

  private

  def service
    @_service ||= SearchService.new
  end

  def members_data
    @members_data ||= service.get_members(@nation)
  end
end