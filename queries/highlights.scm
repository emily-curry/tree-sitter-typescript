; Types

(type_identifier) @type
(predefined_type) @type.builtin

((identifier) @type
 (#match? @type "^[A-Z]"))

(type_arguments
  "<" @punctuation.bracket
  ">" @punctuation.bracket)

; Variables

(required_parameter (identifier) @variable.parameter)
(optional_parameter (identifier) @variable.parameter)

; Object Literals

(object) @objectliteral

(object [
  (pair 
    key: (property_identifier) @objectliteral.key)
  (shorthand_property_identifier) @objectliteral.key @objectliteral.key.shorthand
  (pair 
    key: (property_identifier) @objectliteral.key @objectliteral.key.function
    value: [
      (arrow_function)
      (function)
    ])
  (method_definition 
    name: (property_identifier) @objectliteral.key @objectliteral.key.method)
])

; Keywords

[ "abstract"
  "declare"
  "enum"
  "export"
  "implements"
  "interface"
  "keyof"
  "namespace"
  "private"
  "protected"
  "public"
  "type"
  "readonly"
  "override"
] @keyword
