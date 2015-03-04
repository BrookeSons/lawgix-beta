class DeedTitleAbstract < ActiveRecord::Base

  belongs_to :deed
  belongs_to :title_abstract

end