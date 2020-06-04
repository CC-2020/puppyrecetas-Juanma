class Cliente < ApplicationRecord
  has_secure_password
  validates :mail, presence: true, uniqueness: true
end
