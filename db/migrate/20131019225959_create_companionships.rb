class CreateCompanionships < ActiveRecord::Migration
  def change
    create_table :companionships do |t|

      t.timestamps
    end
    add_column :users, :companionship_id, :integer
  end
end
