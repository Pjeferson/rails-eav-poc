class Customer < ApplicationRecord
  has_many :fact_values
  has_many :facts, through: :fact_values
end
