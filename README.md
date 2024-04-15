trial-python
============

環境設定
--------

### pythonインストール（オンライン）

オンライン環境で以下のコマンドを実行する。

```sh
$ ./python/install.sh
```

* python/venvにpython仮想環境を作成する。
* python仮想環境にパッケージをインストールする。
  * requiments.in.txtに記述したパッケージをインストールする。
  * 依存関係含めてインストールした全てのパッケージをrequirements.txtに記録する。
* requirements.txt
* python仮想環境にインストールしたパッケージをダウンロードする。


### pythonインストール（オフライン）

オンライン環境でインストールを行った環境で以下のコマンドを実行し、
インストールパッケージをダウンロード済みのアーカイブを作成する。

```sh
$ ./bin/make-archive.sh
```

上記で作成したアーカイブをオフライン環境に展開し、以下のコマンドを実行する。

```sh
$ ./python/offline-install.sh
```

* python/venvにpython仮想環境を作成する。
* python仮想環境にパッケージをインストールする。
  * requirements.txtに記述したパッケージをpython/wheelsディレクトリ内のwhlからインストールする。


操作
----

作業用シェルを起動する。

```sh
$ ./bin/shell.sh
```

jupyter-notebookを起動する。

```sh
$ ./bin/run-notebook.sh
```
