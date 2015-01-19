class Lawyer < User

  belongs_to :lawfirm
  has_many   :services
  has_many   :title_abstracts
end