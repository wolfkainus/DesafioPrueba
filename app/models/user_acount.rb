class UserAcount < ActiveRecord::Base
  belongs_to :user
  belongs_to :acount
end
