# [Nursing Related Graphics(仮)]


## サービス概要


Nursing Related Graphics(仮)は看護実習で看護過程を
展開する時に関連図を作成できるアプリです。

##　想定されるユーザー層
看護学生・看護師
特に看護学生の中で実習を通して患者様を受け持ち、看護過程を展開し関連図を作成する方、
看護学生・看護師の中で自己学習で患者様の関連図を作成したい方


## サービスコンセプト


関連図を作成する時、手書きで用紙に書いていくと綺麗に書けず、時間がかかります。
なぜそうなってしまうのか理由を考えました。

ー書くべき要素が多い
　患者様の病態生理、状態、発達段階、心理、社会的役割etc...と
　全体像を把握するために必要なことが沢山あります

ー書いていくと後から繋げるべき所が見つかる
  全体のバランスを考えて作成するのが難しい
  後から繋がるだろうと予想して作成するにはある程度の知識やアセスメント能力が求められる
　
ー答えがない
　患者様によっては複数の疾患を抱えています、また全ての方にそれぞれのバックグラウンドがあるので
　教科書通りになることはありません

ー関連図を作成するツールがない
　Officeアプリを使用すれば作成自体はできるが毎回記号や要素を出力するので手間がかかってしまう

そのような理由から私自身も看護学生の頃、関連図を作成するのに何度も書き直し
かなり時間を費やしてしまって他の課題や記録に時間を使えないことが多々ありました。

Nursing Related Graphics(仮)は関連図の作成に特化したアプリケーションです。

特徴としては
ー疾患名を入力するとAIが関連図の軸となる部分を生成します(MVPリリース時には要素の出力のみ)
ー関連図に必要な記号を準備しているのでドラッグ&ドロップで追加できます
ーAIが生成した関連図にユーザーが要素を追加していくことができるので個別性を出すことができます
ー必要になるのはPCのみでOfficeアプリ等は必要ありません

例えばユーザーが実習で2型糖尿病の患者様を担当することになりました
* ユーザーはNursing Related Graphics(仮)で'2型糖尿病'と入力します
* AIは'インスリン抵抗性''インスリン分泌能低下'→''インスリン作用不足''→'2型糖尿病'→'多飲'多尿'口渇''体重減少'という様な軸の部分を作成します
* ではなぜその患者様は2型糖尿病になったのか?遺伝的な要因はあるのか？生活習慣はどうだったのか？何か別の疾患があるのか？etc...
* 単に糖尿病と言ってもその患者様ごとに今までの人生があり、糖尿病になった経緯も違います
 もし患者様の家族が2型糖尿病であった場合遺伝的な要素も考えられるので'両親が2型糖尿病'→'インスリン分泌能低下'と繋がるでしょう
 その患者様が'運動不足'や'肥満'といった生活習慣の悪化があれば'インスリン抵抗性'に繋がるでしょう
* その様な患者様固有の要素をユーザーが追加していくことで個別性のある関連図を作成することが出来ます

 AIによる疾患の要素の生成について
* OpenAI APIを使用しています
* '高血圧'と入力したところ'高血圧, 血管の収縮, 血管壁の肥厚, レニン-アンギオテンシン-アルドステロン系の活性化, 高血圧, 頭痛, めまい, 疲労感, 動悸'と回答が来ました
* 'うつ病'と入力したところ'モノアミン神経伝達物質の不均衡, 心理社会要因, ゲノムの脆弱性, 発達要因, うつ病, 無気力感, 睡眠障害, 食欲不振, 倦怠感, 自殺思考'と回答が来ました
* 2型糖尿病はpromptに例として記載してしまっているので今回のテストからは除外しています
* AIの回答なので必ずしも正しい情報が返ってくるわけではない旨を記載します

関連図を作成する一画面の中に要素を追加していく白紙の画面・使用できる記号一覧画面・疾患入力画面の3つを用意する予定をしています。
疾患入力画面で入力し上記のように返ってきた要素の中で使用するものをユーザーが白紙に追加し、記号で囲い矢印で繋げる想定となります。


## 個人情報の取り扱いについて
個人情報保護の観点から'患者様の個人を特定するもしくは特定し得る情報の記載は禁止する'方針です
第三者の個人名や複合して患者を特定することのできる情報の記載を禁止する旨を利用規約に記述する


