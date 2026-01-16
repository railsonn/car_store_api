class User < ApplicationRecord
    rolify

    has_secure_password
    has_many :cars, dependent: :destroy

    after_create :assign_default_role

    private 

    def assign_default_role
        self.add_role(:admin) if User.count == 0 
        if User.count > 0
            self.add_role(:user)
        end
    end
end
