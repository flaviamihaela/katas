class TennisGame

  def initialize(player1Name, player2Name)
    @player_1_name = player1Name
    @player_2_name = player2Name
    @game = Tennis::LoveAll.new
  end

  def won_point(playerName)
    if playerName == @player_1_name
      @game = @game.player_1_score
    else
      @game = @game.player_2_score
    end
  end

  def score
    @game.score % {player_1: @player_1_name, player_2: @player_2_name}
  end

end

module Tennis

  class LoveAll
    def score; "Love-All" end
    def player_1_score; FifteenLove.new end
    def player_2_score; LoveFifteen.new end
  end

  class FifteenLove
    def score; "Fifteen-Love" end
    def player_1_score; ThirtyLove.new end
    def player_2_score; FifteenAll.new end
  end

  class ThirtyLove
    def score; "Thirty-Love" end
    def player_1_score; FortyLove.new end
    def player_2_score; ThirtyFifteen.new end
  end

  class FortyLove
    def score; "Forty-Love" end
    def player_1_score; WinPlayer_1.new end
    def player_2_score; FortyFifteen.new end
  end

  class LoveFifteen
    def score; "Love-Fifteen" end
    def player_1_score; FifteenAll.new end
    def player_2_score; LoveThirty.new end
  end

  class LoveThirty
    def score; "Love-Thirty" end
    def player_1_score; FifteenThirty.new end
    def player_2_score; LoveForty.new end
  end

  class LoveForty
    def score; "Love-Forty" end
    def player_1_score; FifteenForty.new end
    def player_2_score; WinPlayer_2.new end
  end

  class FifteenAll
    def score; "Fifteen-All" end
    def player_1_score; ThirtyFifteen.new end
    def player_2_score; FifteenThirty.new end
  end

  class ThirtyFifteen
    def score; "Thirty-Fifteen" end
    def player_2_score; ThirtyAll.new end
    def player_1_score; FortyFifteen.new end
  end

  class FortyFifteen
    def score; "Forty-Fifteen" end
    def player_1_score; WinPlayer_1.new end
    def player_2_score; FortyThirty.new end
  end

  class ThirtyAll
    def score; "Thirty-All" end
    def player_1_score; FortyThirty.new end
    def player_2_score; ThirtyForty.new end
  end

  class FortyThirty
    def score; "Forty-Thirty" end
    def player_1_score; WinPlayer_1.new end
    def player_2_score; Deuce.new end
  end

  class WinPlayer_1
    def score; "Win for %{player_1}" end
  end

  class WinPlayer_2
    def score; "Win for %{player_2}" end
  end

  class Deuce
    def score; "Deuce" end
    def player_1_score; AdvantagePlayer_1.new end
    def player_2_score; AdvantagePlayer_2.new end
  end

  class AdvantagePlayer_1
    def score; "Advantage %{player_1}" end
    def player_1_score; WinPlayer_1.new end
    def player_2_score; Deuce.new end
  end

  class AdvantagePlayer_2
    def score; "Advantage %{player_2}" end
    def player_1_score; Deuce.new end
    def player_2_score; WinPlayer_2.new end
  end

  class FifteenThirty
    def score; "Fifteen-Thirty" end
    def player_1_score; ThirtyAll.new end
    def player_2_score; FifteenForty.new end
  end

  class FifteenForty
    def score; "Fifteen-Forty" end
    def player_2_score; WinPlayer_2.new end
  end

  class ThirtyForty
    def score; "Thirty-Forty" end
    def player_1_score; Deuce.new end
    def player_2_score; WinPlayer_2.new end
  end
end
