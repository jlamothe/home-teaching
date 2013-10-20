class FixFamilies < ActiveRecord::Migration
  def change
    add_column :families, :companionship_id, :integer, null: false, default: 0
  end
end
