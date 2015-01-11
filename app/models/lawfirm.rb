class Lawfirm < ActiveRecord::Base
  has_many :lawyers
  has_many :services
  has_many :flows

end
