class Customer < ApplicationRecord
  has_many :fact_values
  has_many :facts, through: :fact_values

  def method_missing(method_name, *args, &block)
    if method_name[-1] == "="
      set_fact_value(method_name, *args)
    else
      get_fact_value(method_name)
    end
  end

  private

  def get_fact_value(method_name)
    fact = Fact.find_by(key: method_name)
    fact_value = FactValue.where(
      customer_id: self.id, 
      fact_id: fact.id
    ).first_or_create

    fact.number? ? fact_value.data.to_i : fact_value.data
  end
  
  def set_fact_value(method_name, *args)
    key = method_name[0..-2]

    fact = Fact.find_by(key: key)
    fact_value = FactValue.where(
      customer_id: self.id, 
      fact_id: fact.id
    ).first_or_create

    fact_value.update(data: args.first)
  end
end
