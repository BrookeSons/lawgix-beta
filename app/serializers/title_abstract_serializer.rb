class TitleAbstractSerializer < ActiveModel::Serializer
  attributes :id, :name, :due_date, :comments
end
