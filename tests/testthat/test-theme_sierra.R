test_that("theming works", {
  expect_equal(4, 2+2)
  #expect_type(theme_sierra(), "theme")
})

#test_that("scale_fill_sierra works", {
#  expect_is(scale_fill_sierra(), "ScaleDiscrete")
#})
#
#test_that("scale_colour_sierra works", {
#  expect_is(scale_colour_sierra(), "ScaleDiscrete")
#})
#
#test_that("sierra_pal works", {
#  p <- sierra_pal()
#  expect_is(p, "function")
#  expect_is(attr(p, "max_n"), "integer")
#  expect_hexcolor(p(3))
#})
