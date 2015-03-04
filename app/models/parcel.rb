class Parcel < ActiveRecord::Base
  belongs_to :service
  has_and_belongs_to_many :title_abstracts, through: :parcels_abstracts
end
