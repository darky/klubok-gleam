import gleam/dynamic
import gleam/option.{None, Some}
import gleam/set
import gleeunit
import gleeunit/should
import klubok_gleam.{eff, use_klubok2}

type Cat {
  Cat(name: String, age: Int)
}

pub fn main() {
  gleeunit.main()
}

fn cat_new_age2(mock, only) {
  use <- use_klubok2(mock, only)

  use cat <- eff(fn() { Cat("Barsik", 5) })

  use aged_cat <- eff(fn() { Cat(..cat, age: cat.age + 1) })

  case { aged_cat |> dynamic.from } == { Nil |> dynamic.from } {
    True -> cat
    False -> aged_cat
  }
}

pub fn klubok2_plain_test() {
  cat_new_age2(None, None)
  |> should.equal(Cat("Barsik", 6))
}

pub fn klubok2_mock_test() {
  cat_new_age2(#(fn() { Cat("Marfa", 10) } |> Some, None) |> Some, None)
  |> should.equal(Cat("Marfa", 11))
}

pub fn klubok2_only_test() {
  cat_new_age2(None, set.from_list([0]) |> Some)
  |> should.equal(Cat("Barsik", 5))
}

pub fn klubok2_mock_with_only_test() {
  cat_new_age2(
    #(None, fn() { Cat("Marik", 3) } |> Some) |> Some,
    set.from_list([1]) |> Some,
  )
  |> should.equal(Cat("Marik", 3))
}
