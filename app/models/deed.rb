class Deed < ActiveRecord::Base

  has_many :deed_title_abstracts
  has_many :title_abstracts, through: :deed_title_abstracts
  has_one  :document
end
