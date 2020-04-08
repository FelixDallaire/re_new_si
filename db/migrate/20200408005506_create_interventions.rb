class CreateInterventions < ActiveRecord::Migration[5.2]
  def change
    create_table :interventions do |t|
      t.string :Author, null: false
      t.integer :CustomerID, null: false
      t.integer :BuildingID, null: false
      t.integer :BatteryID
      t.integer :ColumnID
      t.integer :ElevatorID
      t.integer :EmployeeID
      t.datetime :Date_start
      t.datetime :Date_end
      t.string :Résultat
      t.string :Rapport
      t.string :Statut

      t.timestamps
    end
  end
end
