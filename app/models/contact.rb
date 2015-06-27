class Contact < ActiveRecord::Base
  belongs_to :project
  belongs_to :lease
  belongs_to :service
  belongs_to :sub_parcel
end
 