## 実装を予定している機能
### MVP
* 会員登録
* ログイン/ログアウト
* 記号の作成、削除機能
* 要素の作成、削除機能
* 関連図のCRUD機能
* AIによる入力した疾患名の要素を生成する機能
* AIに疾患を入力する際のオートコンプリート機能
* 作成した関連図を保存できる
* 保存した関連図の画像拡張子を選択できる、ファイル容量の調整

### その後の機能
* AIによって生成した要素を記号で囲み矢印で繋げ、関連図の軸として生成
* ActiveJob・Sidekiqを用いて予期せぬエラーで作成中の関連図のデータが消えないように要素を追加するごとに自動保存する

### 画面遷移図
Figma：https://www.figma.com/file/XCpBP5jAb0jqKGaNmzdXqz/Nursing-Related-Graphics?type=design&node-id=0%3A1&mode=design&t=9S6H5CpUUjc9KGKD-1

### READMEに記載した機能
- [ ] 会員登録
- [ ] ログイン/ログアウト
- [ ] 記号の作成、削除機能
- [ ] 要素の作成、削除機能
- [ ] 関連図のCRUD機能
- [ ] AIによる入力した疾患名の要素を生成する機能
- [ ] AIに疾患を入力する際のオートコンプリート機能
- [ ] 作成した関連図を保存できる
- [ ] 保存した関連図の画像拡張子を選択できる、ファイル容量の調整
- [ ] プロフィール確認
- [ ] プロフィール編集
- [ ] 利用規約・プライバシーポリシー、お問い合わせ
- [ ] パスワードリセット

### 未ログインでも閲覧or利用できるページ
以下の項目はちゃんと未ログインでも閲覧or利用できる画面遷移になっているか？
- [ ] トップページ
- [ ] 利用規約・プライバシーポリシー・お問い合わせ

### メールアドレス・パスワード変更確認項目
直に変更できるものではなく、一旦メールなどを介して専用のページで変更する画面遷移になっているか？
- [ ] メールアドレス
- [ ] パスワード

### 想定URL
- [ ] 特に記載していない or 特に違和感を感じなかった

