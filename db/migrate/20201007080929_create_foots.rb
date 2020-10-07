class CreateFoots < ActiveRecord::Migration[6.0]
  def change
    create_table :foots do |t|
      t.string     :ateam,         null: false
      t.integer    :ascore_id,     null: false
      t.string     :bteam,         null: false
      t.integer    :bscore_id,     null: false
      t.references :user,          null: false, foreign_key: true
      t.timestamps
    end
  end
end
