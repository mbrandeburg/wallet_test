class CreateArticles < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :title
    end
  end
end
