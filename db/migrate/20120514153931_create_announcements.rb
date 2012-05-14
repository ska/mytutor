class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.integer :user_id
      t.string :title
      t.integer :postcode
      t.string :town
      t.string :province

      t.timestamps
    end
  end
end
