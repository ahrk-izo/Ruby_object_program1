# coding: utf-8

#--------------------
# ジャンケンのプレイヤーを表すクラス
#--------------------
class Player
  # 定数定義(大文字で始まる)
  STONE = 0      # グー
  SCISSORS = 1   # チョキ
  PAPER = 2      # パー

  # ---------
  # プレイヤーの属性
  # ---------
  def initialize(name = "tmp")  # javaでいうコンスタントかな
    # インスタンス変数(インスタンスごとに持つ変数)
    @name = name                # 名前
    @winCount = 0               # 勝った回数
    @tactics_                   # 与えられた戦略
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
    # hand = Random.rand(3) # 0から3未満(整数)
    # 与えられた戦略を読んでジャンケンの手を決める
    hand = @tactics_.readTacitcs
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

  # プレイヤーに戦略を渡す(インスタンス変数に格納)
  def setTactics(tactics)
    @tactics_ = tactics
  end
end






#--------------------
# プレイヤーを継承した村田クラス
#--------------------
class Murata < Player
  def initialize(nama = "tmp")
    # スーパークラスのinitialize(コンストラクタ)を読み出す
    super
  end
  # ジャンケンの手を出す
  # スーパークラスの同名メソッドをオーバーライド
  def showHand
    # 必ずグーを出す
    return STONE
  end
end

#--------------------
# プレイヤーを継承した山田クラス
#--------------------
class Yamada < Player
  def initialize(nama = "tmp")
    # スーパークラスのinitialize(コンストラクタ)を読み出す
    super
  end
  # ジャンケンの手を出す
  # スーパークラスの同名メソッドをオーバーライド
  def showHand
    # 必ずパーを出す
    return PAPER
  end
end

