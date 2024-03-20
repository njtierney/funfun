name_list <- function(list) {
  n_list <- length(list)
  names(list) <- english::english(seq_len(n_list))
  list
}
