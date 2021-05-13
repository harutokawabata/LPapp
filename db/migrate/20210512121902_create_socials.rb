class CreateSocials < ActiveRecord::Migration[5.2]
  def change
    create_table :socials do |t|
      t.integer :snstype, default: 0
      t.string  :url
      t.integer :user_id
      t.timestamps
    end
  end
end
