class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :token

  def token 
    @intance_options[:token]
  end
end
