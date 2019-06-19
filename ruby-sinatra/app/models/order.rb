class Order < ActiveRecord::Base
  # Empty model to show ActiveRecord presence

  def name_id
    strain + id.to_s
  end
end
