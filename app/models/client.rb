class Client < User

  belongs_to :company
  has_many :services

end