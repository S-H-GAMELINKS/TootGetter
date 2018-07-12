class AddColumnsToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :private, :boolean, default: false, null: false
  end
end
