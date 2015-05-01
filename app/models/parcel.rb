class Parcel < ActiveRecord::Base
  belongs_to :service
  belongs_to :lease
  has_one :title_abstract
  belongs_to :project
end
