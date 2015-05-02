class Contact < ActiveRecord::Base
  belongs_to :project
  belongs_to :lease
  belongs_to :service
end
