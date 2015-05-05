module Forms
  class NewServiceForm < Reform::Form
    include ModelReflections
    include Composition

    model :service

    property :name, on: :project
    property :description, on: :project

  end
end