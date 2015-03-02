class Abstractor < User
  has_many :title_abstracts
  has_and_belongs_to_many :services, through: :services_users
end