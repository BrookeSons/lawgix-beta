class Client < Company
  has_many :employees
  has_many :projects
end
