library(magick)

image_read_scale <- function(path) {
  image_read(path = path) %>%
    image_scale("450x250")
}

hadley_everyday <- image_read_scale("images/hadley-everyday-functions.png")
hadley_mm <- image_read_scale("images/hadley-many-models-talk.png")
jenny <- image_read_scale("images/jenny-bryan-code-smells.png")
joe <- image_read_scale("images/joe-cheng.png")
miles <- image_read_scale("images/miles-magic-pain.png")
roger <- image_read_scale("images/roger-peng-tapply.png")

hadley_everyday_1 <- hadley_everyday %>%
  image_border(color = "black", geometry = "1x0") %>%
  image_crop("450x250")
hadley_mm_1 <- hadley_mm %>%
  image_border(color = "black", geometry = "0x13") %>%
  image_crop("450x250")
jenny_1 <- jenny %>%
  image_border(color = "black", geometry = "0x12") %>%
  image_crop("450x250")
joe_1 <- joe %>%
  image_border(color = "black", geometry = "1x0") %>%
  image_crop("450x250")
miles_1 <- miles %>%
  image_border(color = "black", geometry = "4x0") %>%
  image_crop("450x250")
roger_1 <- roger %>%
  image_border(color = "black", geometry = "0x16") %>%
  image_crop("450x250")


stack_hadley_jenny <- image_append(c(hadley_everyday_1, hadley_mm_1, jenny_1))
stack_joe_miles_roger <- image_append(c(joe_1, miles_1, roger_1))

image_collage_wide <- image_append(
  c(
    stack_hadley_jenny,
    stack_joe_miles_roger
  ),
  stack = TRUE
)

image_write(image_collage_wide, "images/prior_art_wide.png")
