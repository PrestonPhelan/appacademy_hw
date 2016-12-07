class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  validates :session_token, presence: true
  validates :password_digest, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }

  before_validation :ensure_session_token

  def self.find_by_credentials(username, password)
    User
      .where(username: username)
      .where(password: password).first
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64
  end

  attr_reader :password

  def reset_session_token!
    @session_token = User.generate_session_token
    self.save
  end

  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end

  def password=(pw)
    self.password_digest = BCrypt::Password.create(pw)
  end
end
