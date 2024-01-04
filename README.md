# mypkg
[![test](https://github.com/kousuzuki/mypkg/actions/workflows/test.yml/badge.svg)](https://github.com/kousuzuki/mypkg/actions/workflows/test.yml)
* このレポジトリは、ROS2のパッケージであり、数が０から加算されていき、１５を超えると数がリセットされる様子を表示するものです。
* このレポジトリを使用するためには、ROS2をインストールしている必要があります。

## 機能概要

* `talker.py`: ROS2ノードで０から数を加算し`countup`トピックにパブリッシュします。
* `listener.py`: ROS2ノードで、`countup`トピックの数をサブスクライブし、表示します。

# インストール方法
1. 各自のROS2ワークスペースに移動。
2. 以下のコマンドでこのパッケージをダウンロードします。
`git clone https://github.com/kousuzuki/mypkg`
3. ROS2ワークスペース内で、以下のコマンドでビルドします。
`colcon build`
4.以下のコマンドで設定を読み込みます。
`source ~/.bashrc`

## 使用例

* 使用例１
```
$ cd ~/ros2_ws
$ ros2 launch mypkg talk_listen.launch.py
[INFO] [launch]: All log files can be found below /home/kou0123/.ros/log/2023-12-24-02-28-56-704732-k-suzuki-15087
[INFO] [launch]: Default logging verbosity is set to INFO
[INFO] [talker-1]: process started with pid [15089]
[INFO] [listener-2]: process started with pid [15091]
[listener-2] [INFO] [1703352537.519116235] [listener]: Listen: 0
[listener-2] [INFO] [1703352538.005528543] [listener]: Listen: 1
[listener-2] [INFO] [1703352538.527106489] [listener]: Listen: 2
[listener-2] [INFO] [1703352539.004745928] [listener]: Listen: 3
[listener-2] [INFO] [1703352539.524545448] [listener]: Listen: 4
[listener-2] [INFO] [1703352540.004522971] [listener]: Listen: 5
[listener-2] [INFO] [1703352540.520453932] [listener]: Listen: 6
[listener-2] [INFO] [1703352541.003844560] [listener]: Listen: 7
[listener-2] [INFO] [1703352541.526238781] [listener]: Listen: 8
[listener-2] [INFO] [1703352542.004610471] [listener]: Listen: 9
[listener-2] [INFO] [1703352542.505095053] [listener]: Listen: 10
[listener-2] [INFO] [1703352543.004087262] [listener]: Listen: 11
...
```
* 使用例２
```
$ cd ~/ros2_ws
$ ros2 run mypkg talker
```
別のタブを開き、以下を入力。
```
$ cd ros2_ws
$ ros2 run mypkg listener
[INFO] [1704121421.713474311] [listener]: Listen: 2
[INFO] [1704121422.192245326] [listener]: Listen: 3
[INFO] [1704121422.693287011] [listener]: Listen: 4
[INFO] [1704121423.192960418] [listener]: Listen: 5
[INFO] [1704121423.691836270] [listener]: Listen: 6
[INFO] [1704121424.192520608] [listener]: Listen: 7
[INFO] [1704121424.693463419] [listener]: Listen: 8
[INFO] [1704121425.192570765] [listener]: Listen: 9
[INFO] [1704121425.692458278] [listener]: Listen: 10
[INFO] [1704121426.192763501] [listener]: Listen: 11
[INFO] [1704121426.692314310] [listener]: Listen: 12
[INFO] [1704121427.192241544] [listener]: Listen: 13
[INFO] [1704121427.692532513] [listener]: Listen: 14
[INFO] [1704121428.192149329] [listener]: Listen: 15
[INFO] [1704121428.691911273] [listener]: Listen: 0
[INFO] [1704121429.192582205] [listener]: Listen: 1
[INFO] [1704121429.692680293] [listener]: Listen: 2
...
```
## ノードとトピックについて

* /talkerのノードから加算されたｎの値が/chatterによってパブリッシュ、サブスクライブされ/listenerに送信されている。

## 必要なソフトウェア

* Python 
　* テスト済み: 3.8.10
* ROS2

## テスト環境

* GitHub Actions

* Ubuntu 20.04

* Python 3.8.10

* ROS2

## ライセンス

* このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです。
  * https://ryuichiueda.github.io/my_slides/robosys_2022/lesson8.html#/
  * https://ryuichiueda.github.io/my_slides/robosys_2022/lesson9.html#/
  * https://ryuichiueda.github.io/my_slides/robosys_2022/lesson10.html#/
  * https://ryuichiueda.github.io/my_slides/robosys_2022/lesson11.html#/

* このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
* ©　2023　Kou Suzuki
