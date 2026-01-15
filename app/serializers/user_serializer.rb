class UserSerializer < ActiveModel::Serializer
  attribute :id, key: :identificador
  attribute :email, if: :user_logged_in?
  attribute :created_at, key: :data_criacao
  

  def user_logged_in?
    binding.irb
    @current_user.logged_in?
  end


  def email 
    name, domain = object.email.split("@")
    "#{name[0..2]}***@#{domain}"
  end

  def token 
    @intance_options[:token]
  end
end
