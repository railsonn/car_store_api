class UserSerializer < ActiveModel::Serializer
  attribute :id, key: :identificador
  attribute :email
  attribute :created_at, key: :data_criacao

  def email 
    name, domain = object.email.split("@")
    "#{name[0..2]}***@#{domain}"
  end
  

  def token 
    @intance_options[:token]
  end
end
