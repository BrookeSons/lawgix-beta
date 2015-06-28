class Contact < ActiveRecord::Base
  belongs_to :project
  belongs_to :lease
  belongs_to :service
  belongs_to :parcel


   def name
     [first_name, last_name].compact.join(' ')
   end

end
 
