class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :name
      t.string :screen_name
      t.string :oauth_token

      t.timestamps
    end
  end
end
