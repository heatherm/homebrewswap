class Account < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :account_roles
  has_many :roles, through: :account_roles
  has_many :beers

  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 3 }, if: :password_required?

  attr_writer :password_required

  def password_required?
    @password_required
  end

  def authenticate(password)
    # Passing email is a bit strange, but sorcery doesn't
    # provide a way to ask an instance whether a password is valid
    self.class.authenticate(email, password)
  end
end
