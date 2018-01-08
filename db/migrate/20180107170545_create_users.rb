class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.date :birthdate
      t.boolean :gender
      t.string :username
      t.string :email, null: false
      t.string :password_digest, null: false
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
