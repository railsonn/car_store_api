class User < ApplicationRecord
    rolify

    has_secure_password
    has_many :cars, dependent: :destroy

    after_commit :assign_default_role, on: :create

    private

    def assign_default_role
        if User.count == 1
            add_role :admin
        else
            add_role :seller
        end
    end
end
