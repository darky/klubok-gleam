import gleam/dynamic.{type Dynamic}
import gleam/option.{type Option, None, Some}
import gleam/set.{type Set}

pub type Step(action, next) {
  Step(action: action, next: next)
}

pub fn eff(action, cb) {
  Step(action, cb)
}

pub fn use_klubok2(
  mock: Option(#(Option(fn() -> r1), Option(fn() -> r2))),
  only: Option(Set(Int)),
  init: fn() -> Step(fn() -> r1, fn(r1) -> Step(fn() -> r2, fn(r2) -> r3)),
) -> r3 {
  let step1 = init()
  let step2 = case
    option.unwrap(mock, #(None, None)).0,
    only,
    set.contains(option.unwrap(only, set.new()), 0)
  {
    None, None, _ | None, Some(_), True -> step1.action() |> step1.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step1.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step1.next
  }
  case
    option.unwrap(mock, #(None, None)).1,
    only,
    set.contains(option.unwrap(only, set.new()), 1)
  {
    None, None, _ | None, Some(_), True -> step2.action() |> step2.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step2.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step2.next
  }
}

@external(erlang, "gleam_stdlib", "identity")
@external(javascript, "../gleam_stdlib/gleam_stdlib.mjs", "identity")
fn unsafe_coerce(a: Dynamic) -> a
