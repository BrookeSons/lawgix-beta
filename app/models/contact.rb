class Contact < ActiveRecord::Base

  belongs_to :service
  belongs_to :lease

  delegate :Lessees,  to: :contacts



end

