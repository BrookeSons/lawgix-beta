class Owner < Contact

  belongs_to :project 
  belongs_to :lease
  belongs_to :parcel 
  belongs_to :service




  def name
    [first_name, last_name].compact.join(' ')
  end
 
  def name_parcel
    
  end
end
