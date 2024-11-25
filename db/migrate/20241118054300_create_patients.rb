class CreatePatients < ActiveRecord::Migration[7.2]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.integer :blood_group, default:0
      t.integer :gender, default:0
      t.string :mobile_number
      t.string :occupation
      t.integer :marital_status, default:0
      t.integer :weight
      t.integer :height
      t.text :diagnosis
      t.string :op_number

      t.timestamps
    end
  end
end
