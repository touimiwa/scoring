class CreateFoots < ActiveRecord::Migration[6.0]
  def change
    create_table :foots do |t|
      t.string     :ateam,         null: false
      t.integer    :ascore_id,     null: false
      t.string     :bteam,         null: false
      t.integer    :bscore_id,     null: false
      t.string     :one_member,     null: false
      t.string     :two_member,     null: false
      t.string     :three_member,   null: false
      t.string     :four_member,    null: false
      t.string     :five_member,    null: false
      t.string     :six_member,     null: false
      t.string     :seven_member,   null: false
      t.string     :eight_member,   null: false
      t.string     :nine_member,    null: false
      t.string     :ten_member,     null: false
      t.string     :eleven_member,  null: false
      t.string     :aone_member,    null: false
      t.string     :atwo_member,    null: false
      t.string     :athree_member,  null: false
      t.string     :afour_member,   null: false
      t.string     :afive_member,   null: false
      t.string     :asix_member,    null: false
      t.string     :aseven_member,  null: false
      t.string     :aeight_member,  null: false
      t.string     :anine_member,   null: false
      t.string     :aten_member,    null: false
      t.string     :aeleven_member, null: false
      t.references :user,          null: false, foreign_key: true
      t.timestamps
    end
  end
end
