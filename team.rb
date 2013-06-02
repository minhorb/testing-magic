class Team
  def initialize
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def has_player?(player)
    @players.include? player
  end
end
