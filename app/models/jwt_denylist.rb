class JwtDenylist < ApplicationRecord
  # app/models/jwt_denylist.rb
  class JwtDenylist < ApplicationRecord
    include Devise::JWT::RevocationStrategies::Denylist

    self.table_name = 'jwt_denylists'
  end
end
