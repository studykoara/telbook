class CreateTelephones < ActiveRecord::Migration[5.2]
  def change
    create_table :telephones do |t|
      t.references :friend, null: false # 外部キー
      t.string :number
      t.boolean :cellphone, null: false, default: false

      t.timestamps
    end
  end
end
