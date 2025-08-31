#' Create the text of a script
#' @note
#' Cursors always move back to their original position
#'
#'
#' ```
#' [Event "It (cat.17)"]
#' [Site "Wijk aan Zee (Netherlands)"]
#' [Date "1999.??.??"]
#' [Round "?"]
#' [White "Garry Kasparov"]
#' [Black "Veselin Topalov"]
#' [Result "1-0"]
#' [TimeControl ""]
#' [Link "https://www.chess.com/games/view/969971"]
#' ```
# 1. e4 d6
# 2. d4 Nf6
# 3. Nc3 g6
# 4. Be3 Bg7
# 5. Qd2 c6
# 6. f3 b5
# 7. Nge2 Nbd7
# 8. Bh6 Bxh6
# 9. Qxh6 Bb7
# 10. a3 e5
# 11. O-O-O Qe7
# 12. Kb1 a6
# 13. Nc1 O-O-O
# 14. Nb3 exd4
# 15. Rxd4 c5
# 16. Rd1 Nb6
# 17. g3 Kb8
# 18. Na5 Ba8
# 19. Bh3 d5
# 20. Qf4+ Ka7
# 21. Rhe1 d4
# 22. Nd5 Nbxd5
# 23. exd5 Qd6
# 24. Rxd4 cxd4
# 25. Re7+ Kb6
# 26. Qxd4+ Kxa5
# 27. b4+ Ka4
# 28. Qc3 Qxd5
# 29. Ra7 Bb7
# 30. Rxb7 Qc4
# 31. Qxf6 Kxa3
# 32. Qxa6+ Kxb4
# 33. c3+ Kxc3
# 34. Qa1+ Kd2
# 35. Qb2+ Kd1
# 36. Bf1 Rd2
# 37. Rd7 Rxd7
# 38. Bxc4 bxc4
# 39. Qxh8 Rd3
# 40. Qa8 c3
# 41. Qa4+ Ke1
# 42. f4 f5
# 43. Kc1 Rd2
# 44. Qa7 1-0
#' @export
create_script_text <- function(sleep_time_secs = 8.0) {

  lines <- c(
    "message(\"You have three seconds to put the Conquer Chess window in focus\")",
    "Sys.sleep(3.0) # seconds"
  )

  # 1. e4 d6
  lines <- c(lines, conquerchessr::create_lines(from = "e2", to = "e4", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "d7", to = "d6", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 2. d4 Nf6
  lines <- c(lines, conquerchessr::create_lines(from = "d2", to = "d4", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "g8", to = "f6", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 3. Nc3 g6
  lines <- c(lines, conquerchessr::create_lines(from = "b1", to = "c3", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "g7", to = "g6", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 4. Be3 Bg7
  lines <- c(lines, conquerchessr::create_lines(from = "c1", to = "e3", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "f8", to = "g7", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 5. Qd2 c6
  lines <- c(lines, conquerchessr::create_lines(from = "d1", to = "d2", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "c7", to = "c6", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 6. f3 b5
  lines <- c(lines, conquerchessr::create_lines(from = "f2", to = "f3", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "b7", to = "b5", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 7. Nge2 Nbd7
  lines <- c(lines, conquerchessr::create_lines(from = "g1", to = "e2", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "b8", to = "d7", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 8. Bh6 Bxh6
  lines <- c(lines, conquerchessr::create_lines(from = "e3", to = "h6", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "g7", to = "h6", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 9. Qxh6 Bb7
  lines <- c(lines, conquerchessr::create_lines(from = "d2", to = "h6", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "c8", to = "b7", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 10. a3 e5
  lines <- c(lines, conquerchessr::create_lines(from = "a2", to = "a3", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "e7", to = "e5", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 11. O-O-O Qe7
  lines <- c(lines, conquerchessr::create_lines(from = "e1", to = "c1", action = 1, color = "white", sleep_time_secs = sleep_time_secs))  # Queenside castle
  lines <- c(lines, conquerchessr::create_lines(from = "d8", to = "e7", action = 1, color = "black", sleep_time_secs = sleep_time_secs))


  # 12. Kb1 a6
  lines <- c(lines, conquerchessr::create_lines(from = "c1", to = "b1", action = 1, color = "white", sleep_time_secs = sleep_time_secs))

  return(lines)

  lines <- c(lines, conquerchessr::create_lines(from = "a7", to = "a6", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 13. Nc1 O-O-O
  lines <- c(lines, conquerchessr::create_lines(from = "e2", to = "c1", action = 1, color = "white", sleep_time_secs = sleep_time_secs))  # Nc1 (back to c1)
  lines <- c(lines, conquerchessr::create_lines(from = "e8", to = "c8", action = 2, color = "black", sleep_time_secs = sleep_time_secs))  # Queenside castle

  # 14. Nb3 exd4
  lines <- c(lines, conquerchessr::create_lines(from = "c1", to = "b3", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "e5", to = "d4", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 15. Rxd4 c5
  lines <- c(lines, conquerchessr::create_lines(from = "d1", to = "d4", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "c6", to = "c5", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 16. Rd1 Nb6
  lines <- c(lines, conquerchessr::create_lines(from = "d4", to = "d1", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "d7", to = "b6", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 17. g3 Kb8
  lines <- c(lines, conquerchessr::create_lines(from = "g2", to = "g3", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "c8", to = "b8", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 18. Na5 Ba8
  lines <- c(lines, conquerchessr::create_lines(from = "b3", to = "a5", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "b7", to = "a8", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 19. Bh3 d5
  lines <- c(lines, conquerchessr::create_lines(from = "f1", to = "h3", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "d6", to = "d5", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 20. Qf4+ Ka7
  lines <- c(lines, conquerchessr::create_lines(from = "h6", to = "f4", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "b8", to = "a7", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 21. Rhe1 d4
  lines <- c(lines, conquerchessr::create_lines(from = "h1", to = "e1", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "d5", to = "d4", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 22. Nd5 Nbxd5
  lines <- c(lines, conquerchessr::create_lines(from = "c3", to = "d5", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "b6", to = "d5", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 23. exd5 Qd6
  lines <- c(lines, conquerchessr::create_lines(from = "e4", to = "d5", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "e7", to = "d6", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 24. Rxd4 cxd4
  lines <- c(lines, conquerchessr::create_lines(from = "d1", to = "d4", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "c5", to = "d4", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 25. Re7+ Kb6
  lines <- c(lines, conquerchessr::create_lines(from = "e1", to = "e7", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "a7", to = "b6", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 26. Qxd4+ Kxa5
  lines <- c(lines, conquerchessr::create_lines(from = "f4", to = "d4", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "b6", to = "a5", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 27. b4+ Ka4
  lines <- c(lines, conquerchessr::create_lines(from = "b2", to = "b4", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "a5", to = "a4", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 28. Qc3 Qxd5
  lines <- c(lines, conquerchessr::create_lines(from = "d4", to = "c3", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "d6", to = "d5", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 29. Ra7 Bb7
  lines <- c(lines, conquerchessr::create_lines(from = "e7", to = "a7", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "a8", to = "b7", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 30. Rxb7 Qc4
  lines <- c(lines, conquerchessr::create_lines(from = "a7", to = "b7", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "d5", to = "c4", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 31. Qxf6 Kxa3
  lines <- c(lines, conquerchessr::create_lines(from = "c3", to = "f6", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "a4", to = "a3", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 32. Qxa6+ Kxb4
  lines <- c(lines, conquerchessr::create_lines(from = "f6", to = "a6", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "a3", to = "b4", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 33. c3+ Kxc3
  lines <- c(lines, conquerchessr::create_lines(from = "c2", to = "c3", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "b4", to = "c3", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 34. Qa1+ Kd2
  lines <- c(lines, conquerchessr::create_lines(from = "a6", to = "a1", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "c3", to = "d2", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 35. Qb2+ Kd1
  lines <- c(lines, conquerchessr::create_lines(from = "a1", to = "b2", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "d2", to = "d1", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 36. Bf1 Rd2
  lines <- c(lines, conquerchessr::create_lines(from = "h3", to = "f1", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "d8", to = "d2", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 37. Rd7 Rxd7
  lines <- c(lines, conquerchessr::create_lines(from = "b7", to = "d7", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "d2", to = "d7", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 38. Bxc4 bxc4
  lines <- c(lines, conquerchessr::create_lines(from = "f1", to = "c4", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "b5", to = "c4", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 39. Qxh8 Rd3
  lines <- c(lines, conquerchessr::create_lines(from = "b2", to = "h8", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "d7", to = "d3", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 40. Qa8 c3
  lines <- c(lines, conquerchessr::create_lines(from = "h8", to = "a8", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "c4", to = "c3", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 41. Qa4+ Ke1
  lines <- c(lines, conquerchessr::create_lines(from = "a8", to = "a4", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "d1", to = "e1", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 42. f4 f5
  lines <- c(lines, conquerchessr::create_lines(from = "f3", to = "f4", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "f7", to = "f5", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 43. Kc1 Rd2
  lines <- c(lines, conquerchessr::create_lines(from = "b1", to = "c1", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines <- c(lines, conquerchessr::create_lines(from = "d3", to = "d2", action = 1, color = "black", sleep_time_secs = sleep_time_secs))

  # 44. Qa7 1-0
  lines <- c(lines, conquerchessr::create_lines(from = "a4", to = "a7", action = 1, color = "white", sleep_time_secs = sleep_time_secs))
  lines
}