### ER図
[Gyazo](https://i.gyazo.com/cb364b924d4112cfe2fc711e854f7632.png)
[draw.io](https://viewer.diagrams.net/?tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&title=Nursing-Related-Graphics.drawio#R7Z3RbqM4FIafJtLsxVYJBJJcTtJ2V5pWO9vOaGevIhdOEqsER8Zt0nn6tcFOSAwdSBvI1pYqFQ7GgM9vf9g%2BOB13stz8QdFqcUtCiDpON9x03MuO4%2FRc3%2Bf%2FhOUlsww8JzPMKQ5lop3hHv8EaexK6xMOIdlLyAiJGF7tGwMSxxCwPRuilKz3k81ItH%2FVFZqDZrgPUKRb%2F8EhW2TWodfd2f8EPF%2BoK%2Fe68sgSqcTSkCxQSNZ7JtiwaxIzeYtfgS5RDDHjR24RfQTa8a4WjIkn%2FdxxrvnfTKS%2BmBMyjwCtcHIRkCU3BwlPcj1DSxyJYs5lNJYZ8cu5Vx13Qglh2dZyM4FI%2BEq5Ibun65Kj23KgIt8KJwRP39Hyb%2FbXl7tFDM%2BP%2FfHi8vZ3mcszip5k%2BcqyYS%2BqwHkxrcQmvxLDKLrjTkXxXBwdBySK0CrBD2naLreElKy%2BIToHJg0rgmMG9OoZsmIVthmOogmJCOX7MYlBJUuL3RvzP%2F4kk%2B6F1%2FH4DUz4fm%2B3z%2F9EcsomJE4YRTh9ekAJW0PCN8eMrOR1Ipip26BSEWL7gTDGvZTtyOcHymBTWrC9rbt4tQKyBEZfeJJtnZLqkTWqN5L7650%2BHaXPRU6b6jwk9TbfZr1zI9%2BQnqzhVedNXiW8NGZRWjMWOAwhTj2d1ma083SBEwtLfq%2B0826oVPLlotXdkStut2Zpy8x2pVA7NxRxlceIwZg8xWGiuXB7n8d7ta959XuStSSFnpXOGieMu1i242438yXj1QaE53paLU4tCxyFN%2BiFPDGVkdrjft9AeJc14yItb9FveGbbus0zv5c3Iw6jCM%2B5gC4DEM2ASA8Jv5cbJOpqmmLBlpHczGuq47ihB8Ownz4CJY%2BQOzJ0HgTI3qX6Ovu11%2FX02uv2ihQwOlX19apX39Q3d6KujheE4p%2FCtZF0Rd7x6f4aLyOOoT8BhQemMUlfB0rqddVmvun2u%2FemVqRfrAolg6oqOJUIfE0EX7%2FUY%2FO7t9iHdbsIFOsFZnC%2FQoFItOavoPs1%2FHh3eWY2%2BgNNBjx5uzJQTXqWdpxwZ%2BN4fpOd6R%2FoxDsTnWxKq7UzfFfdVMquAeEMLUTetxNwBET8tiEyelNH4ARtB4RY5dc4QYZmEkQJLieCGC3hE683vNn%2B7dxhcg4SMQ4evRrjQpYeJ6JHwTBSs%2FTovW0c6YPho2fosFPP1VQAS4QjC5AaIjGPIPpopSVI0wTpOa0jpMZYpgEIKXHXh0eIPphJSQSfxNTgHKhFSBWRmIeQgSVG48SoPPt1MmIMTQbEwFBA6AOVAX1ZMQinK5Qka0JD292ooRfjWLGN6bKsaI4Vw7ZZoR7ESFZkkjePFaoHmWNFwi9r%2BVBDI8bxwfUsH5rmwzZkvDU%2BuL7BfHANjZhy9ZApCgmwbU9iysgjxJYXNTRjHi%2FsbEXzvOi3zgvXZF44hvJCn6ks4sUUNivMD0yR7WrUkY9x6OiXD0pYdJwKHYO20dEvf2H4%2BOjoGxoa1ddDow7QkUZKTRNefJYb9bRjHDfc8olPy40TccPtts0Nd2QwN1xDP8lQHd0cN1AQQJJMA35Nxjsc0wOOiGUtLD5qSMg4fDjlYxcWH6fCR%2BtfiTt9g%2FGRSd48fDh6UHVAAYloKd7JCPkGw0uwnKiiFfM4UT4najlxKk60%2FiG4Ux5LbQAnfEM5oa8B8bQKLSeO0YpxnPD1Pmq6oiQOXufHASvsimO6iPrKxXWXHNtGVL3%2FalP2g%2F9qrwlva138knjMs1l0zNFkYPaqY76hM1u%2BPrNl1x07SinGvTgMbAfzBB3MX5Cj9Q7mQI%2B67Th%2BJIrogW%2FMxcb1F2Xil9haW25V2uyYDgztmA4KOqYJ0On5I%2BYs5GEcUtRtWKQ0iJTWlx8bmvx157DEOR8dDUO9B2pXq6ypEeP44NvFxs4AGO2vNubb1ca0WmEeQnx9tbEQMfSJFyCzAKmiEPMAUjR6YQHSNEBaX3zMr%2FGrCQYAxNDVyPyi1chsfN1RWjEOJepLRIuSVlHS%2Btpkg7f%2BtOaHQsnA0OGsgT6cZUPwjtSKeSip8PNNacxDRomes%2B8BiMPP4geX%2Be7V3U%2Bg5Bu5RfFLduQaRyodFQ8ACiqwweyHyoFv%2FyvsF57cu9zkkl0q6nB%2F0pcf%2BZ3cWWJ3d1q6tz0vekhvT6gEBwJ9vJGag4rh4JhZkDmJUXS1s2Zg3D1YpvfUKJ9pBxaRWan21OwCeaIBvOIFOabEFDBLvfXrydztb1HnhbU1UogQw8%2F7d%2FyKer8Kaufqheo9qZAA%2F0Cx2ZPKs3Zq1TLqH2TkHWaUFYWW0btNAeixR5c44e8Y8PqLVOf%2FHHk6m4EfBJ2CyNNwMHroVn5Zqhd56hd9%2F%2BwUidQ71XvS0I7dV3tffuNcUcn3T69Enhbp4HSTvfrQvdmRp0NDR%2B%2BH%2Buj9%2BYcFtRp5WqaUV96XR%2B%2F7vlwluyakY0fxmxh6%2BQVKikJRm0WJHcTXKoWBHNE7zzaQqKZGjCOIug1LkDYJUhR52ihBRnbsXqsU5hFkpI%2Fd22ngI7ViHkn0QUxLksZJUhiS2ixKagxvGoASQ1fsGumjm3Ya%2BEitfCCU8F1KCMsnF0us3JIQRIr%2FAA%3D%3d)
