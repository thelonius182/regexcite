test_that("str_split_one() splits a string", {
  expect_equal(str_split_one("a,b,c", pattern = ","), c("a", "b", "c"))
  expect_equal(str_split_one("123.4.5", pattern = stringr::fixed(".")), c("123", "4", "5"))
  expect_equal(str_split_one("123.4.5", pattern = "[.]"), c("123", "4", "5"))
  expect_equal(str_split_one("123.4.5", pattern = "\\."), c("123", "4", "5"))
})
