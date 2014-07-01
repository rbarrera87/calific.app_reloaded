# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :perfil do
    nombre "MyString"
    apellido_paterno "MyString"
    apellido_materno "MyString"
    numero_control "MyString"
    fecha_nacimiento "2014-02-24"
    estado_civil "MyString"
    sexo "MyString"
    cp 1
    curp "MyString"
    nss "MyString"
    rfc "MyString"
    telefono 1
    celular 1
    calle "MyString"
    numero_exterior "MyString"
    numero_interior "MyString"
    numero_departamento "MyString"
    referencias "MyString"
    comentarios "MyText"
    poblacion "MyString"
    estado "MyString"
    situacion "MyString"
    turno "MyString"
  end
end
