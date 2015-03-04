class Deed < ActiveRecord::Base

  has_and_belongs_to_many :title_abstracts, through: :deeds_abstracts

end
