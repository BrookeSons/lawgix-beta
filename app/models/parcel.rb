class Parcel < ActiveRecord::Base
  belongs_to :service
  belongs_to :lease
  belongs_to :title_abstract
end
