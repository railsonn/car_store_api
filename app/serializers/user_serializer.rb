class UserSerializer < ActiveModel::Serializer
  attributes :id, :email


  def token 
    @intance_options[:token]
  end
end
