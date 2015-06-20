class Contact < ActiveRecord::Base
  belongs_to :project
  belongs_to :lease
  belongs_to :service
  has_and_belongs_to_many
end
 
