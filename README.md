# はじめに

このrepositoryはvagrant用に作成したchef-soloのprojectです。適宜、git cloneして、vagrant-cookbooks directoryに対するシンボリックリンクをVagrantfileのあるdirectory内にcookbooksの名前で作成すれば動きます。(cookbooks以外の名前でもOKですが、その場合はVagrantfileで明示的に指定する必要があります。)
http://docs.vagrantup.com/v2/provisioning/chef_solo.html

※ 今回のchef-soloレシピは超絶シンプルなものなので、data_bagsとか使ってませんので、基礎から学びたい人は書籍での学習をオススメします。

# Vagrantfileの書き方

Vagrantfileで以下のように記述すれば、run_listで指定したrecipeが実行されるでしょう。

```
  config.vm.provision :chef_solo do |chef|
    chef.run_list = ["vagrant_book","timezone","basics","zsh","vim"]
  end
```

recipeは以下のコマンドを打てば実行されます。

```
$ vagrant provision
```


# recipeの書き方

詳細は、別途、書籍等を参照ください。最低限、recipes以下に実行内容を記述した default.rb を用意すれば動くはずです。設定ファイル等はtemplates以下にerb形式で作成できます。

```zshのrecipeのdirectory構成
$ tree zsh
zsh
├── recipes
│   └── default.rb
└── templates
    └── default
        └── zshrc.erb
```
