
# -----------------------------------------------------------------------------

daqana_linters <- list(

  # Files
  # TODO dq_absolute_path_linter
  # cf. https://github.com/jimhester/lintr/issues/339
  # TODO dq_nonportable_path_linter
  commented_code_linter = lintr::commented_code_linter,  
  todo_comment_linter = lintr::todo_comment_linter(
    todo = c("todo", "to do", "TODO", "TO DO")              # custom argument
  ),                                                        # no default linter

  # Syntax
  object_name_linter = lintr::object_name_linter(
   style = "snake_case"
  ),
  object_length_linter = lintr::object_length_linter(
   length = 20L
  ),
  # TODO dq_infix_spaces_linter
  commas_linter = lintr::commas_linter, 
  spaces_left_parentheses_linter = lintr::spaces_left_parentheses_linter,
  function_left_parentheses_linter = lintr::function_left_parentheses_linter, 
  spaces_inside_linter = lintr::spaces_inside_linter,
  T_and_F_symbol_linter = lintr::T_and_F_symbol_linter,     # no default linter
  open_curly_linter = lintr::open_curly_linter(
    allow_single_line = TRUE                                # custom argument
  ),
  closed_curly_linter = lintr::closed_curly_linter(
    allow_single_line = TRUE                                # custom argument
  ),
  no_tab_linter = lintr::no_tab_linter,
  line_length_linter = lintr::line_length_linter(
    length = 80L                                            # custom argument
  ),
  assignment_linter = lintr::assignment_linter,
  semicolon_terminator_linter = lintr::semicolon_terminator_linter(
    c("compound", "trailing")
  ),                                                        # no default linter
  single_quotes_linter = lintr::single_quotes_linter,

  # Pipes
  pipe_continuation_linter = lintr::pipe_continuation_linter#,
  

  # to be added in upcomming versions (code section)
  # extraction_operator_linter,                             # no default linter
  # implicit_integer_linter,                                # no default linter
  # undesirable_function_linter,                            # no default linter
  # undesirable_operator_linter,                            # no default linter
  # unneeded_concatenation_linter,                          # no default linter 
  # seq_linter,                                             # no default linter 
  
  # not to be used 
  # trailing_whitespace_linter
  # trailing_blank_lines_linter
  # object_usage_linter
  # equals_na_linter                                        # no default linter
  
  # to be replaced by own versions
  # infix_spaces_linter
  # absolute_path_linter                                    # no default linter
  # nonportable_path_linter                                 # no default linter

)

# -----------------------------------------------------------------------------
