class Document < ActiveRecord::Base

  belongs_to :service
  has_many :user_documents
  has_many :users, through: :user_documents
  belongs_to :lease

end
