require_relative "user"

class Seller < User #Userクラスを継承している
  def initialize(name) #初期化メソッド。nameを引数としている
    super(name) #nameの役割は継承元のメソッドをそのまま使用する。->Userクラス
    # superの役割について確認したい場合は[https://diver.diveintocode.jp/curriculums/2360]のテキストを参考にしてください。
  end

end
