class User < ActiveRecord::Base
  validates :email, uniqueness: true, presence: true
  has_many :albums
  has_many :uploads, through: :albums

  def self.authenticate(email,password)
    user = User.where(email: email).first

    if user.password == password
      user
    else
      nil
    end
  end
end
