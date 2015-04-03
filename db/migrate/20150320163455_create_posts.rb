class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :title, :string
      t.column :date, :string
      t.column :content, :string
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
