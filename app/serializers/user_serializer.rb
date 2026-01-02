class UserSerializer < ActiveModel::Serializer
  attributes :id, :token 

  def token 
    @intance_options[:token]
  end
end
