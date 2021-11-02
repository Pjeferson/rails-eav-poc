class FactValue < ApplicationRecord
  belongs_to :customer
  belongs_to :fact
end
