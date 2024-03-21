class User < ApplicationRecord
  class Error < StandardError
  end

  after_destroy :ensure_an_admin_remains

  has_secure_password

  private

  def ensure_an_admin_remains
    raise Error.new "Can't delete last user" if User.count.zero?
  end
end
