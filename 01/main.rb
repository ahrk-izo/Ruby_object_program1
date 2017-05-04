# coding: utf-8

# なぜあなたはJavaでオブジェクト指向開発ができないのか
# のテストプログラムをRubyで書いてみる

require_relative "player"
require_relative "judge"


puts "[01]"

# インスタンス作成
saito = Judge.new("saito")
print "私[jadgeman]は、", saito.getName, "です。よろしく\n" # メソッド呼び出し
yamada = Player.new("yamada")
print "私[player]は、", yamada.getName, "です。よろしく\n" # メソッド呼び出し
murata = Player.new("murata")
print "私[player]は、", murata.getName, "です。よろしく\n" # メソッド呼び出し
puts ""
saito.startJanken(yamada, murata)



