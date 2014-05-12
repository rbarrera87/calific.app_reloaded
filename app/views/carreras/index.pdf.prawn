
# creation_date = Time.now.strftime('%d-%m-%Y')
# # d = @carreras.map do |c|
# #    [c.nombre,
# #    c.descripcion
# #  ]
# #  text "hola #{c.nombre}"
# # end
# y_position = cursor - 20

# %w[b].each do |tag|
# text "Izúcar de Matamoros <#{tag}>hola</#{tag}> " +
# "is using the ",
# :inline_format => true

#  pdf.text "Fecha de creación " +  Time.now.strftime('%d-%m-%Y')
# pdf.text "Page Count:#{pdf.page_count}"
# move_down 10
# end
# y = @carreras.find(2)
# pdf.text "hola #{y.nombre}", size: 14, align: :center
# pdf.text "koopdskopksopkdopksokdopskdopksopkopdksopkdopskopdkopskdopskdopksopdkopskdopskopdksopkdopskdopksopkdopkopsdksopkdopksopdksopkdopskdopksopdkposkdopskpodksopkdopksopkdpoksopkdopskdopskopdkopskdopskdopksopdksopkdopskdsodpksopdksopkdopskdskdposkopdksopkdoksdopkpdsdopskdops", align: :justify, :indent_paragraphs => 60
# move_down 10

# indent(60) do
#    stroke_horizontal_rule
# text "Inside an indent block. And so is this horizontal line:",:width => 200

# end



# # pad_bottom(50) { text "Nomre de la carrera #{y.nombre}" }

# # table([["Nomre de la carrera #{y.nombre}", "Nomre de la carrera #{y.nombre} "]], :width => 500)

# # bounding_box([20, cursor - 50], :width => 200, :height => 100) do
# #   stroke_horizontal_rule
# # text "Nomre de la carrera #{y.nombre}"
# # transparent(0.0) { stroke_bounds }
# # end
# move_down 50

# y_position = cursor
# bounding_box([0, y_position], :width => 200) do
#    stroke_horizontal_rule
# text "Nomre de la carrera #{y.nombre} "
# transparent(0.0) { stroke_bounds }
# end
# bounding_box([300, y_position], :width => 200) do
#    stroke_horizontal_rule
# text "Nomre de la carrera #{y.nombre} "

# transparent(0.0) { stroke_bounds }
# end
# move_down 80

# y_position = cursor
# bounding_box([0, y_position], :width => 200) do
#    stroke_horizontal_rule
# text "Nomre de la carrera #{y.nombre} "
# transparent(0.0) { stroke_bounds }
# end
# bounding_box([300, y_position], :width => 200) do
#    stroke_horizontal_rule
# text "Nomre de la carrera #{y.nombre} "

# transparent(0.0) { stroke_bounds }
# end

# move_down 40

# bounding_box([150, cursor - 100], :width => 200) do
# stroke_horizontal_rule
# text "Nomre de la carrera #{y.nombre} "
# transparent(0.0) { stroke_bounds }
# end



# #pie de pagina
# pdf.repeat(:all) do
#   pdf.stroke do
#     pdf.horizontal_line 0, 540, :at => 10
#   end

#   pdf.number_pages "Prol. Reforma 168, Barrio de Santiago Mihuacán, C.P.:74450, Izúcar de Matamoros, Puebla, Teles.: (243) 43-6-38-95" +" Pagina" "  ""(<page>/<total>)", :size => 9, :at => [10, 0]
# end

#t = make_table([ ["this is the first row"],
#["this is the second row"] ])
#t.draw


# text "Carrera: #{y.nombre}", align: :left
# text "Profesor:", align: :left
# text "Periodo", align: :left
# text "Asignatura:", align: :left
# text "Grado:", align: :left
# text "Grupo:", align: :left
# text "Parcial:", align: :left


y=@carreras.find(2)
 table([ ["Carrera: #{y.nombre}", "Profesor:", "Periodo"],
 ["Asignatura:", "Grado:", "Grupo:"],["Parcial:"]], :column_widths => [180, 200, 150], )

