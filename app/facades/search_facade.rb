class SearchFacade
  def initialize(nation)
    @nation = nation
  end

  def nation
    @nation.split('+').map(&:capitalize).join(' ')
  end

  def members
    @members = members_data.map do |member_data|
      Member.new(member_data)
    end
  end

  def member_count
    @count = members_count_data.count
  end

  private

  def service
    @_service ||= LastAirbenderService.new
  end

  def members_data
    @members_data ||= service.get_members(@nation)
  end

  def members_count_data
    @members_count_data ||= service.get_member_count(@nation)
  end
end