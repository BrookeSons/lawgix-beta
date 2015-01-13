class Employee < User

  belongs_to :company
  has_many :services

end