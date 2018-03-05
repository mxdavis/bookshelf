class User < ApplicationRecord

  has_secure_password

  has_many :sessions

  def role
    return :superadmin if self.is_superadmin?
  end
end
