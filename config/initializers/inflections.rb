# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
ActiveSupport::Inflector.inflections do |inflect|
  inflect.plural /([aeiou])([A-Z]|_|$)/, '\1s\2'
  inflect.plural /([rlnd])([A-Z]|_|$)/, '\1es\2'
  inflect.plural /([aeiou])([A-Z]|_|$)([a-z]+)([rlnd])($)/, '\1s\2\3\4es\5'
  inflect.plural /([rlnd])([A-Z]|_|$)([a-z]+)([aeiou])($)/, '\1es\2\3\4s\5'
  inflect.singular /([aeiou])s([A-Z]|_|$)/, '\1\2'
  inflect.singular /([rlnd])es([A-Z]|_|$)/, '\1\2'
  inflect.singular /([aeiou])s([A-Z]|_)([a-z]+)([rlnd])es($)/, '\1\2\3\4\5'
  inflect.singular /([rlnd])es([A-Z]|_)([a-z]+)([aeiou])s($)/, '\1\2\3\4\5'

# Se agregan inflectores para todos los casos de detalle_ y detalles_
# Ejs.:
# detalle_pendiente_aprobacion -> detalles_pediente_aprobacion
# detalle_rechazo -> detalles_rechazo
  inflect.plural /(\bdetalle)(\w+|_|$)/, '\1s\2'
  inflect.plural /(\bdetalles)(\w+|_|$)/, '\1\2'
  inflect.singular /(\bdetalle)s(\w+|_|$)/, '\1\2'

  inflect.plural /(\bperfil)(\w+|_|$)/, '\1es\2'
  inflect.plural /(\bperfiles)(\w+|_|$)/, '\1\2'

  # Para evitar errores de pluralización utilizados por formtastic al utilizar i18n
  # (https://github.com/justinfrench/formtastic/blob/master/lib/formtastic.rb#L1850)
  inflect.irregular 'label', 'labels'
  inflect.irregular 'title', 'titles'
  inflect.irregular 'hint', 'hints'
  inflect.irregular 'action', 'actions'
end
