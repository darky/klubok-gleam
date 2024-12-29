# klubok_gleam

[![Package Version](https://img.shields.io/hexpm/v/klubok_gleam)](https://hex.pm/packages/klubok_gleam)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/klubok_gleam/)
![Erlang-compatible](https://img.shields.io/badge/target-erlang-a2003e)
![JavaScript-compatible](https://img.shields.io/badge/target-javascript-f1e05a)

![logo](https://raw.githubusercontent.com/darky/klubok/refs/heads/main/logo.png)

Do notation pipes for functions which easy to mock <br/>
Inspired by fp-ts/Effect bind Do-notation, but much more small and simple <br/>
Primarly created for easy mocking of functions, which allows to write tons of unit tests

```sh
gleam add klubok_gleam@1
```

```gleam
import gleam/option.{None, Some}
import gleam/set
import klubok_gleam.{use_klubok2, eff}

type Cat {
  Cat(name: String, age: Int)
}

fn cat_birthday(mock, only) {
  // Make this function pipable
  // Need to use correct arity by count of `eff` usage, 2 in this example
  use <- use_klubok2(mock, only)

  // This function mockable
  use cat <- eff(fn() {
    // some IO implementation which fetching cat
    Cat("Barsik", 5)
  })

  // This function mockable
  use aged_cat <- eff(fn() { Cat(..cat, age: cat.age + 1) })

  aged_cat
}

pub fn main() {
  // Pass Option.None to mock and only
  // Should be used on production code
  cat_birthday(None, None) // Cat("Barsik", 6)

  // Mock first `eff` with another hardcoded cat
  // Should be used in unit tests
  cat_birthday(#(fn() { Cat("Marfa", 10) } |> Some, None) |> Some, None) // Cat("Marfa", 11)

  // Call only first `eff` and second ignored
  // E.g. no cat birthday today 😿
  //❗`only` is type unsafe and can lead to runtime errors when `Nil` passed instead of actual `eff` value
  cat_birthday(None, set.from_list([0]) |> Some) // Cat("Barsik", 5)
}
```

Further documentation can be found at <https://hexdocs.pm/klubok_gleam>.

## Development

```sh
gleam run   # Run the project
gleam test  # Run the tests
```

## See also

* [Klubok](https://github.com/darky/klubok) - TS implementation of Klubok
