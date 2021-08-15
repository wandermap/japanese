;ティラノスクリプトサンプルゲーム

*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="room.jpg" time="100"]
[playbgm storage=sakura-skip.mp3]
;メニューボタンの表示
;@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 opacity=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;akane
[chara_new  name="akane" storage="chara/akane/normal.png" jname="あかね"  ]
;キャラクターの表情登録
[chara_face name="akane" face="angry" storage="chara/akane/angry.png"]
[chara_face name="akane" face="doki" storage="chara/akane/doki.png"]
[chara_face name="akane" face="happy" storage="chara/akane/happy.png"]
[chara_face name="akane" face="sad" storage="chara/akane/sad.png"]

;yamato
[chara_new  name="yamato"  storage="chara/yamato/normal.png" jname="やまと" ]

;にほごん
[chara_new name="nihogon" storage="nihogon.gif" jname="にほごん"]
[chara_new name="fumiha" storage="fumiha.gif" jname="ふみは"]

;シーンスタート

;キャラクター登場
[chara_show  name="nihogon" top=180 left=130 wait=false]
[chara_show  name="fumiha" top=180 left=1000 reflect=true]

#にほごん
[playse storage="00_n_hello.mp3"]
皆さんこんにちは、にほごんです[p]
[stopse ]

#ふみは
[playse storage="01_f_hello.mp3"]
ふみはです[p]
[stopse ]

#にほごん
[playse storage="02_n_question.mp3"]
早速ですが、まず皆さんに質問です[p]
[stopse ]

#にほごん
*question
[playse storage="03_n_doyou.mp3"]
日本語の勉強に興味がありますか？[p]
[stopse ]

[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="200"  text="はい。興味あります"  target="*yes"  ]
[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="300"  text="興味ない"  target="*no"  ]
[s  ]


;no ループ
*no
#にほごん
[playse storage="04_n_no.mp3"]
んーーーーーーー、ごめん、良く聞こえなかった [r]
もう一度聞くよ？[p]
[stopse ]
@jump target=*question

*yes
#にほごん
[playse storage="05_n_yes.mp3"]
あ、そうなんだ、それはちょうど良かった [p]
[stopse ]

#ふみは
[playse storage="06_f_let.mp3"]
私たちも今　日本語の勉強をしているところなの[r]　
仲間だね[p]
[stopse ]

[cm]

[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="200"  text="最初に戻る"  target="*start"  ]
[s  ]
