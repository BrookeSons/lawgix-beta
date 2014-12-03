class Service

  attr_accessor :flows

  def initialize
    @flows = []
  end

  def done?
  flows.reject(&:complete?).empty?
  end
end