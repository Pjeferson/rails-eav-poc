class Fact < ApplicationRecord
  has_many :fact_values
  has_many :customers, through: :fact_values

  def number?
    data_type == 'number'
  end
end
