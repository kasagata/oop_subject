require_relative "item_manager"
require_relative "wallet"

class User
  include ItemManager #モジュールの組み込み。

  attr_accessor :name
  attr_reader :wallet

  def initialize(name) #初期化メソッド。nameを引数とする。
    @name = name #インスタンス変数。nameの値を入れる。
    @wallet = Wallet.new(self) #このselfはメソッド自身を指すので、nameをWalletインスタンスに引数として返している（はず）
    # UserインスタンスまたはUserを継承したクラスのインスタンスは生成されると、自身をオーナーとするウォレットを持ちます。
  end

end
