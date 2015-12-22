class Client < ActiveRecord::Base

  enum status: [:aldía, :moroso, :suspendido, :debaja]
  def default_role
    self.role ||= 0
  end

end
