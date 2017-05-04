# coding: utf-8


puts "01"
puts "なぜあなたはJavaでオブジェクト指向開発ができないのか"
puts "のテストプログラム"

##############################
# まずクラスを作ってみる(楽しいRuby 復習 P126)
class HelloWorld
  def initialize(myname = "Ruby") # initializeメソッド
    @name = myname                # インスタンス変数の初期化
  end

  def hello
    puts "Hello, world. I am #{@name}."
  end
end
# bob = HelloWorld.new("Bob")
# alice = HelloWorld.new("Alice")
# bob.hello
# alice.hello
##############################

# なぜJavaのP66をRubyで書いてみる

# ジャンケンのプレイヤーを表すクラス
class Player
  # ジャンケンの手を表す定数
  STONE = 0
  SCISSORS = 1
  RAPER = 2

  # プレイヤーの属性
  def initialize(name = "tmp")
    # インスタンス変数(インスタンスごとに持つ変数)
    @name = name                # 名前
    @winCount = 0               # 勝った回数
  end
  # プレイヤー確認出力
  def putsName
    puts "I am #{@name}."
  end

  def getWinCount
    @winCount +=1
    return "#{@name}の勝った回数は、#{@winCount} 回です"
  end

end

p Player::STONE

yamada = Player.new("yamada")
yamada.putsName
puts yamada.getWinCount
puts yamada.getWinCount

murata = Player.new("murata")
murata.putsName
puts murata.getWinCount

