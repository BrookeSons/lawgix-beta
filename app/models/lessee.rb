class Lessee < ActiveRecord::Base
  belongs_to :service
  belongs_to :lease
end
