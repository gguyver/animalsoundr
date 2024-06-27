#' Print an animal with provided sound
#'
#' This function takes two strings and returns a **pasted output**.
#'
#' @param animal An animal name, e.g. "Tiger", "Dog"
#' @param sound A sound the animal will make, e.g. "Roar", "Woof", which is pasted together using [paste()].
#'
#' @export
#'
#' @examples
#' animal_sounds("dog", "woof")
#' @importFrom cli cli_abort
animal_sounds <- function(animal, sound = NULL) {
  if(!is.null(sound)) {
    if(!rlang::is_character(sound, n = 1)) {
      cli::cli_abort(
        c("{.var sound} must be a single string.",
          "i" = "It was {.type {sound}}"),
        class = "error_not_single_sound"
      )
    }
  }

  if(!rlang::is_character(animal, n = 1)) {
    cli::cli_abort("{.var animal} must be a single string.")
  }
  if (animal == "giraffe") {
    paste0("The giraffe makes no sound")
  } else {
    paste0("The ", animal, " says ", sound, ", ", sound, ", ", sound, "!")
  }
}
