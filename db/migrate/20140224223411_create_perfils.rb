class CreatePerfils < ActiveRecord::Migration
  def change
    create_table :perfils do |t|
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :numero_control
      t.date :fecha_nacimiento
      t.string :estado_civil
      t.string :sexo
      t.integer :cp
      t.string :curp
      t.string :nss
      t.string :rfc
      t.integer :telefono
      t.integer :celular
      t.string :calle
      t.string :numero_exterior
      t.string :numero_interior
      t.string :numero_departamento
      t.string :referencias
      t.text :comentarios
      t.string :poblacion
      t.string :estado
      t.string :situacion
      t.string :turno

      t.timestamps
    end
  end
end
