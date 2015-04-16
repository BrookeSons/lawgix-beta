class Document < ActiveRecord::Base

  belongs_to :service
  has_many :user_documents
  has_and_belongs_to_many :users, through: :user_documents
  belongs_to :lease
  belongs_to :deed
  mount_uploader :doc, DocUploader
end
