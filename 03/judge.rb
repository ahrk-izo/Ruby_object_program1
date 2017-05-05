# coding: utf-8

#--------------------
# ジャンケンの審判を表すクラス
#--------------------
class Judge
  # 定数定義(大文字で始まる)他クラスの定数を参照
  STONE = Player::STONE
  SCISSORS = Player::SCISSORS
  PAPER = Player::PAPER

  def initialize(name = "tmp")  # javaでいうコンスタントかな
    # インスタンス変数(インスタンスごとに持つ変数)
    @name = name                # 名前
  end
  # 審判確認出力
  def getName
    return @name
  end
  # ジャンケンを開始する
  def startJanken(player1, player2) # 各プレイヤーのインスタンスを受け取る
    puts "【ジャンケン開始】"
    # forを使い複数回行う
    for cnt in 1..3
      puts "#{cnt} 回戦目"
      winner = judgeJanken(player1, player2) # 勝った方のオブジェクトが返る
      if winner != nil
        print winner.getName, "さんが勝ちました\n"
        # 勝ったプレイヤーへ結果を伝える
        winner.notifyResult(true)
      else
        print "引き分けです\n"
      end
    end
    # ジャンケンの終了を宣言
    puts "【ジャンケン終了】"

    # 最終的な勝者の判定
    finalWinner = judgeFinalWinner(player1, player2)
    if finalWinner != nil
      print "最終勝者は", finalWinner.getName, "さんです"
      print "[", finalWinner.getWinCount, "勝]", "\n"
    else
      print "引き分けでした\n"
    end
  end

  # 「ジャンケン・ポン」と声をかけ、
  # プレイヤーの手を見て、どちらが勝ちか判定する
  def judgeJanken(player1, player2)
    winner = nil
    # プレイヤー1の手を出す
    player1hand = player1.showHand

    # プレイヤー2の手を出す
    player2hand = player2.showHand

    # それぞれの手を表示する
    printHand(player1hand)
    print "[", player1.getName, "]"
    print " vs "
    printHand(player2hand)
    print "[", player2.getName, "]"
    print "\n"

    # プレイヤー1が勝つ場合
    if (player1hand == STONE && player2hand == SCISSORS) ||
       (player1hand == SCISSORS && player2hand == PAPER) ||
       (player1hand == PAPER && player2hand == STONE)
      winner = player1
    # プレイヤー2が勝つ場合
    elsif (player2hand == STONE && player1hand == SCISSORS) ||
          (player2hand == SCISSORS && player1hand == PAPER) ||
          (player2hand == PAPER && player1hand == STONE)
      winner = player2
    else
      # どちらでもない場合は引き分け(nullを返す)
    end

    return winner
  end

  # 最終的な勝者を判定する
  def judgeFinalWinner(player1, player2)
    winner = nil

    # player1の勝ち数を聞く
    player1WinCount = player1.getWinCount

    # player2の勝ち数を聞く
    player2WinCount = player2.getWinCount

    if player1WinCount > player2WinCount
      # プレイヤー1の勝ち
      winner = player1
    elsif player1WinCount < player2WinCount
      # プレイヤー2の勝ち
      winner = player2
    end
    # どちらでもない場合はnullを返す
    return winner
  end

  # ジャンケンの手を表示する
  def printHand(hand)
    case hand
    when STONE
      print "グー"
    when SCISSORS
      print "チョキ"
    when PAPER
      print "パー"
    else
    end
  end
end
