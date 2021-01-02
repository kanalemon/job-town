class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :campany
      t.string :department
      t.string :industry
      t.string :occupation
      t.string :description
      t.string :skill
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
