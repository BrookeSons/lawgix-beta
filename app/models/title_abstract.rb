
class TitleAbstract < ActiveRecord::Base

  has_and_belongs_to_many :deeds, through: :deeds_abstracts
  has_and_belongs_to_many :parcels, through: :parcels_abstracts
  has_and_belongs_to_many :lawyers, through :users_abstracts
  has_and_belongs_to_many :abstractors, through: :users_abstracts
  accepts_nested_attributes_for :deeds
  accepts_nested_attributes_for :parcels
end
