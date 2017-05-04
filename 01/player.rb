# coding: utf-8

#--------------------
# ジャンケンのプレイヤーを表すクラス
#--------------------
class Player
  # ---------
  # プレイヤーの属性
  # ---------
  def initialize(name = "tmp")  # javaでいうコンスタントかな
    # インスタンス変数(インスタンスごとに持つ変数)
    @name = name                # 名前
    @winCount = 0               # 勝った回数
  end
  # プレイヤー確認出力
  def getName
    return @name
  end

  # ---------
  # プレイヤークラスの操作
  # ---------
  # ジャンケンの手を出す
  def showHand
    hand = Random.rand(3) # 0から3未満(整数)
    return hand           # 整数を返すので、定数いらんな
  end

  # 審判から詳細を聞く
  def notifyResult(result)
    if result == true
      # 勝った場合は勝ち数を加算
      @winCount +=1
    end
  end

  # 自分の勝った回数を答える
  def getWinCount
    return @winCount
  end

end
