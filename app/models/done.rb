class Done < ActiveRecord::Base
  belongs_to :user
  belongs_to :challenge
  attr_accessible :user_id, :challenge_id, :done_date
end
