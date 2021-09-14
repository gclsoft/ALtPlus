﻿;===============================================================================
;
;		MouseGestureL.ahk - Language Definition Module
;			<< 日本語 >>
;														Created by Pyonkichi
;===============================================================================
;-------------------------------------------------------------------------------
; 共通文字列定義
;-------------------------------------------------------------------------------
; 言語名
MC_LanguageName = 日本語

; ヘルプファイル
MC_HelpFile = MouseGestureL_JPN.chm

; ボタン
MC_LngButton001 = 閉じる
MC_LngButton002 = クリップボードへコピー

; メッセージ
MC_LngMessage001 = ヘルプファイルが見つかりません。
MC_LngMessage002 =
(LTrim
				設定に問題があるようです。
				下記のエラーメッセージから問題箇所を特定し、設定画面より修正を行ってください。
				エラーの原因を特定できない場合は、バックアップより設定ファイルの復旧を行ってください。
				
				----------------------------------------------------------------------`n`n
)

if (MG_IsEdit) {
	Goto SetEdit
}
;-------------------------------------------------------------------------------
; アプリケーション用文字列定義
;-------------------------------------------------------------------------------
; メニュー
MG_LngMenu001 = AutoHotkey(&K)
MG_LngMenu002 = ジェスチャー有効(&E)
MG_LngMenu003 = ナビ表示(&G)
MG_LngMenu004 = 設定(&C)...
MG_LngMenu005 = 拡張スクリプト編集(&U)
MG_LngMenu006 = 操作ログをコピー(&P)
MG_LngMenu007 = プラグインフォルダを開く(&O)
MG_LngMenu008 = プラグイン(&P)
MG_LngMenu009 = 言語(&L)...
MG_LngMenu010 = ヘルプ(&H)
MG_LngMenu011 = バージョン情報(&A)
MG_LngMenu012 = 再起動(&R)
MG_LngMenu013 = 終了(&X)
MG_LngMenu014 = マウスジェスチャー(&M)

; ツールチップ
MG_LngTooltip001 = ジェスチャー有効
MG_LngTooltip002 = ジェスチャー無効
MG_LngTooltip003 = ナビON
MG_LngTooltip004 = ナビOFF

; その他文字列
MG_LngOthers001 =
(LTrim
				;===============================================================================
				;
				;		MouseGestureL.ahk 拡張スクリプト
				;
				;		・起動時の初期化処理や、ジェスチャー実行時に呼び出されるサブルーチン、
				;		　関数などを定義できます。
				;		・設定画面内の各種リストのサイズなども変更できます。
				;		・内容を書き換えた場合はスクリプトをリロードしてください。
				;
				;===============================================================================

)
MG_LngOthers002 = ユーザー定義の初期化処理
MG_LngOthers003 = ユーザー定義サブルーチン
MG_LngOthers004 = MouseGestureL.ahk用
MG_LngOthers005 = MG_Edit.ahk用
MG_LngOthers006 = MouseGestureL.ahk、MG_Edit.ahk共通

Goto EndLanguage

;-------------------------------------------------------------------------------
; MG_Edit用文字列定義
;-------------------------------------------------------------------------------
SetEdit:

; トリガー操作
Button_LB	= 左ボタン
Button_RB	= 右ボタン
Button_MB	= 中央ボタン
Button_X1B	= 第4ボタン
Button_X2B	= 第5ボタン
Button_WU	= ホイール上回転
Button_WD	= ホイール下回転
Button_LT	= 左チルト
Button_RT	= 右チルト
Button_ET	= 画面上端に接触(全体)
Button_ETA	= 画面上端に接触(左半分)
Button_ETB	= 画面上端に接触(右半分)
Button_ET1	= 画面上端に接触(左1/3)
Button_ET2	= 画面上端に接触(中央1/3)
Button_ET3	= 画面上端に接触(右1/3)
Button_EB	= 画面下端に接触(全体)
Button_EBA	= 画面下端に接触(左半分)
Button_EBB	= 画面下端に接触(右半分)
Button_EB1	= 画面下端に接触(左1/3)
Button_EB2	= 画面下端に接触(中央1/3)
Button_EB3	= 画面下端に接触(右1/3)
Button_EL	= 画面左端に接触(全体)
Button_ELA	= 画面左端に接触(上半分)
Button_ELB	= 画面左端に接触(下半分)
Button_EL1	= 画面左端に接触(上1/3)
Button_EL2	= 画面左端に接触(中央1/3)
Button_EL3	= 画面左端に接触(下1/3)
Button_ER	= 画面右端に接触(全体)
Button_ERA	= 画面右端に接触(上半分)
Button_ERB	= 画面右端に接触(下半分)
Button_ER1	= 画面右端に接触(上1/3)
Button_ER2	= 画面右端に接触(中央1/3)
Button_ER3	= 画面右端に接触(下1/3)
Button_CRT	= 画面右上角に接触
Button_CLT	= 画面左上角に接触
Button_CRB	= 画面右下角に接触
Button_CLB	= 画面左下角に接触

