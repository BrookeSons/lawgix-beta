class Parcel < ActiveRecord::Base
  belongs_to :service
  has_many :title_abstracts
end
