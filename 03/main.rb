# coding: utf-8

# なぜあなたはJavaでオブジェクト指向開発ができないのか
# のテストプログラムをRubyで書いてみる

require_relative "player"
require_relative "judge"
require_relative "randomTactics"

puts "[03]"
puts "Lessone5"


# インスタンス作成
saito = Judge.new("saito")
print "私[jadgeman]は、", saito.getName, "です。よろしく\n" # メソッド呼び出し

# Playerクラスを継承したYamadaクラスでインスタンス生成
yamada = Player.new("山田")
print "私[player]は、", yamada.getName, "です。よろしく\n" # メソッド呼び出し

# 山田さんに渡す戦略クラスを生成
yamadaTactics = RandomTactisc.new

# 山田さんに戦略クラスを渡す
yamada.setTactics(yamadaTactics)

# Playerクラスを継承したMurataクラスでインスタンス生成
murata = Player.new("村田")
print "私[player]は、", murata.getName, "です。よろしく\n" # メソッド呼び出し
puts ""

# 村田さんに渡す戦略クラスを生成
murataTactics = RandomTactisc.new

# 村田さんに戦略クラスを渡す
murata.setTactics(murataTactics)






# メソッド呼び出しでジャンケン開始
saito.startJanken(yamada, murata) # プレイヤーのインスタンスを渡す



