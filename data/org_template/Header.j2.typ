#two-col(
  left-column-width: 90%,
  right-column-width: 10%,
  column-gutter: 1cm,
  left-content: [
    #align(
      left,
      [
        ((* if cv.name *))
        = <<cv.name>>
        ((* endif *))
      ]
    )
  ],
  right-content: [
    #align(
      right,
      image("company_logo.jpg", width: 100%),
    )
  ]
)

// Print connections:
#let connections-list = (
((* for connection in cv.connections *))
  [((*- if connection["url"] -*))
  #box(original-link("<<connection["url"]>>")[
  ((*- endif -*))
  ((*- if design.header.use_icons_for_connections -*))
    #fa-icon("<<connection["typst_icon"]>>", size: 0.9em) #h(0.05cm)
  ((*- endif -*))
  ((*- if design.header.use_icons_for_connections or not connection["url"] -*))
    <<connection["placeholder"]|escape_typst_characters>>
  ((*- else -*))
    <<connection["clean_url"]|escape_typst_characters>>
  ((*- endif -*))
  ((*- if connection["url"] -*))
  ])
  ((*- endif -*))],
((* endfor *))
)
#connections(connections-list)

