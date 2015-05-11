

class ServiceForm < Reform::Form

  reform_2_0

  model :service

  property :project_id

  properties :request, :lease_number, :state, :county, :description,
             :lease_id,  :requested_delivery, :servicer

  collection :documents, populate_if_empty: Document do

    properties :name, :file_type, :document_path, :url, :user_id,
               :service_id, :lease_id, :file_name, :doc_type, :doc_comment,
               :doc, :groupdocs_guid, :groupdocs_thumbnail, :deed_id,
               :title_abstract_id, :project_id
  end


end
