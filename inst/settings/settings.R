
# -----------------------------------------------------------------------------

# make logo available in docs
logo <- "daqana-or-rgb.svg"
logo_path <- file.path("settings", logo)
file.copy(from = logo_path, to = file.path("docs", logo))

# -----------------------------------------------------------------------------

daqana_col <- rgb(255, 143, 0, maxColorValue = 256)

dq_sec_col <- "#ff4f00"
dq_gray <- "#8a9fa6"

# -----------------------------------------------------------------------------

# https://stackoverflow.com/questions/29067541/rmarkdown-how-to-change-the-font-color
color_format <- function(x, color = "darkred"){
  output_format <- knitr::opts_knit$get("rmarkdown.pandoc.to")
  if (output_format == "latex") {
    paste("\\textcolor{", color, "}{", x, "}", sep = "")
  } else {
    if (output_format == "html") {
      paste("<font color='", color, "'>", x, "</font>", sep = "")
    } else {
      x
    }
  }
}

# -----------------------------------------------------------------------------
