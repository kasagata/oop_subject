require_relative "ownable"

#このクラスでは作られたUserに対してWalletを与えるクラスを定義している
class Wallet #Walletクラスを定義。
  include Ownable #Ownableモジュールを組み込む
  attr_reader :balance

  def initialize(owner) #初期化メソッド。ownerを引数とする。
    self.owner = owner
    @balance = 0 #お財布の中身？
  end

  def deposit(amount) #入金メソッド。amountを引数として@balanceに追加する。shopping_app.rbの21行目
    @balance += amount.to_i
  end

  def withdraw(amount) #出金メソッド。amountを引数として@balanceに引き算する
    return unless @balance >= amount
    @balance -= amount.to_i
    amount
  end

end