class ServiceCreator

  attr_accessor :lease_number, :lessee_last_name, :service

  def initialize(lease_number: "",lessee_last_name: "")
    @lease_number = lease_number
    @lessee_last_name = lessee_last_name
  end

  def build
    self.service = Service.new(lease_number: lease_number, lessee_last_name: lessee_last_name)
  end

end