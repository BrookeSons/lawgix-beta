class ServiceDispatcher

  include ActiveModel::Model

  # Form object to display and transition states at the Service Request Level
   att_accessor :service, :abstractor


 def initialize
  @accepted = Service.in_state('fee_accepted')
  @abstractors = Abstractor.all
 end

  def get_abstractor

  end

  def get_lawyer

  end

end