def box_content(string)
text string
transparent(0.5) { stroke_bounds }
image "#{Prawn::DATADIR}/images/stef.jpg", :position => 50
# y = @carreras.find(2)
end

gap = 0
bounding_box([0, cursor], :width => 550, :height => 700) do
box_content("")
 y=@carreras.find(2)
table([
[{:content => "Carrera: #{y.nombre}", :colspan => 1}, {:content => "Profesor:#{y.nombre}", :colspan => 2}, "Periodo: #{y.nombre}"],
[{:content => "Asignatura:#{y.nombre}", :rowspan => 1}, "Grado:#{y.nombre}", "Grupo:#{y.nombre}", "Parcial:#{y.nombre}"]
],:position => :center)
move_down 20

table = [ ["Id", "Matricula", "Nombre", "L", "M", "M", "J", "V", ],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
["", "", "", "", "", "", "", ""],
]
table(table, :cell_style =>
{ :border_lines => [:dotted, :solid, :dotted, :dashed] },:position => :center, :column_widths => [100, 100, 240])


end

#:cell_style => {:padding => [0, 0, 0, 30]}

# table([["Id", "Matricula", "Nombre", {:content => "2x2", :colspan => 2, :rowspan => 2},"L", "M", "M", "J", "V"]] ) do |t|
# t.cells.border_width = 0
# t.before_rendering_page do |page|
# page.row(0).border_top_width = 0
# page.row(0).border_bottom_width = 0
# page.column(0).border_left_width = 0
# page.column(0).border_right_width = 0
# end
# end

# pie de pagina
 pdf.repeat(:all) do
   pdf.stroke do
    pdf.horizontal_line 0, 540, :at => 10
  end

   pdf.number_pages "Prol. Reforma 168, Barrio de Santiago Mihuacán, C.P.:74450, Izúcar de Matamoros, Puebla, Teles.: (243) 43-6-38-95" +" Pagina" "  ""(<page>/<total>)", :size => 9, :at => [10, 0]
 end

#Lista de alumnos reprobados  y aprobados 5555555555555555555555555555555555555555
# y_position = cursor
# #  bounding_box([0, y_position], :width => 200) do
# #    stroke_horizontal_rule
# #  text "Nomre de la carrera"
# # transparent(0.0) { stroke_bounds }
# # end
# bounding_box([150, y_position], :width => 300) do

# font_size(15) { text "Universidad Tecnológica Izúcar de Matamoros", align: :center }
# transparent(0.0) { stroke_bounds }
# end
# move_down 50
# # y = @carreras.find(2)

# y=@carreras.find(2)
# table([
# [{:content => "Carrera: #{y.nombre}", :colspan => 1}, {:content => "Profesor:", :colspan => 2}, "Periodo: "],
# [ "Grado:", "Grupo:", "Parcial:"]
# ],:position => :center)
# move_down 20
# font_size(25) { text "Lista de alumnos reprobados!", align: :center }

# table = [ ["Id", "Matricula", "Nombre", "1 P", "2 P", "3 P" ],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ["", "", "", "", "", ""],
# ]
# table(table, :cell_style =>
# { :border_lines => [:dotted, :solid, :dotted] },:position => :center, :column_widths => [50, 100, 240])

# pdf.image "images/logo.jpg", :at => [pdf.bounds.right - 500, 730], :align => :left, :width => 80


# pdf.image "images/iso.jpg", :at => [pdf.bounds.right - 500, 200], :align => :left, :width => 80
 



# move_down 100

# # pie de pagina
#  pdf.repeat(:all) do
#    pdf.stroke do
#     pdf.horizontal_line 0, 540, :at => 10
#   end

#    pdf.number_pages "Prol. Reforma 168, Barrio de Santiago Mihuacán, C.P.:74450, Izúcar de Matamoros, Puebla, Teles.: (243) 43-6-38-95", :size => 9, :at => [10, 0]
#  end

