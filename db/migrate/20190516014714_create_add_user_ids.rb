class CreateAddUserIds < ActiveRecord::Migration[5.2]
  def change
    create_table :add_user_ids do |t|
      add_column :tweets, :user_id, :integer
      t.timestamps
    end
  end
end
