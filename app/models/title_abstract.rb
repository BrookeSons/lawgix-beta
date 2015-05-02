class TitleAbstract < ActiveRecord::Base

  has_many :deed_title_abstracts
  has_many :deeds, through: :deed_title_abstracts
  accepts_nested_attributes_for :deeds
  has_and_belongs_to_many :abstractors, through: :title_abstracts_users
  has_many :documents
  accepts_nested_attributes_for :documents
  belongs_to :parcel
  belongs_to :project

 belongs_to :deed

end
