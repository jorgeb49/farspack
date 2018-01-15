library(testthat)
library(farspack)

setwd(system.file("extdata", package = "farspack"))

test_that("fars_read() is working", {
  expect_is(fars_read("accident_2014.csv.bz2"), "tbl_df")
  expect_error(fars_read("accident.csv.bz2"))
})

test_that("fars_summarize_years() is woking", {
  expect_is(fars_summarize_years(list(2014, 2015)), "tbl_df")
  expect_equal(names(fars_summarize_years(2014:2015)), c("MONTH", 2014:2015))
  expect_error(fars_summarize_years(2012))
})

test_that("fars_map_state() is working", {
  expect_error(fars_map_state(100, 2015))
})

