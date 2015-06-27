class Parcel < ActiveRecord::Base
  belongs_to :service
  belongs_to :lease
  has_one :title_abstract
  belongs_to :project
  has_many :owners
  accepts_nested_attributes_for :owners
  has_many :sub_parcels
  accepts_nested_attributes_for :sub_parcels 
end
