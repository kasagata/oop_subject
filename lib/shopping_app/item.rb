require_relative "ownable"

class Item
  attr_reader :name, :price
  include Ownable

  @@instances = [] 

  def initialize(name, price, owner=nil) #初期化インスタンス。name、price、オーナーが引数
    @name = name
    @price = price
    self.owner = owner

    # Itemインスタンスの生成時、そのItemインスタンス(self)は、@@insntancesというクラス変数に格納されます。
    @@instances << self
  end

  def label
    { name: name, price: price }
  end

  def self.all
    #　@@instancesを返します ==> Item.allでこれまでに生成されたItemインスタンスを全て返すということです。
    @@instances
  end

end