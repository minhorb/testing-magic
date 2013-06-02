class Player < Struct.new :height, :weight
  attr_reader :skill

  def body_mass_index
    actual_bmi.round 1
  end

  def skill=(skill_level)
    @skill = skill_level
  end

  def on_the_team?(team)
    team.has_player? self
  end

  def infiltrate_team(team)
    team.add_player self
  end

  private

  def actual_bmi
    (weight / height**2)
  end
end
