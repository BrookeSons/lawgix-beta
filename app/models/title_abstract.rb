class TitleAbstract < ActiveRecord::Base


  has_many :deed_title_abstracts
  has_many :deeds, through: :deed_title_abstracts
  accepts_nested_attributes_for :deeds

  has_one :title_abstract
end
