class Owner < Contact

  belongs_to :project 
  belongs_to :lease
  belongs_to :sub_parcel
  belongs_to :service
 
end
