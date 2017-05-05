# coding: utf-8

#--------------------
# ランダムに手を決める戦略クラス
#--------------------
class RandomTactisc

  # ジャンケンの手を得る
  def readTacitcs
    hand = Random.rand(3)
    return hand
  end
end
