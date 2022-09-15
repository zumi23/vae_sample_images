class Pokemon < ApplicationRecord
  validates :type2_id, presence: true, allow_nil: true
  validates :egg2_id, presence: true, allow_nil: true
end
