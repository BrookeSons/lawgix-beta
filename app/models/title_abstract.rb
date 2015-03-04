class TitleAbstract < ActiveRecord::Base


  has_many :deed_title_abstracts
  has_many :deeds, through: :deed_title_abstracts
  accepts_nested_attributes_for :deeds


  has_and_belongs_to_many :parcels, through: :parcels_title_abstracts
  has_and_belongs_to_many :lawyers, through: :users_title_abstracts
  has_and_belongs_to_many :abstractors, through: :users_title_abstracts
  accepts_nested_attributes_for :parcels
end
