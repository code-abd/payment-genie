class User < ApplicationRecord
  # Devise modules
  devise :database_authenticatable,
         :registerable,
         :jwt_authenticatable,
         :validatable,
         jwt_revocation_strategy: self  # we'll use the simplest strategy

  include Devise::JWT::RevocationStrategies::JTIMatcher
  before_create :set_jti

  private

  def set_jti
    self.jti ||= SecureRandom.uuid
  end
end
