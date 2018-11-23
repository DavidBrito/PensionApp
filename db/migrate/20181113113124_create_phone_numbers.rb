class CreatePhoneNumbers < ActiveRecord::Migration
  def change
    create_table :phone_numbers do |t|
      t.references :owner,           references: :user, null: false
      t.string :phone_number,        null: false
    end
    
    add_index :phone_numbers, [:owner_id, :phone_number], unique: true

  end
end
