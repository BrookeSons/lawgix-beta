class ServiceDispatcher < ActiveRecord::Base

  # Form object to display and transition states at the Service Request Level


  attr_reader :service

  def initialize
    @service = service
  end

  def receive
    service.transition_to(:received)
  end









end
