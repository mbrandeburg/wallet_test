class AddDescriptionToArticles < ActiveRecord::Migration
  def change 
    add_column :accounts, :description, :text
    add_column :accounts, :created_at, :datetime
    add_column :accounts, :updated_at, :datetime
    # see how each column, you use the table name, column title, type of info (string, timestamp, etc.)
    # and check schema.rb to see that it updated  
  end
end
