class CreateEmojis < ActiveRecord::Migration[6.0]
  def change
    create_table :emojis do |t|
      t.string :name
      t.string :image_url

      t.timestamps
    end
  end
end
