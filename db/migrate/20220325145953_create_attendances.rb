class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.date :worked_on
      t.datetime :started_at
      t.datetime :finished_at
      t.datetime :green_time
      t.string :reason
      t.references :user, foriegn_key: true

      t.timestamps
    end
  end
end

# rm db/development.sqlite3
# bin/rails db:create db:migrate
