class CreateInsta < ActiveRecord::Migration
  def change
    create_table :insta do |t|
      t.string :title
      t.text :content
      t.timestamps null: false
    end
  end
end
