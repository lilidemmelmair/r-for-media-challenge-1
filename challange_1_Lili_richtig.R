library(assertthat)

# Complete the following statements following the the assignment below:
# * Namen der sieben Hamburger Bezirke (Nicht Stadtteile!)
# * Einwohner
# * Bevölkerungsdichte in km2
# * Nachname Bezirkamtsleiter
# * Mehr als 100km2 Fläche (TRUE oder FALSE)
#
# **Beantworte darüber hinaus folgende Fragen und nutze dafür dein neues R-Wissen:**
#
#   * Wie viele Menschen leben insgesamt in den Stadtteilen?
#   * Wie hoch ist die Bevökerungsdichte im Durchschnitt?

hamburg_df <- data.frame(Bezirke=c("Hamburg-Mitte", "Altona", "Eimsbuettel", "Hamburg-Nord", "Wandsbek", "Bergedorf", "Harburg"), Einwohner=c(301546, 275265, 267053, 314595, 441015, 130260, 169426), Bevoelkerungsdichte=c(2121, 3534, 5362, 5443, 2990, 841, 1353), Bezirksamtsleiter=c("Drossmann", "von Berg", "Gaetgens", "Werner-Boelz","Ritzenhoff","Dornquast","Fredenhagen"), Flaeche=c(TRUE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE))
density <- mean(hamburg_df$Bevoelkerungsdichte)
inhabitants_sum <-sum(hamburg_df$Einwohner)


if(
  assert_that(
    has_name(hamburg_df, "bezirk"),
    msg = "Die Spalte 'bezirk' fehlt"
  ) &&
  assert_that(
    has_name(hamburg_df, "einwohner"),
    msg = "Die Spalte 'einwohner' fehlt"
  ) &&
  assert_that(
    has_name(hamburg_df, "bevoelkerungsdichte"),
    msg = "Die Spalte 'bevoelkerungsdichte' fehlt"
  ) &&
  assert_that(
    has_name(hamburg_df, "bezirksamtsleiter"),
    msg = "Die Spalte 'bezirksamtsleiter' fehlt"
  ) &&
  assert_that(
    has_name(hamburg_df, "flaeche"),
    msg = "Die Spalte 'flaeche' fehlt"
  ) &&
  assert_that(
    is.character(hamburg_df$bezirk),
    msg = "Die Spalte 'bezirk' ist vom flaschen Datentyp"
  ) &&
  assert_that(
    is.character(hamburg_df$bezirksamtsleiter),
    msg = "Die Spalte 'bezirksamtsleiter' ist vom flaschen Datentyp"
  ) &&
  assert_that(
    is.logical(hamburg_df$flaeche),
    msg = "Die Spalte 'flaeche' ist vom flaschen Datentyp"
  ) &&
  assert_that(
    is.numeric(hamburg_df$einwohner),
    msg = "Die Spalte 'einwohner' ist vom flaschen Datentyp"
  ) &&
  assert_that(
    is.numeric(hamburg_df$bevoelkerungsdichte),
    msg = "Die Spalte 'bevoelkerungsdichte' ist vom flaschen Datentyp"
  ) &&
  assert_that(
    inhabitants_sum == 1899149,
    msg = "Die Summe der Einwohner is nicht richtig"
  ) &&
  assert_that(
    density == 3092,
    msg = "Die durchschnittliche Bevölkerungsdichte ist falsch"
  )
) {
  writeLines("Congrats! 10/10 points!")
}
