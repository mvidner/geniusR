#' Create Genius url
#'
#' Generates the url for a song given an artist and a song title. This function is used internally within the `genius_lyrics()` function.
#'
#' @param artist The quoted name of the artist. Spelling matters, capitalization does not.
#' @param song The quoted name of the song. Spelling matters, capitalization does not.
#'
#' @examples
#' gen_song_url(artist = "Kendrick Lamar", song = "HUMBLE")
#' gen_song_url("Margaret glaspy", "Memory Street")
#'
#' @export
#' @importFrom stringr str_replace_all
#' @import dplyr
#'
gen_song_url <- function(artist = NULL, song = NULL) {
  artist <- prep_info(artist)
  song <- prep_info(song)
  base_url <- "https://genius.com/"
  query <- paste(artist, song, "lyrics", sep = "-") %>%
    str_replace_all(" ", "-")
  url <- paste0(base_url, query)
  return(url)
}
