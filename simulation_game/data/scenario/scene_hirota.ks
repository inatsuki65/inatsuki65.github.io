;ティラノスクリプトサンプルゲーム

*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="room.jpg" time="100"]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]


; キャラクターの定義（scene_hirota.ks の冒頭などに記述）
[chara_new name=ナレーション color=255,255,255 storage="chara/akane/normal.png"]
[chara_new name=上司 color=200,200,255 storage="chara/akane/doki.png"]
[chara_new name=同僚 color=255,182,193 storage="chara/yamato/normal.png"]


[layopt layer=base page=fore visible=true]
[backlay name=bg storage=room.jpg]
[trans layer="base" method=fade time=1000]
[wait time=1000]

[layopt layer=message0 page=fore visible=true]
[position layer=message0 x=50 y=300 width=700 height=200 color=black opacity=150]
[font size=24 color=white]

[chara_show name=ナレーション color=255,255,255]
「あなたは今日から新社会人。ここから会社人生が始まります。」

[wait time=1000]

[chara_show name=ナレーション]
「まず、最初の一週間、何に力を入れますか？」

[glink storage="scene_hirota.ks"  size="28"  x="360"  width="500" y="150" target=*work text="仕事に全力"]
[glink storage="scene_hirota.ks"  size="28"  x="360"  width="500" y="250" target=*social text="飲み会で人脈づくり"]
[glink storage="scene_hirota.ks"  size="28"  x="360"  width="500" y="350" target=*study text="資格取得の勉強"]
[s  ]
; -----------------------------
*work
[backlay name=bg storage=pc_work.jpg]
[trans layer="base" method=fade time=1000]
[chara_show name=上司 color=200,200,255]
「お前、最近頑張ってるな。来月、大事なプロジェクトを任せるぞ。」

[glink target=*next_phase text="次へ"]
[s  ]
; -----------------------------
*social
[backlay name=bg storage=izakaya.jpg]
[trans layer="base" method=fade time=1000]
[chara_show name=同僚 color=255,182,193]
「〇〇さんって面白い人ですね〜！今度合コンどうですか？」

[glink target=*next_phase text="次へ"]
[s  ]
; -----------------------------
*study
[backlay name=bg storage=study_room.jpg]
[trans layer="base" method=fade time=1000]
[chara_show name=ナレーション]
「あなたはTOEICのスコアを800点まで上げた！将来の転職の選択肢が広がった。」

[glink target=*next_phase text="次へ"]
[s  ]
; -----------------------------
*next_phase
[backlay name=bg storage=calendar.jpg]
[trans layer="base" method=fade time=1000]
[chara_show name=ナレーション]
「月日は流れ、あなたの選択が人生に影響を与えていく──。」

[glink target=*marriage text="結婚を考える"]
[glink target=*business text="副業にチャレンジ"]
[glink target=*recruit text="部下の育成に励む"]
[s  ]

; -----------------------------
*marriage
[backlay name=bg storage=pc_work.jpg]
[trans layer="base" method=fade time=1000]
[chara_show name=上司 color=200,200,255]
「あなた、今日は結婚記念日だから早めに帰ってきてね！」

[glink target=*next_phase text="次へ"]
[s  ]
; -----------------------------
*business
[backlay name=bg storage=izakaya.jpg]
[trans layer="base" method=fade time=1000]
[chara_show name=同僚 color=255,182,193]
「この案件を一人でこなせるなら、任せます」

[glink target=*next_phase text="次へ"]
[s  ]
; -----------------------------
*recruit
[backlay name=bg storage=study_room.jpg]
[trans layer="base" method=fade time=1000]
[chara_show name=ナレーション]
「係長、この資料見てください！」

[glink target=*next_phase text="次へ"]
[s  ]