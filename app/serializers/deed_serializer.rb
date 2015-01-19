class DeedSerializer < ActiveModel::Serializer
  attributes :id, :db, :db_page, :d_date, :grantor, :grantee, :d_type, :comments, :"d-image"
end
