#!/usr/bin/env bash
DATE=`date +%m%d`
#todo="sometodo"'_'${DATE}
todo1="[ ] Docker hostinger.com"
todo2="[ ] Moshashugyo"
todo3="[ ] math,khan(matrix)"
todo4="[ ] Drawing(perse,anatomy)"
echo $todo1','$todo2','$todo3;

#ubuntu起動時の挙動
#sedでgdriveのtodos_dailyに毎日のtodosを記録
#一日の初めに前日のtodosをPromptでubuntuの起動時にscriptを走らせる.
#今のtodosを表示
#todosに変更があればtodo番号を指定し、READで入れ替え。

#コマンド起動時の挙動
#promptで終わったタスクを聞き、番号を聞き、doneとしてsedでtodos_done.mdに記録。


