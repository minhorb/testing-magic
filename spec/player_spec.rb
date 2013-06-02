require './player'
require './team'

describe Player do
  context "#body_mass_index" do
    it "calculates the bmi" do
      lebron = Player.new 2.03, 113

      lebron.body_mass_index.should eq 27.4
    end
  end

  context "#skill=" do
    it "updates the skill level" do
      player.skill = 10

      player.skill.should eq 10
    end
  end

  context "#on_the_team?" do
    it "finds if player is on the team" do
      team = Team.new
      team.add_player player

      player.should be_on_the_team team
    end
  end

  context "#infiltrate_team" do
    it "adds player to team" do
      team = Team.new

      team.should_receive(:add_player).and_call_original

      player.infiltrate_team team
    end
  end

  def player
   @_player ||= Player.new 2.03, 113
  end
end
