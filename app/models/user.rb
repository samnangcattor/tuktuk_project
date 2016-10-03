class User < ActiveRecord::Base
  ROLES = %i[admin simple guest]

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  has_many :carts

  def roles= roles
    roles = [*roles].map { |r| r.to_sym }
    self.role = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
  end

  def roles
    ROLES.reject do |r|
      ((role.to_i || 0) & 2**ROLES.index(r)).zero?
    end
  end

  def has_role? role
    roles.include?(role)
  end
end
