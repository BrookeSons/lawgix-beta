
class TitleAbstract < ActiveRecord::Base

  has_many :deeds
  belongs_to :lawyer
  belongs_to :abstractor
end
