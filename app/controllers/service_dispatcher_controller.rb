class ServiceDispatcherController < ApplicationController



  def new
    @accepted = Service.in_state('fee_accepted')
    @abstractors = Abstractor.all
  end




end