class Session < ApplicationRecord

  before_create do
    self.key = SecureRandom.hex(50)
  end

  belongs_to :user
  
  serialize :content
end
