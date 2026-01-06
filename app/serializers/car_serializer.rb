class CarSerializer < ActiveModel::Serializer
  attribute :model, key: :modelo
  attribute :price, key: :preco, method: :price
  attribute :id, key: :identificador

  def price
    ActionController::Base.helpers.number_to_currency(
      object.price,
      unit: "R$",
      separator: ",",
      delimiter: "."
    )
  end
end
