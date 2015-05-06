  class ProjectForm < Reform::Form

    model :project

    properties :name, :description
    validates  :name, presence: true
    validates  :description, presence: true
  end
