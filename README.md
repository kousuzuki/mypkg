# mypkg


## mainブランチについて

* このブランチのプログラムは、数が０から加算されていき、１５を超えると数がリセットされる様子を表示するものです。

## 機能概要

-`talker.py`: ROS2ノードで０から数を加算し`countup`トピックにパブリッシュします。
-`listener.py`: ROS"ノードで、`countup`トピックの数をサブスクライブし、表示します。


# インストール方法
* ご自身の環境で以下を入力

```
git clone git@github.com:kousuzuki/mypkg1.git
```

# ビルド方法
```
$ cd ~/ros2_ws
$ git switch -f main
$ colcon build
```

## 使用例

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
[listener-2] [INFO] [1703352543.503247298] [listener]: Listen: 12
[listener-2] [INFO] [1703352544.042768886] [listener]: Listen: 13
[listener-2] [INFO] [1703352544.507743877] [listener]: Listen: 14
[listener-2] [INFO] [1703352545.009457874] [listener]: Listen: 15
[listener-2] [INFO] [1703352545.520328010] [listener]: Listen: 0
[listener-2] [INFO] [1703352546.005170934] [listener]: Listen: 1
[listener-2] [INFO] [1703352546.515884687] [listener]: Listen: 2
[listener-2] [INFO] [1703352547.013744704] [listener]: Listen: 3
...
```

## ノードとトピックについて

* /talkerのノードから加算されたｎの値がトピックである/chatterによって/listenerに送信されている。

## 必要なソフトウェア

* Python 
* テスト済み: 3.8.10

## テスト環境

* GitHub Actions

* Ubuntu 20.04

* Python 3.8.10

## ライセンス

* このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです。
  * [ryuichiueda/my_slides robosys_2023](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)

* このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
* ©　2023　Kou Suzuki
