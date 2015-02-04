
class TitleAbstract < ActiveRecord::Base

  has_many :deeds
  belongs_to :lawyer
  belongs_to :abstractor
  accepts_nested_attributes_for :deeds
end
