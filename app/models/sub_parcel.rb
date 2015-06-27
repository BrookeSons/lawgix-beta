
class SubParcel < ActiveRecord::Base
  has_many :owners
  belongs_to :parcel

  accepts_nested_attributes_for :owners 
end
 
