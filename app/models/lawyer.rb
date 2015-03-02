class Lawyer < User

  belongs_to :lawfirm
  has_and_belongs_to_many  :services , through: :services_users
  has_many   :title_abstracts
end