; アクションの種類
ActionType001 = 全て
ActionType002 = 入力エミュレーション
ActionType003 = スクロール
ActionType004 = ウィンドウ制御
ActionType005 = プロセス制御
ActionType006 = アプリケーション制御
ActionType007 = サウンド制御
ActionType008 = スクリプト制御
ActionType009 = ナビ・軌跡
ActionType010 = 同クラスのウィンドウの一括制御
ActionType100 = その他

; アクション名
ActionName001 = キー操作を発生させる
ActionName002 = マウスクリックを発生させる
ActionName003 = ホイール回転を発生させる
ActionName004 = カーソルを移動
ActionName011 = スクロール
ActionName012 = ドラッグスクロール
ActionName021 = ウィンドウをアクティブ化
ActionName022 = ウィンドウを最小化
ActionName023 = ウィンドウを最大化
ActionName024 = ウィンドウを元の状態に戻す
ActionName025 = ウィンドウを閉じる
ActionName026 = ウィンドウを最背面に送る
ActionName027 = ウィンドウを最前面化する
ActionName028 = ウィンドウの最前面化を解除
ActionName029 = ウィンドウの最前面化／解除の切り替え
ActionName030 = ウィンドウの位置とサイズを変更
ActionName031 = ウィンドウの透明度を変更
ActionName032 = ウィンドウの半透明化を解除
ActionName033 = 以前のアクティブウィンドウを復元
ActionName041 = 同クラスのウィンドウを全て最小化
ActionName042 = 同クラスのウィンドウを全て閉じる
ActionName043 = 同クラスのウィンドウを等間隔に並べる
ActionName051 = プログラムを起動
ActionName052 = プロセスを強制終了
ActionName061 = ツールバーボタンのコマンドを実行
ActionName062 = メニューバーのコマンドを実行
ActionName071 = ボリューム変更
ActionName072 = 音声のミュート
ActionName073 = サウンドを再生
ActionName081 = ジェスチャーの認識を打ち切る
ActionName082 = 追加ジェスチャーの入力を待つ
ActionName083 = 時間待ち
ActionName084 = 指定時間の経過後に実行
ActionName085 = 指定時間の経過後にボタンを放したら実行
ActionName086 = ボタンを放すまで繰り返す
ActionName087 = ジェスチャーの認識終了後に実行
ActionName088 = 他のアクションが未発動の場合に実行
ActionName089 = ボタンリリース時のデフォルト動作を実行
ActionName090 = ボタンリリース時のデフォルト動作をキャンセル
ActionName091 = タイムアウトを無効にする
ActionName092 = ジェスチャーの入力状態を保存
ActionName093 = アクティブウィンドウをターゲットにする
ActionName101 = ナビの表示を停止
ActionName102 = ナビの表示を再開
ActionName103 = 軌跡の表示を停止
ActionName104 = 軌跡の表示を再開
ActionName105 = ツールチップナビに文字列を表示
ActionName901 = クリップボードに文字列をコピー
ActionName902 = PostMessage
ActionName903 = SendMessage

