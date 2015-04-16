class Abstractor < User
  has_and_belongs_to_many :title_abstracts, through: :title_abstracts_users
  has_and_belongs_to_many :services, through: :services_users
end
