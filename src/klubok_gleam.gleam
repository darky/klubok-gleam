import gleam/option.{type Option, None, Some}

pub type Step(action, next) {
  Step(action: action, next: next)
}

pub fn eff(action, cb) {
  Step(action, cb)
}

pub fn use_klubok2(
  mock: Option(#(Option(fn() -> r1), Option(fn() -> r2))),
  init: fn() -> Step(fn() -> r1, fn(r1) -> Step(fn() -> r2, fn(r2) -> r3)),
) -> r3 {
  let step1 = init()
  let step2 = case option.unwrap(mock, #(None, None)).0 {
    Some(action) -> action() |> step1.next
    None -> step1.action() |> step1.next
  }
  case option.unwrap(mock, #(None, None)).1 {
    Some(action) -> action() |> step2.next
    None -> step2.action() |> step2.next
  }
}
