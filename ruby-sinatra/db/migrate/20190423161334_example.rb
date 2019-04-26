# https://edgeguides.rubyonrails.org/active_record_migrations.html

class Example < ActiveRecord::Migration[5.2]
  def change
    t.string :example_column
  end
end
