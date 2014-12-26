class Lessee < Contact

  include Virtus.model
  belongs_to :service
  belongs_to :lease

end
