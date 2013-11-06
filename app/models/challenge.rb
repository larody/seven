class Challenge < ActiveRecord::Base
  has_and_belongs_to_many :users
  attr_accessible :end_date, :name, :quota, :reward, :start_date, :status
end
