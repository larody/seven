class Challenge < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :dones
  attr_accessible :end_date, :name, :quota, :reward, :start_date, :status

  validates :name,
    presence: true,
    length: { maximum: 30 }

  validates :status,
    presence: true,
    numericality: { only_integer: true, greater_than: -1, less_than: 3 },
    length: { maximum: 1 }

  validates :start_date,
    presence: true
    #NOT past

  #validates :end_date,
    #NOT past

  validates :quota,
    presence: true,
    numericality: { only_integer: true, greater_than: 0, less_than: 100 },
    length: { maximum: 2 }

  validates :reward,
    length: { maximum: 30 }
end