; アクションコメント
ActionComment001 = ジェスチャー入力直後の動作
ActionComment002 = 指定時間経過後の動作
ActionComment003 = ボタンを押している間繰り返す動作
ActionComment004 = ボタンを放したときの動作
ActionComment005 = 指定時間の経過後にボタンを放したときの動作
ActionComment006 = ジェスチャーの認識終了後に実行する動作
ActionComment007 = 他のアクションが未発動の場合に実行する動作
ActionComment011 = ###REPLACE###を押す
ActionComment012 = ###REPLACE###を押し続ける
ActionComment013 = ###REPLACE###を放す
ActionComment014:=" (###REPLACE###回)"
ActionComment021 = ###REPLACE###クリック
ActionComment022 = ###REPLACE###を押す
ActionComment023 = ###REPLACE###を放す
ActionComment031 = ホイール↑回転
ActionComment032 = ホイール↓回転
ActionComment033:=" (###REPLACE###ステップ)"
ActionComment041 = ジェスチャー入力開始位置へカーソルを移動
ActionComment042 = ジェスチャー入力開始位置から ###REPLACE### へカーソルを移動
ActionComment043 = ジェスチャー入力完了位置から ###REPLACE### へカーソルを移動
ActionComment044 = 現在位置から ###REPLACE### へカーソルを移動
ActionComment045 = ###REPLACE### へカーソルを移動
ActionComment051 = 上ページスクロール
ActionComment052 = 下ページスクロール
ActionComment053 = 左ページスクロール
ActionComment054 = 右ページスクロール
ActionComment055:=" (###REPLACE###行)"
ActionComment056:=" (###REPLACE###ページ)"
ActionComment061 = ウィンドウ位置/サイズ変更 (###REPLACE###)
ActionComment071 = 同クラスのウィンドウを縦等間隔に並べる
ActionComment072 = 同クラスのウィンドウを横等間隔に並べる
ActionComment073 = 同クラスのウィンドウをタイル状に並べる

; ダイアログBOXのキャプション
ME_LngCapt001 = MouseGestureL
ME_LngCapt002 = MouseGestureL 設定
ME_LngCapt003 = 削除確認
ME_LngCapt004 = 上書き確認
ME_LngCapt005 = トリガーボタンの定義
ME_LngCapt006 = スクリプトエディタの指定
ME_LngCapt007 = トリガー操作別の矢印色
ME_LngCapt008 = 矩形領域設定
ME_LngCapt009 = タスク切り替え時に除外するウィンドウ
ME_LngCapt010 = タスクリスト
ME_LngCapt011 = アクションの追加
ME_LngCapt012 = キー入力
ME_LngCapt013 = キーストローク直接編集
ME_LngCapt014 = マウスクリックの設定
ME_LngCapt015 = ホイール回転の設定
ME_LngCapt016 = カーソル移動の設定
ME_LngCapt017 = スクロールの設定
ME_LngCapt018 = ドラッグスクロールの設定
ME_LngCapt019 = ウィンドウ位置とサイズの設定
ME_LngCapt022 = 実行ファイルの指定
ME_LngCapt023 = サウンドファイルの指定
ME_LngCapt024 = 送信メッセージの設定
ME_LngCapt025 = アイコンファイルの選択
ME_LngCapt026 = 同クラスのウィンドウを全て最小化
ME_LngCapt027 = 同クラスのウィンドウを全て閉じる
ME_LngCapt028 = 同クラスのウィンドウを等間隔に並べる

; タブ
ME_LngTab001 = メイン`nターゲット`nジェスチャー`n認識設定`nナビ`n軌跡・ログ`nその他

; メニュー
ME_LngMenu000 = (なし)
ME_LngMenu001 = ウィンドウの部位
ME_LngMenu002 = タイトルバー
ME_LngMenu003 = タイトルバーのアイコン
ME_LngMenu004 = 最小化ボタン
ME_LngMenu005 = 最大化ボタン
ME_LngMenu006 = 閉じるボタン
ME_LngMenu007 = ヘルプボタン
ME_LngMenu008 = メニューバー
ME_LngMenu009 = 縦スクロールバー
ME_LngMenu010 = 横スクロールバー
ME_LngMenu011 = 枠
ME_LngMenu012 = リサイズ可能な枠
ME_LngMenu013 = その他の領域
ME_LngMenu014 = ツリー/リストの項目上
ME_LngMenu015 = マウスカーソル
ME_LngMenu016 = 通常(矢印)
ME_LngMenu017 = 縦線(テキスト欄など)
ME_LngMenu018 = 指(リンクなど)
ME_LngMenu019 = 砂時計
ME_LngMenu020 = 十字
ME_LngMenu021 = 禁止
ME_LngMenu022 = 矢印+砂時計
ME_LngMenu023 = 矢印+疑問符
ME_LngMenu024 = 4方向矢印
ME_LngMenu025 = 上下矢印
ME_LngMenu026 = 左右矢印
ME_LngMenu027 = ＼矢印
ME_LngMenu028 = ／矢印
ME_LngMenu029 = 垂直矢印
ME_LngMenu030 = 上記標準カーソルのどれか
ME_LngMenu031 = 不明(ソフト固有など)
ME_LngMenu032 = ウィンドウ状態
ME_LngMenu033 = 最大化
ME_LngMenu034 = 通常
ME_LngMenu035 = 半透明
ME_LngMenu036 = 不透明
ME_LngMenu037 = 最前面
ME_LngMenu038 = 非最前面
ME_LngMenu039 = キーボード状態
ME_LngMenu040 = Shiftキー押し下げ
ME_LngMenu041 = Shiftキー非押し下げ
ME_LngMenu042 = Ctrlキー押し下げ
ME_LngMenu043 = Ctrlキー非押し下げ
ME_LngMenu044 = Altキー押し下げ
ME_LngMenu045 = Altキー非押し下げ
ME_LngMenu046 = 矩形領域判定
ME_LngMenu047 = ウィンドウ相対座標
ME_LngMenu048 = スクリーン絶対座標
ME_LngMenu049 = 画面端接触認識
ME_LngMenu050 = 新しいボタンを作成
ME_LngMenu101 = ターゲットの設定(&T)	Enter
ME_LngMenu102 = 新規ターゲット(&N)	Ctrl+N
ME_LngMenu103 = サブターゲットを追加(&S)
ME_LngMenu104 = ジェスチャーを追加(&A)
ME_LngMenu105 = 削除(&D)	Delete
ME_LngMenu106 = 複製(&P)	Ctrl+D
ME_LngMenu107 = クリップボードへコピー(&C)	Ctrl+C
ME_LngMenu108 = クリップボードからインポート(&I)	Ctrl+V
ME_LngMenu109 = 上へ移動(&U)	Shift+↑
ME_LngMenu110 = 下へ移動(&O)	Shift+↓
ME_LngMenu111 = 名前順で並べ替え(&R)
ME_LngMenu112 = サブターゲットを折りたたむ(&F)	Ctrl+F
ME_LngMenu113 = ジェスチャーの割り当て(&G)	Enter
ME_LngMenu121 = 新規ジェスチャーを定義(&N)
ME_LngMenu122 = ジェスチャーの設定(&G)	Enter
ME_LngMenu123 = 他のジェスチャーに変更(&C)
ME_LngMenu124 = 他のターゲットへコピー(&T)
ME_LngMenu125 = アクションをテキストエディタで編集(&E)	Ctrl+Enter
ME_LngMenu141 = 新規ジェスチャー(&N)	Ctrl+N
ME_LngMenu142 = 編集...(&E)
ME_LngMenu151 = ターゲットの変更(&T)

; スタティックテキスト
ME_LngText001 = ターゲット:
ME_LngText002 = ジェスチャー:
ME_LngText003 = ターゲットの優先順位:
ME_LngText004 = アクションスクリプト:
ME_LngText005 = カテゴリ:
ME_LngText006 = アクション:
ME_LngText011 = 名称:
ME_LngText012 = 種別:
ME_LngText013 = 値:
ME_LngText014 = 判定方法:
ME_LngText021 = トリガー操作:
ME_LngText022 = カーソル移動:
ME_LngText023 = 説明:
ME_LngText024 = ボタン名:
ME_LngText025 = キー文字列:
ME_LngText026 = デフォルトアクション:
ME_LngText027 = 高
ME_LngText028 = 低
ME_LngText029 = ジェスチャーパターンの末尾は特殊な設定をする場合を除き、アンダースコア " _ " で閉じてください。`n末尾のアンダースコアはマウスボタンの解放を意味し、「ボタンを放す」ボタンを押すと付加されます。`n`n`t【×】   ###REPLACE###`n`t【〇】   ###REPLACE###_`n`n仕様を理解した上で意図的に定義したジェスチャーであれば、この警告は無視してください。
ME_LngText100 = ジェスチャー認識処理の間隔 (ms):
ME_LngText101 = 通常ストローク:
ME_LngText102 = 4方向モードの「LL」「RR」:
ME_LngText103 = 4方向モードの「UU」「DD」:
ME_LngText104 = 8方向モードの長距離ストローク:
ME_LngText105 = 第1ストローク:
ME_LngText106 = 縦横移動の後:
ME_LngText107 = 斜め移動の後:
ME_LngText108 = ジェスチャーのタイムアウト判定を開始するカーソル移動量:
ME_LngText109 = ボタンを押している間に認識が打ち切られるまでの時間 (ms):`n( 0 でタイムアウトなし )
ME_LngText110 = ボタンを放した後に追加ジェスチャーの入力を許容する時間 (ms):
ME_LngText111 = 接触認識処理の間隔 (ms):
ME_LngText112 = コーナーの認識範囲:
ME_LngText113 = 横:
ME_LngText114 = 縦:
ME_LngText115 = タイムアウト後にトリガーボタンを強制解放するまでの時間 (秒):`n( 0 で強制解放処理を無効化 )
ME_LngText200 = ナビの種類:
ME_LngText201 = 表示更新間隔 (ms):
ME_LngText202 = ナビが消えるまでの時間 (ms):
ME_LngText203 = 矢印の色 (RRGGBB):
ME_LngText204 = 背景色 (RRGGBB):
ME_LngText205 = 矢印の透明度 (0～255):
ME_LngText206 = 矢印のサイズ:
ME_LngText207 = 矢印の間隔:
ME_LngText208 = 縁から矢印までの余白:
ME_LngText209 = カーソルからの距離:`n( -1 で開始位置に固定 )
ME_LngText210 = 矢印の色:
ME_LngText300 = 文字の色 (RRGGBB):
ME_LngText301 = 未確定文字の色 (RRGGBB):
ME_LngText302 = ウィンドウの背景色 (RRGGBB):
ME_LngText303 = ウィンドウの透明度 (0～255):
ME_LngText304 = 文字のサイズ:
ME_LngText305 = フォント名:
ME_LngText306 = 表示位置:
ME_LngText307 = 左側余白:
ME_LngText308 = 右側余白:
ME_LngText309 = 上側余白:
ME_LngText310 = 下側余白:
ME_LngText311 = ウィンドウの角の丸み:
ME_LngText312 = カーソルからの距離:`n( -1 で開始位置に固定 )
ME_LngText313 = 画面端からの距離X:
ME_LngText314 = 画面端からの距離Y:
ME_LngText400 = 軌跡の色 (RRGGBB):
ME_LngText401 = 軌跡の透明度 (0～255):
ME_LngText402 = 軌跡の太さ:
ME_LngText403 = 軌跡の描画を開始するカーソル移動量:
ME_LngText404 = 表示更新間隔 (ms):
ME_LngText421 = X座標:
ME_LngText422 = Y座標:
ME_LngText423 = ログの表示行数:
ME_LngText424 = ログウィンドウの横幅:
ME_LngText451 = ジェスチャー有効/無効の切り替え:
ME_LngText452 = ナビON/OFFの切り替え:
ME_LngText453 = MouseGestureLを再起動:
ME_LngText455 = 高さの制限 ( 0 で無制限 ):
ME_LngText501 = 横幅:
ME_LngText502 = 高さ:
ME_LngText503 = ※横幅と高さは「 0 」でウィンドウ全体の横幅、高さになります。
ME_LngText504 = 対象:
ME_LngText505 = 基準コーナー:
ME_LngText506 = 判定座標:
ME_LngText521 = キーを入力してください:
ME_LngText522 = マウスボタン:
ME_LngText523 = 操作状態:
ME_LngText524 = 入力回数:
ME_LngText525 = 操作状態:
ME_LngText526 = クリック回数:
ME_LngText527 = ホイールの回転量:
ME_LngText528 = 基点:
ME_LngText529 = スクロール方向:
ME_LngText530 = スクロール量:
ME_LngText531 = ボタンを押したままカーソルを移動させるとスクロールする機能です。
ME_LngText532 = ※この機能はボタンが押されている状態のジェスチャーへ割り当ててください。
ME_LngText533 = 垂直方向のマウス感度:
ME_LngText534 = 水平方向のマウス感度:
ME_LngText535 = (値が小さいほど高感度)
ME_LngText536 = スクロール方向:
ME_LngText537 = スクロール操作:
ME_LngText541 = ウィンドウの左上座標とサイズを指定してください。
ME_LngText542 = ・ 空白のままにした項目は変更されません。
ME_LngText543 = ・「相対値指定」をチェックすると、現在のウィンドウ位置、および`n　ウィンドウサイズに対する増減値の指定となります。
ME_LngText544 = ・「相対値指定」をチェックして分数を指定すると、現在のウィンドウ`n　位置、およびウィンドウサイズに対する比率指定となります。
ME_LngText545 = ・「相対値指定」のチェックを外して分数を指定すると、デスクトップ`n　のサイズに対する比率指定となります。`n　(横幅と高さを「1/1」にしたい場合は、「 0 」を指定してください)
ME_LngText546 = 左座標:
ME_LngText547 = 上座標:
ME_LngText548 = 横幅:
ME_LngText549 = 高さ:
ME_LngText551 = コマンドライン:
ME_LngText552 = 作業フォルダ:
ME_LngText553 = 実行時の大きさ:
ME_LngText554 = 特権レベル:
ME_LngText556 = プログラム (*.exe)
ME_LngText557 = サウンドファイル (*.wav;*.mid)
ME_LngText558 = アイコンファイル (*.ico;*.exe;*.dll;*.cpl;*.icl)
ME_LngText561 = メッセージ:
ME_LngText562 = wParam:
ME_LngText563 = lParam:
ME_LngText571 = 以下を設定することでウィンドウタイトルによるフィルタリングができます。 (省略可)
ME_LngText572 = 含まれる文字列:
ME_LngText573 = 除外する文字列:
ME_LngText581 = 並べる方向:
ME_LngText582 = 画面の左側:
ME_LngText583 = 画面の右側:
ME_LngText584 = 画面の上側:
ME_LngText585 = 画面の下側:

; ボタン
ME_LngButton001 = OK
ME_LngButton002 = キャンセル
ME_LngButton003 = ヘルプ
ME_LngButton004 = クリップボードからインポート
ME_LngButton005 = ジェスチャーを追加
ME_LngButton006 = アクションを適用
ME_LngButton007 = 追加
ME_LngButton008 = 更新
ME_LngButton009 = 変更
ME_LngButton010 = 入力補助
ME_LngButton011 = 削除
ME_LngButton012 = ボタンを押す
ME_LngButton013 = ボタンを放す
ME_LngButton014 = ジェスチャー末尾の１ステップを削除
ME_LngButton015 = スタートアップに登録
ME_LngButton016 = スタートアップから削除
ME_LngButton017 = トリガー操作別の矢印色の設定
ME_LngButton018 = 直接編集
ME_LngButton019 = 特殊キー
ME_LngButton020 = 参照...
ME_LngButton021 = アイコン適用
ME_LngButton022 = タスク切り替え時に除外するウィンドウを指定
ME_LngButton023 = 実行中のタスクから選択...
ME_LngButton024 = 選択

; ドロップダウンリスト
ME_LngDropDown001 = ウィンドウクラス`nコントロールクラス`n実行ファイル名`nタイトル`nカスタム条件式`n他のターゲットと一致
ME_LngDropDown002 = 完全一致`n部分一致`n前方一致`n後方一致`n正規表現
ME_LngDropDown003 = ツールチップ`n矢印ナビ1`n矢印ナビ2`nアドバンスドナビ`nリアルナビ
ME_LngDropDown004 = カーソル位置`nスクリーン左上`nスクリーン右上`nスクリーン左下`nスクリーン右下
ME_LngDropDown005 = スクリーン左上`nスクリーン右上`nスクリーン左下`nスクリーン右下`n座標指定
ME_LngDropDown101 = ターゲットウィンドウ内の相対座標`nターゲットコントロール内の相対座標`nスクリーン絶対座標
ME_LngDropDown102 = 左上`n右上`n左下`n右下
ME_LngDropDown103 = ジェスチャー開始座標`nジェスチャー終了座標
ME_LngDropDown201 = 左ボタン`n右ボタン`n中央ボタン`n第4ボタン`n第5ボタン
ME_LngDropDown202 = 通常ストローク`n押し下げ`n押し上げ
ME_LngDropDown203 = クリック`n押し下げ`n押し上げ
ME_LngDropDown204 = ジェスチャー入力開始位置`nジェスチャー入力完了位置`n現在のカーソル位置
ME_LngDropDown205 = 上スクロール`n下スクロール`n左スクロール`n右スクロール
ME_LngDropDown206 = カーソルの移動方向へスクロール`nカーソルの移動方向と逆へスクロール
ME_LngDropDown207 = カーソルを移動させた分だけスクロール`nボタンを放すまで自動スクロール
ME_LngDropDown208 = 通常のウィンドウ`n最小化`n最大化`n非表示
ME_LngDropDown209 = ユーザー権限で実行`n管理者権限で実行
ME_LngDropDown210 = 縦方向`n横方向`n縦横両方向

; リストビューのカラムタイトル
ME_LngListView001 = 種別`n値
ME_LngListView002 = ジェスチャー`nアクション
ME_LngListView003 = ターゲット`nアクション
ME_LngListView004 = トリガー操作`n矢印の色
ME_LngListView005 = タイトル`nウィンドウクラス`n実行ファイル名

; グループBOX
ME_LngGroupBox001 = 認識処理の基本設定
ME_LngGroupBox002 = ジェスチャーの入力とみなされるカーソル移動量
ME_LngGroupBox003 = 斜め移動の認識範囲(角度)
ME_LngGroupBox004 = タイムアウト
ME_LngGroupBox005 = 画面端接触認識
ME_LngGroupBox006 = 拡張マウスボタンの動作
ME_LngGroupBox007 = 共通設定
ME_LngGroupBox008 = 矢印ナビ
ME_LngGroupBox009 = アドバンスドナビ
ME_LngGroupBox010 = 軌跡
ME_LngGroupBox011 = 操作ログ
ME_LngGroupBox012 = ホットキー
ME_LngGroupBox013 = スクリプトの編集に使用するテキストエディタ
ME_LngGroupBox014 = スタートアップ
ME_LngGroupBox015 = タスク切り替え
ME_LngGroupBox016 = その他
ME_LngGroupBox017 = アイコン
ME_LngGroupBox018 = 判定条件
ME_LngGroupBox019 = ターゲットルール
ME_LngGroupBox101 = ホイールの回転方向
ME_LngGroupBox102 = ウィンドウを配置したくない領域の指定

; チェックBOX
ME_LngCheckBox001 = 不一致
ME_LngCheckBox002 = 親ターゲットの条件を継承しない
ME_LngCheckBox003 = 8方向モード
ME_LngCheckBox004 = アクティブウィンドウをターゲットにする
ME_LngCheckBox005 = ディスプレイごとに領域を分割する
ME_LngCheckBox006 = 中央ボタンのデフォルト動作を無効化する
ME_LngCheckBox007 = 第4ボタンのデフォルト動作を無効化する
ME_LngCheckBox008 = 第5ボタンのデフォルト動作を無効化する
ME_LngCheckBox009 = 起動時からナビを有効化する
ME_LngCheckBox010 = 背景を透過させる
ME_LngCheckBox011 = トリガーボタンの押下時からナビを表示
ME_LngCheckBox012 = ジェスチャーの軌跡を表示する
ME_LngCheckBox013 = ジェスチャー操作のログを表示する
ME_LngCheckBox014 = 軌跡をオーバーラップウィンドウに描画する
ME_LngCheckBox015 = トレイメニューをサブメニュー化する
ME_LngCheckBox016 = ダイアログBOXの高さをアイテムの登録数に合わせて調節する
ME_LngCheckBox017 = 未定義ジェスチャーの入力後に本来のマウス操作を再現しない
ME_LngCheckBox018 = 修飾キーの押下状態を無視する
ME_LngCheckBox019 = 今後はこのメッセージを表示しない
ME_LngCheckBox020 = トリガー操作を常時フック処理する
ME_LngCheckBox021 = デフォルトジェスチャーを適用しない
ME_LngCheckBox101 = Shift
ME_LngCheckBox102 = Ctrl
ME_LngCheckBox103 = Alt
ME_LngCheckBox110 = 絶対座標
ME_LngCheckBox111 = ページスクロール
ME_LngCheckBox112 = 相対値指定
ME_LngCheckBox113 = Aeroウィンドウの枠幅分を自動調整

; ラジオボタン
ME_LngRadioBtn001 = どれかに一致
ME_LngRadioBtn002 = 全てに一致
ME_LngRadioBtn101 = ↑回転
ME_LngRadioBtn102 = ↓回転

; メッセージ
ME_LngMessage001 = 「###REPLACE###」
ME_LngMessage002 = 、
ME_LngMessage003 = にはジェスチャー###REPLACE###が割り当てられています。`n
ME_LngMessage004 = はターゲット###REPLACE###に含まれています。`n
ME_LngMessage005 = `n削除してよろしいですか？
ME_LngMessage006 = このジェスチャーにはアクションが割り当てられています。`n削除してよろしいですか？
ME_LngMessage007 = コピー先には既にジェスチャー「 ###REPLACE### 」が割り当てられています。`nこのアクションで上書きしますか？
ME_LngMessage011 = ボタン名に使用できるのは英数字のみです。
ME_LngMessage012 = このボタン名は予約されています。
ME_LngMessage013 = 既に同じ名前のボタンがあります。`n上書きしますか？
ME_LngMessage014 = 既に同じキーを使ったボタンがあります。`n置き換えますか？
ME_LngMessage015 = 標準ボタンに使用されているボタン名です。`n標準ボタンの定義を変更しますか？
ME_LngMessage016 = 標準ボタンとして定義済みです。
ME_LngMessage017 = 選択されているボタンを削除しますか？
ME_LngMessage021 = 登録済みのジェスチャーを###REPLACE###方向モードに変換しますか？
ME_LngMessage022 = `n`n※斜め方向への移動操作は削除されます
ME_LngMessage031 = スタートアップ時に管理者権限で起動しますか？
ME_LngMessage032 = スタートアップに登録しました。
ME_LngMessage033 = スタートアップから削除しました。
ME_LngMessage101 = アプリケーションのメニューバー内の項目を選択します。`n`n　・メニュー項目は「 , 」区切りで、最大6階層辿った先まで指定できます。`n　・対応できないアプリケーションもあります。`n`n　　【例】編集,コピー`n`nメニューの項目名を指定してください:
ME_LngMessage102 = 起動するプログラムやファイル、URLなどを指定してください。
ME_LngMessage104 = 不透明度を指定してください。`n`n　　0(透明) ～ 255(不透明)
ME_LngMessage105 = 直前にアクティブ化されていたウィンドウを再度アクティブ化します。`nタイムアウト値に指定された時間が経過する前に再度実行すれば、`nより以前のアクティブウィンドウまで遡って復元されます。`n`nタイムアウト値(ms):
ME_LngMessage106 = 以下の何れかを指定してください。`n`n    0 ～ 100`t: 音量を直接指定`n   +1 ～ +100`t: 音量の増加量を指定`n   -1 ～ -100`t: 音量の減少量を指定:
ME_LngMessage107 = 以下の何れかを指定してください。`n`n     1 : ミュートON`n     0 : ミュートOFF`n     + : ミュートON/OFFの切り替え
ME_LngMessage108 = 再生するサウンドファイルのパス名を指定してください。`n`n・OSがサポートしていない形式のサウンドファイルは再生できません。
ME_LngMessage109 = 一度ボタンが放された後、タイムアウトするまでは、次のボタン押し`n下げ操作を同ジェスチャーの続きとして受け付けるようにします。`n`n　・この処理はボタンを放した時のアクションに割り当ててください。`n`n　【例】右ダブルクリック`n　　1. RB__のアクションにこの処理を割り当てる`n　　2. RB__RB__のアクションに右ダブルクリック時の動作を割り当てる`n`nタイムアウト値(ミリ秒)を指定してください:
ME_LngMessage110 = 指定された時間だけスクリプトの実行を停止し、待ち時間が経過`nした後に続きを実行します。`n`n　・時間待ちの間はジェスチャーを受け付けなくなります。`n　　長い時間を待つ場合は「ジェスチャーの認識終了後に実行」`n　　を利用してください。`n`n待ち時間(ミリ秒)を指定してください:
ME_LngMessage111 = ジェスチャーの入力後、指定された時間が経過してから処理を実行します。`n`n　・ボタン押し下げ操作のアクションに割り当てることで、ボタン長押し時`n　　の動作を割り当てられます。`n　・シングルクリックのアクションを、ダブルクリックしなかったときにだけ実行`n　　させることができます。`n`n　【例】中央ボタンのダブルクリック時に、シングルクリックへの割り当て`n　　　　動作が発動しないようにする`n　　1. MB__のアクションにこの処理を割り当て、「 else { 」の下に`n　　　 シングルクリック時の動作を記述する`n　　2. MB__MB__のアクションにダブルクリック時の動作を割り当てる`n`n待ち時間(ミリ秒)を指定してください:
ME_LngMessage112 = ジェスチャーの入力後、指定された時間が経過してから`nボタンを放した時点で処理を実行します。`n`n　・この処理はボタンが押されている状態のジェスチャーへ`n　　割り当ててください。`n`n待ち時間(ミリ秒)を指定してください:
ME_LngMessage113 = ボタンが放されるまで、指定間隔で処理を繰り返します。`n`n　・この処理はボタンが押されている状態のジェスチャーへ`n　　割り当ててください。`n`n繰り返し間隔(ミリ秒)を指定してください:
ME_LngMessage114 = ジェスチャーの認識処理が完了した後で処理を実行します。`n`n　・この処理は割り当てアクションの中でメッセージBOXを`n　　表示させるなど、スクリプトの流れが長時間停止する`n　　場合に利用します。`n
ME_LngMessage115 = ジェスチャーの入力後、マウスボタンを放したときにマウス操作に応じた本来の動作を実行します。`n`n　・右ボタンをトリガーとしたジェスチャーが発動した場合、右ボタンを放したときにコンテキストメニュー`n　　は表示されませんが、この関数を実行した場合は表示されるようになります。`n`n　・割り当てアクションの中にif文があり、所定の条件を満たしていないときには通常の操作とみな`n　　してコンテキストメニューを表示させたい、といった場合はelse側でこの関数を呼び出します。`n
ME_LngMessage116 = ジェスチャーの入力後、マウスボタンを放したときにマウス操作に応じた本来の動作をキャンセルします。`n`n　【使用例】`n　　1. 右ボタンをトリガーとしたジェスチャーに次のようなアクションを割り当てる。`n　　2. MG_Timer()関数を利用して、後続のジェスチャーが発動しなかったことを条件に`n　　　 所定の処理を遅延実行する。`n`n　　上記の設定ではアクションが遅延実行される前にコンテキストメニューが表示されます。`n　　これを防止するにはジェスチャー入力直後の処理でこの関数を呼び出してください。`n
ME_LngMessage117 = 指定された文字列をツールチップナビに表示します。`n`n　・この機能はボタンが押されている状態のジェスチャーへ`n　　割り当ててください。`n　・ツールチップナビが無効になっている場合は機能しません。`n　・複数行の文字列を表示する場合は、OKボタンを押して`n　　から(　)内の文字列を編集してください。`n`n表示させる文字列を入力してください:
ME_LngMessage118 = 指定された文字列をクリップボードにセットします。`n`n　・タブは``t、 改行は``nです。`n　・複数行の文字列をコピーする場合は、OKボタンを押して`n　　から(　)内の文字列を編集してください。`n`nコピーする文字列を入力してください:
ME_LngMessage119 = キー操作を表す文字列を入力してください。`n`n　　【書式】　+^!#{キー名}	+ :Shift	　^ :Ctrl`n				! :Alt	　# :Windowsキー`n`n　・単一文字のキーは{ }で囲まなくてもOKです。`n　・単一の大文字はShiftキーとの同時押しと解釈されます。`n　・{キー名 Down}でキーの押し下げのみ、{キー名 Up}で押し上げのみとなります。`n　・マウスのクリックはボタンごとにそれぞれ、{LButton}、{RButton}、{MButton}、`n　　{XButton1}、{XButton2}と記述します。`n　・複数のキーを連続指定することで、連続したキー操作を発生させることができます。

; ツールチップ
ME_LngTooltip001 = 削除
ME_LngTooltip002 = クリア
ME_LngTooltip003 = テキストエディタで編集
ME_LngTooltip011 = ターゲットを追加
ME_LngTooltip012 = 上へ移動
ME_LngTooltip013 = 下へ移動
ME_LngTooltip014 = 名前順で並べ替え
ME_LngTooltip015 = 複製
ME_LngTooltip016 = サブターゲットを表示
ME_LngTooltip017 = サブターゲットを折りたたむ
ME_LngTooltip021 = ジェスチャーを追加
ME_LngTooltip101 = 「###REPLACE###」をクリップボードへコピーしました。
ME_LngTooltip102 = 設定をインポートしました。
ME_LngTooltip103 = 取得したいウィンドウを右クリック
ME_LngTooltip104 = 対象ボタンを右クリック
ME_LngTooltip105 = ドラッグして領域を選択

; フォント
ME_AdNaviFont	 = メイリオ
ME_ScriptFont	 = ＭＳ ゴシック
ME_ScriptSize	 =

; その他文字列
ME_LngOthers001	 = デフォルト
ME_LngOthers002  = ジェスチャー無効
ME_LngOthers003	 = ターゲット
ME_LngOthers004	 = なし
ME_LngOthers005	 = 
ME_LngOthers006	 = 部分一致
ME_LngOthers007	 = 前方一致
ME_LngOthers008	 = 後方一致
ME_LngOthers009	 = 正規表現
ME_LngOthers010	 = 不一致
ME_LngOthers011	 = 部分不一致
ME_LngOthers012	 = 前方不一致
ME_LngOthers013	 = 後方不一致
ME_LngOthers014	 = 正規表現不一致
ME_LngOthers015  = << トリガー操作の追加 >>

;-------------------------------------------------------------------------------
; デフォルト設定
;-------------------------------------------------------------------------------
ME_PresetItems =
(%
[ジェスチャー無効]

[ブラウザー]
Icon=%A_WinDir%\system32\inetcpl.cpl,6
Exe=iexplore.exe
Exe=msedge.exe
Exe=chrome.exe
Exe=firefox.exe

[エクスプローラー]
Icon=%A_WinDir%\explorer.exe,1
WClass=CabinetWClass
WClass=ExploreWClass
WClass=Progman
WClass=WorkerW

[アイコン]
Icon=%A_WinDir%\explorer.exe,1
Level=2
Custom=MG_TreeListHitTest()

[RB_]
G=RB_
Default=;アクティブ化<MG_CR>MG_WinActivate()
エクスプローラー/アイコン=;ジェスチャーキャンセル<MG_CR>MG_Abort()

[RB_LB_]
G=RB_LB__
Default=;ウィンドウを閉じる<MG_CR>PostMessage, 0x0010

[RB_←]
G=RB_L_
Default=;戻る<MG_CR>Send, !{Left}

[RB_→]
G=RB_R_
Default=;進む<MG_CR>Send, !{Right}

[RB_↑]
G=RB_U_
Default=;先頭へジャンプ<MG_CR>Send, ^{Home}

[RB_↓]
G=RB_D_
Default=;最後へジャンプ<MG_CR>Send, ^{End}

[RB_←↑]
G=RB_LU_

[RB_←↓]
G=RB_LD_

[RB_→↑]
G=RB_RU_
Default=;直前のアクティブウィンドウを復元<MG_CR>MG_ActivatePrevWin()

[RB_→↓]
G=RB_RD_
Default=;最小化<MG_CR>PostMessage, 0x0112, 0xF020, 0

[RB_↑←]
G=RB_UL_

[RB_↑→]
G=RB_UR_

[RB_↓←]
G=RB_DL_

[RB_↓→]
G=RB_DR_
)

;-------------------------------------------------------------------------------
EndLanguage:
	MG_Language := RegExReplace(A_LineFile, "m)^.+\\|\.ahk$")

