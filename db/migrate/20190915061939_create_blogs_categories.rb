class CreateBlogsCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs_categories, id: false do |t|
      t.references :blog, foreign_key: true, null: false
      t.references :category, foreign_key: true, null: false
    end
  end
end
