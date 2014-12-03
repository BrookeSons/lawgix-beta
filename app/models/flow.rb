class Flow < ActiveRecord::Base

 belongs_to :service

  def mark_completed(date = nil)
    self.completed_at = (date || Time.current)
  end

  def complete?
    completed_at.present?
  end

end
