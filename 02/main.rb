# coding: utf-8

# なぜあなたはJavaでオブジェクト指向開発ができないのか
# のテストプログラムをRubyで書いてみる

require_relative "player"
require_relative "judge"


puts "[01]"

# インスタンス作成
saito = Judge.new("saito")
print "私[jadgeman]は、", saito.getName, "です。よろしく\n" # メソッド呼び出し

# Playerクラスを継承したYamadaクラスでインスタンス生成
yamada = Yamada.new("山田")
print "私[player]は、", yamada.getName, "です。よろしく\n" # メソッド呼び出し

# Playerクラスを継承したMurataクラスでインスタンス生成
murata = Murata.new("村田")
print "私[player]は、", murata.getName, "です。よろしく\n" # メソッド呼び出し
puts ""

# メソッド呼び出しでジャンケン開始
saito.startJanken(yamada, murata) # プレイヤーのインスタンスを渡す



