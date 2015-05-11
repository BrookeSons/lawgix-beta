class LeaseForm < Reform::Form


  model :lease

  properties :lease_number, :lessee, :description, :comments, :user_id, :service_id,
             :county, :state, :start_date, :end_date, :project_id


  collection :lessors

  collection :parcels

  collection :documents, prepopulate: -> (*) { Document.new } do

    properties :name, :file_type, :document_path, :url, :user_id,
               :service_id, :lease_id, :file_name, :doc_type, :doc_comment,
               :doc, :groupdocs_guid, :groupdocs_thumbnail, :deed_id,
               :title_abstract_id, :project_id
  end

end
