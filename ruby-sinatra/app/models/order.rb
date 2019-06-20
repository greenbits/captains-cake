class Order < ActiveRecord::Base
  def name_id
    strain + id.to_s
  end
end
