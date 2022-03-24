class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest
      t.string :remember_digest
      t.boolean :admin, default: false
      t.string :department
      t.string :user_details
      t.integer :employee_number
      t.integer :uid
      t.datetime :basic_time, null: false, default: Time.current.change(hour: 8, min: 0, sec: 0)
      t.datetime :working_time, null: false, default: Time.current.change(hour: 7, min: 30, sec: 0)
      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end

# rm db/development.sqlite3
# bin/rails db:create db:migrate
