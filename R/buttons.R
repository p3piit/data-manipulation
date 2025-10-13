create_buttons <- function(next_topic = "#") {
  if (is.null(next_topic)) {
    next_button <- ""
  } else {
    next_button <- glue::glue('<a id="nextTopicButton" class="btn btn-danger disabled" href="{next_topic}" role="button">Next Topic</a>')
  }

  glue::glue(
    '
    <section id="buttons">
      <button id="continueButton" class="btn btn-primary float-start me-2">Continue</button>
      {next_button}
      <button id="resetButton" class="btn btn-outline-warning float-end">Restart Topic</button>
      </section>
      '
  ) |>
  cat()
}

###--------------------------------------------------------------------------###

begin_button <- function(next_topic = "#") {
  glue::glue(
    '
    <section id="buttons">
      <a id="beginButton" class="btn btn-primary" href="{next_topic}" role="button">
      Begin Tutorial
      </a>
    </section>
    '
  ) |>
  cat()
}

###--------------------------------------------------------------------------###

first_buttons <- function(next_topic = "#") {
  glue::glue(
    '
    <section id="buttons">
      <a id="firstButton" class="btn btn-primary float-start" href="{next_topic}" role="button">
      Continue
      </a>
    </section>
    '
  ) |>
  cat()
}

###--------------------------------------------------------------------------###

next_module_button <- function(next_topic = "#") {
  glue::glue(
    '
    <section id="buttons">
      <a id="nextButton" class="btn btn-primary float-start" href="{next_topic}" role="button">
      Next Module
      </a>
    </section>
    '
  ) |>
  cat()
}
