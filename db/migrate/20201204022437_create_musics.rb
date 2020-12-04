class CreateMusics < ActiveRecord::Migration[6.0]
  def change
    create_table :musics do |t|
      t.string     :title,        null: false
      t.string     :artist,       null: false
      t.string     :audio,        null: false
      t.text       :introduction, null: false
      t.references :user,         foreign_key: true
      t.timestamps
    end
  end
end
