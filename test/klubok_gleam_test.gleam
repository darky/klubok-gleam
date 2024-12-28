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

fn cat_new_age2(mock) {
  use <- use_klubok2(mock)

  use cat <- eff(fn() { Cat("Barsik", 5) })

  use aged_cat <- eff(fn() { Cat(..cat, age: cat.age + 1) })

  aged_cat
}

pub fn klubok2_plain_test() {
  cat_new_age2(None)
  |> should.equal(Cat("Barsik", 6))
}

pub fn klubok2_mock_test() {
  cat_new_age2(Some(#(Some(fn() { Cat("Marfa", 10) }), None)))
  |> should.equal(Cat("Marfa", 11))
}
