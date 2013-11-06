class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :email, :string, null: false, uniqueness: true

      t.timestamps
    end
  end
end
