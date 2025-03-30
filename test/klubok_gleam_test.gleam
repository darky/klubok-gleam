import gleam/dynamic
import gleam/option.{None, Some}
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
  cat_new_age2(None, [])
  |> should.equal(Cat("Barsik", 6))
}

pub fn klubok2_mock_test() {
  cat_new_age2(Some(#(Some(fn() { Cat("Marfa", 10) }), None)), [])
  |> should.equal(Cat("Marfa", 11))
}

pub fn klubok2_only_test() {
  cat_new_age2(None, [0])
  |> should.equal(Cat("Barsik", 5))
}

pub fn klubok2_mock_with_only_test() {
  cat_new_age2(Some(#(None, Some(fn() { Cat("Marik", 3) }))), [1])
  |> should.equal(Cat("Marik", 3))
}
