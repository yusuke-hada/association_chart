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
[Gyazo](https://i.gyazo.com/659417668b99eadcd7497ebdc9ff9012.png)
[draw.io](https://viewer.diagrams.net/?tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&title=Nursing-Related-Graphics.drawio#R7Z1db6M4FIZ%2FTaTuxVYJJCS9nKTtzmpa7Ww7o529ilw4BasOZo3TJPPr1wYcSBymoW1CVFuqVHwwBvu89oM%2FcDruZLb8g6EkuqUBkI7TDZYd97LjOL1uty%2F%2BScsqt3h9JzeEDAdFpNJwj3%2BCurKwznEA6UZETinhONk0%2BjSOwecbNsQYXWxGe6Rk864JCkEz3PuI6NZ%2FcMCj3DoadEv7Z8BhpO4scpyfmSEVuTCkEQroYsMES35NY1484ldgMxRDzMWZW8SegHUGVxHnMqefOs61%2BHuUsc9DSkMCKMHpuU9nwuynIsr1I5phIou5ktC4SEjczr3quBNGKc%2BPZssJEOkr5Yb8ma5rzq7Lgcl097jAn39Hs7%2F5X1%2Fuohien%2Frj6PL29yKVZ0TmRfkWZcNXqsBFMSXyUNyJY0TuhFNRHMqzY58SgpIUP2Rxu8ISMJp8QywEXhgSimMO7OoZ8mKVtkdMyIQSykQ4pjGoaFmxD8biT%2BRk0j0fdAbiASYi3CvD4k9GZ3xC45QzhLPcA0r5AlJxOOY0Ke5D4FE9BisUIY8fKOfCS3mgyD8wDsvagu2t3SWqFdAZcLYSUdQFbqGeokb1LorwotSno%2FQZVbSprkOF3sJ10qUbxUHhyQZedd7kVSpK45FkNSPCQQBx5umsNqPS0zucuLPkN0q76oa9Sr5etLo7KsXtNiztIrGyFBqnhohQeYw4jOk8DlLNhevnfL1X%2B5pXv6d5S7LTs4WzxikXLi7acbeb%2B5KLagPScz2tFmeWCJPgBq3onKuEVEj4fQnBXd6My7iiRb8Ria3rtkj8vngYeRoRHAoBXfogmwEZH1LxLDdI1tUsRsRnpDisaqrjuMEARkE%2FywKjT1A5M3IeXM97n%2BrrbNZed6DXXre3SwEXh6q%2Bg%2F2rb%2BabO1lXxxFl%2BKd0LSlcUXV8Fl7gGREY%2Bgwo2DKNafY6UFOv923mj91%2B997UivR3q0LJYF8VHEoEniaCr1%2BasfndW%2Bztur0LFIsIc7hPkC8jLcQr6GYNf727BmY2%2BkNNBiJ6uzJQTXoed5wKZ%2BM4vMmv9LZ0MjgRnSxrq7Uzelfd7JXcEYQzshB5307AKyDitQ2Rizd1BA7QdkCAVXpHJ8jITIIowVVEEKMZnIl6I5rt304dJqcgEePg0WswLmTpcSB67BhGOi49em8bR%2Fpg%2BOgZOuzUczUVwAxhYgHSQCTmEUQfrbQEOTZBek7rCGkwlmkAQmrc9eERog9mMkrgTE4NhsAsQvYRiXkIGVpiHJ0Ye89%2BHYwYI5MBMTQUEPpApc9WCYdgmqA0XVAW2O5GA70Yx4r1mi7LiuOxYtQ2K1RGjGRFLnnzWKF6kBVWpOK2lg8NNGIcH9yB5cOx%2BbBeMt4aH1zPYD64hq6YcvUlUwxS4OuexJTTJ4gtLxpoxjxe2NmK4%2FOi3zovXJN54RjKC32mchcvprBMsDgxRbar0UQ%2BxqGjXz8oYdFxKHQM20aH%2BorWSHT0DV0a1deXRm2hI1spNU1F8VluNNOOcdxw6yc%2BLTcOxA232zY33AuDueEa%2BkmG6uhWuIF8H9J06ot7ctHhmG5xRG5rYfHRQELG4cOpH7uw%2BDgUPlr%2FStzpG4yPXPLm4cPRF1X7DJBcLSU6GYE44HgGlhP7aMU8TtTPiVpOHIoTrX8I7tSvpTaAE56hnND3gJgngeXEa7RiHCc8vY%2Ba7SiJ%2FV%2FzY4sVdscxXUR95eKmW46tV9y%2B%2F25T9oP%2F%2FV4T3ta6eDXrMU9m0zFHk4HZu455hs5sefrM1vcY%2FzeHPy9P%2FXWh1d3H6vRi3OvD0HYzD9DNfIEfrXczh%2Fra247jEVlED%2BIglAfXX5RJ3GJtbblVabN7OjS0ezrc0T1NgU1Pf4PLk5CHcUjx7JYyJ8CY1ncl8%2ByWMlqlMA8enr6lTIA4OhMFyO2I5j4KMY8fu15OLT%2BOzI%2F29yTzGmyNbQBADN1yxtu15YxdRPEqrRiHEvW5iUVJqyhpfbOy4Vt%2FP%2B1DoWRY466PjpKhPmtm11m8UivmoWSP3%2BjIprRySvScTQ9AHHySv6opgld3P4HRb%2FQWxav8zDUmKh6TGQAFFVhi%2FkOlII7%2FlfbzQRG6XFaiXSrqCH%2By1Y9qoHKVDJaXZaH1deQhezypEuxL9IlGKgQ1RScwE9GQxohcldYcjGXGcr1nxiJPJVhkYrXaU9%2Fi0jnz4RdeKMaUuAJmrbdeHqtf%2F%2BDoxsoNZWRAEMfPm0%2F8C%2FV%2BldSu1AuFPDXj420pNs9pcVWpVi2h%2FlZCg%2B2E8qLQEnpZ9iJY%2FqhpHr38JVr36n8%3d)
