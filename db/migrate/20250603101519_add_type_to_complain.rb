class AddTypeToComplain < ActiveRecord::Migration[8.0]
  def change
    add_column :complains, :complain_type, :integer, default: 0
  end
end
