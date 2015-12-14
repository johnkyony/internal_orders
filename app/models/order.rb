class Order < ActiveRecord::Base
  belongs_to :department
  belongs_to :type
  belongs_to :user
end
