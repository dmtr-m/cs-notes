#import "../../templates/notes_template.typ": page_settings

#let lecture_1(doc) = [
  = Лекция 1.
  TODO
  #pagebreak(weak: true)
  #doc
]

#show: page_settings
#show: lecture_1
