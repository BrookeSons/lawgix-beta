class Lessee < Contact

  scope :lessees, -> {where(type: 'Lessee')}

end