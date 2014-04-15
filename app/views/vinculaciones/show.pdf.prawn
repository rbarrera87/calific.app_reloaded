#Este es el codigo necesario para generar el reporte de los alumnos
  #En este caso, como una carta de Asignacion de estadia
   
  %w[b].each do |n1|
  text "<#{n1}>DEPENDENCIA:</#{n1}> " +
  " Dirección de vinculación", align: :right,
  :inline_format => true
  text "<#{n1}>No. de OFICIO:</#{n1}> " + " VIN-01914", align: :right,
  :inline_format => true
  text "<#{n1}>ASUNTO:</#{n1}> " +
  " Asignación y Compromisos de Estadía", align: :right,
  :inline_format => true

  move_down 20
  text "Izúcar de Matamoros, Pue; a 30 de Enero de 2014", align: :right
  move_down 20
  text "<#{n1}>MIA #{@vinculacion.nombre_director}</#{n1}>", :inline_format => true
  text "<#{n1}>DIRECTORA DEL PROGRAMA EDUCATIVO DE #{@vinculacion.carrera.nombre}</#{n1}>", :inline_format => true
  text "<#{n1}>UNIVERSIDAD TECNOLÓGICA DE IZÚCAR DE MATAMOROS</#{n1}>", :inline_format => true
  text "<#{n1}>IZÚCAR DE MATAMOROS, PUE.</#{n1}>", :inline_format => true
  text "<#{n1}>PRESENTE:</#{n1}>", :inline_format => true

 
  move_down 30
  text "La Dirección de Vinculación de esta Universidad, tiene a bien asignar al <#{n1}> T.S.U #{@vinculacion.perfil.nombre} </#{n1}> del Programa Educativo <#{n1}> #{@vinculacion.carrera.nombre} </#{n1}> con Número de control <#{n1}> #{@vinculacion.perfil.numero_control} </#{n1}> para que realice su Estadía Técnica en el programa <#{n1}> #{@vinculacion.nombre_proyecto}. </#{n1}> que inicia con fecha <#{n1}>#{@vinculacion.fecha_inicio}</#{n1}> y tendrá una duración de 13 semanas en el horario establecido por Ustedes.", align: :justify, :inline_format => true, :indent_paragraphs => 30

  move_down 30

  text "De acuerdo con lo antes mencionadio firman de conformidad."


  end


  pdf.repeat(:all) do
  pdf.stroke do
    pdf.horizontal_line 0, 540, :at => 10
  end
  move_down 50

  y_position = cursor
  bounding_box([0, y_position], :width => 200) do
  stroke_horizontal_rule
  move_down 2
  text "ASESOR EXTERNO ", align: :center
  transparent(0.0) { stroke_bounds }
  end
  bounding_box([300, y_position], :width => 200) do
  stroke_horizontal_rule
  move_down 2
  text "ASESOR INTERNO", align: :center

  transparent(0.0) { stroke_bounds }
  end
  move_down 80

  y_position = cursor
  bounding_box([0, y_position], :width => 200) do
  stroke_horizontal_rule
  move_down 2
  text "ALUMNO", align: :center
  transparent(0.0) { stroke_bounds }
  end
  bounding_box([300, y_position], :width => 200) do
  stroke_horizontal_rule
  move_down 2
  text "DPTO. PRACTICAS Y ESTADIAS", align: :center

  transparent(0.0) { stroke_bounds }
  end

  move_down 40

  bounding_box([150, cursor - 100], :width => 200) do
  stroke_horizontal_rule
  move_down 2
  text "DIRECTORA DE VINCULACION", align: :center
  transparent(0.0) { stroke_bounds }
  end

  pdf.image "app/assets/images/logo.jpg", :at => [pdf.bounds.right - 500, 730], :align => :left, :width => 80
  # pdf.number_pages "<page> in a total of <total>", :start_count_at => 0, :page_filter => :all, :at => [pdf.bounds.right - 100, 0], :align => :right, :size => 2

  pdf.image "app/assets/images/iso.jpg", :at => [pdf.bounds.right - 500, 100], :align => :left, :width => 80
  # pdf.number_pages "<page> in a total of <total>", :start_count_at => 0, :page_filter => :all, :at => [pdf.bounds.right - 100, 0], :align => :right, :size => 14

  pdf.number_pages "Prol. Reforma 168, Barrio de Santiago Mihuacán, C.P.:74450, Izúcar de Matamoros, Puebla, Tels.: (243) 43-6-38-95, 43 638 96, 43 623 13 (Fax)", :size => 8, :at => [10, 0]
  end