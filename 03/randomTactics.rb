# coding: utf-8

#--------------------
# ランダムに手を決める戦略クラス
#--------------------
class RandomTactics

  # ジャンケンの手を得る
  def readTacitcs
    hand = Random.rand(3)
    return hand
  end
end

# ------------------------------
# グー好き戦略クラス
# ------------------------------
class StoneOnlyTactics
  # ジャンケンの手を得る
  def readTacitcs
    return Player::STONE
  end
end

# ------------------------------
# 標準入力戦略クラス
# ------------------------------
class AskTactics
  # ジャンケンの手を得る
  def readTacitcs
    puts ""
    puts "ジャンケンの手を入力してください"
    puts "0: グー"
    puts "1: チョキ"
    puts "2: パー"
    puts "?"
    hand = 0
    while true
      hand = gets.to_i          # 標準入力(数値に変換)
      if (hand == Player::STONE)||
         (hand == Player::SCISSORS) ||
         (hand == Player::PAPER)
        break
      else
        puts "入力が正しくありません。再度入力してください"
      end
    end
    return hand
  end
end

# ------------------------------
# グー・チョキ・パーを順番に出す戦略クラス
# ------------------------------
class CyclicTactics
  def initialize
    @hand = 0    # インスタンス変数初期化
  end
  # ジャンケンの手を得る
  def readTacitcs
    hand = @hand # インスタンス変数を利用(インスタンスごとに値を保持するので)
    @hand +=1
    if @hand > 2 # 2を超えたら0に戻す
      @hand = 0
    end
    return hand
  end
end
