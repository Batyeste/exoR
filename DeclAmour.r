install.packages("languageserver")

answer <- sample(0:1, 1)

cat("Est-ce que tu aimes R ?\n")

if (answer == 0) {
  cat("R réfléchit...\n")
  Sys.sleep(1.5)
  cat("Tu aimes R :)\n")
} else {
  cat("R réfléchit...\n")
  Sys.sleep(1.5)
  cat("Tu n'aimes pas R :(\n")
}
