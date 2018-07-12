class CreateToots < ActiveRecord::Migration[5.2]
  def change
    create_table :toots do |t|
      t.references :topic, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
