class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :token 

  def token 
    @intance_options[:token]
  end
end
