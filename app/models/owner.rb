class Owner < Contact

  belongs_to :project 
  belongs_to :lease
  belongs_to :parcel 
  belongs_to :service




  def name_parcel

  end
end
