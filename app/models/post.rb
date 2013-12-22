class Post < ActiveRecord::Base
  attr_accessible :name, :brand, :phone, :model, :problem, :result, :id, :username, :user_id
 # belongs_to :user

end
