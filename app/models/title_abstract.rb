
class TitleAbstract < ActiveRecord::Base

  has_many :deeds
  belongs_to :lawyer
  belongs_to :abstractors
  accepts_nested_attributes_for :deeds
end
