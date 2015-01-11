class Lawyer < User

  belongs_to :lawfirm
  has_many   :services

end