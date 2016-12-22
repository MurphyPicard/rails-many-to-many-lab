class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      # t.integer :doctor_id
      # t.integer :patient_id
      t.references :doctor, index: true, foreign_key: true
      t.references :patient, index: true, foreign_key: true

      t.string :ailment
      t.datetime :appt_datetime

      t.timestamps null: false
    end
  end
end
