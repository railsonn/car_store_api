class CarSerializer < ActiveModel::Serializer
  attribute :model, key: :modelo
  attribute :price, key: :preco, method: :price
  attribute :id, key: :identificador

  def price
    "R$ #{'%.2f' % object.price}"
  end
end
