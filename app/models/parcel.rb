class Parcel < ActiveRecord::Base
  belongs_to :service
  has_one :title_abstract, foreign_key: :parcel_id
end
