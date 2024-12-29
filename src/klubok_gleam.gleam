import gleam/dynamic.{type Dynamic}
import gleam/option.{type Option, None, Some}
import gleam/set.{type Set}

pub type Step(action, next) {
  Step(action: action, next: next)
}

pub fn eff(action, cb) {
  Step(action, cb)
}

const none1 = #(None)

const none2 = #(None, None)

const none3 = #(None, None, None)

const none4 = #(None, None, None, None)

const none5 = #(None, None, None, None, None)

const none6 = #(None, None, None, None, None, None)

const none7 = #(None, None, None, None, None, None, None)

const none8 = #(None, None, None, None, None, None, None, None)

const none9 = #(None, None, None, None, None, None, None, None, None)

const none10 = #(None, None, None, None, None, None, None, None, None, None)

const none11 = #(
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
)

const none12 = #(
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
)

const none13 = #(
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
)

const none14 = #(
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
)

const none15 = #(
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
  None,
)

pub fn use_klubok1(
  mock: Option(#(Option(fn() -> r1))),
  only: Option(Set(Int)),
  init: fn() -> Step(fn() -> r1, fn(r1) -> r2),
) -> r2 {
  let step1 = init()
  let mock = option.unwrap(mock, none1)
  let only_set = option.unwrap(only, set.new())
  case mock.0, only, set.contains(only_set, 0) {
    None, None, _ | None, Some(_), True -> step1.action() |> step1.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step1.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step1.next
  }
}

pub fn use_klubok2(
  mock: Option(#(Option(fn() -> r1), Option(fn() -> r2))),
  only: Option(Set(Int)),
  init: fn() -> Step(fn() -> r1, fn(r1) -> Step(fn() -> r2, fn(r2) -> r3)),
) -> r3 {
  let step1 = init()
  let mock = option.unwrap(mock, none2)
  let only_set = option.unwrap(only, set.new())
  let step2 = case mock.0, only, set.contains(only_set, 0) {
    None, None, _ | None, Some(_), True -> step1.action() |> step1.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step1.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step1.next
  }
  case mock.1, only, set.contains(only_set, 1) {
    None, None, _ | None, Some(_), True -> step2.action() |> step2.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step2.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step2.next
  }
}

pub fn use_klubok3(
  mock: Option(#(Option(fn() -> r1), Option(fn() -> r2), Option(fn() -> r3))),
  only: Option(Set(Int)),
  init: fn() ->
    Step(
      fn() -> r1,
      fn(r1) -> Step(fn() -> r2, fn(r2) -> Step(fn() -> r3, fn(r3) -> r4)),
    ),
) -> r4 {
  let step1 = init()
  let mock = option.unwrap(mock, none3)
  let only_set = option.unwrap(only, set.new())
  let step2 = case mock.0, only, set.contains(only_set, 0) {
    None, None, _ | None, Some(_), True -> step1.action() |> step1.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step1.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step1.next
  }
  let step3 = case mock.1, only, set.contains(only_set, 1) {
    None, None, _ | None, Some(_), True -> step2.action() |> step2.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step2.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step2.next
  }
  case mock.2, only, set.contains(only_set, 2) {
    None, None, _ | None, Some(_), True -> step3.action() |> step3.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step3.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step3.next
  }
}

pub fn use_klubok4(
  mock: Option(
    #(
      Option(fn() -> r1),
      Option(fn() -> r2),
      Option(fn() -> r3),
      Option(fn() -> r4),
    ),
  ),
  only: Option(Set(Int)),
  init: fn() ->
    Step(
      fn() -> r1,
      fn(r1) ->
        Step(
          fn() -> r2,
          fn(r2) -> Step(fn() -> r3, fn(r3) -> Step(fn() -> r4, fn(r4) -> r5)),
        ),
    ),
) -> r5 {
  let step1 = init()
  let mock = option.unwrap(mock, none4)
  let only_set = option.unwrap(only, set.new())
  let step2 = case mock.0, only, set.contains(only_set, 0) {
    None, None, _ | None, Some(_), True -> step1.action() |> step1.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step1.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step1.next
  }
  let step3 = case mock.1, only, set.contains(only_set, 1) {
    None, None, _ | None, Some(_), True -> step2.action() |> step2.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step2.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step2.next
  }
  let step4 = case mock.2, only, set.contains(only_set, 2) {
    None, None, _ | None, Some(_), True -> step3.action() |> step3.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step3.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step3.next
  }
  case mock.3, only, set.contains(only_set, 3) {
    None, None, _ | None, Some(_), True -> step4.action() |> step4.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step4.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step4.next
  }
}

pub fn use_klubok5(
  mock: Option(
    #(
      Option(fn() -> r1),
      Option(fn() -> r2),
      Option(fn() -> r3),
      Option(fn() -> r4),
      Option(fn() -> r5),
    ),
  ),
  only: Option(Set(Int)),
  init: fn() ->
    Step(
      fn() -> r1,
      fn(r1) ->
        Step(
          fn() -> r2,
          fn(r2) ->
            Step(
              fn() -> r3,
              fn(r3) ->
                Step(fn() -> r4, fn(r4) -> Step(fn() -> r5, fn(r5) -> r6)),
            ),
        ),
    ),
) -> r6 {
  let step1 = init()
  let mock = option.unwrap(mock, none5)
  let only_set = option.unwrap(only, set.new())
  let step2 = case mock.0, only, set.contains(only_set, 0) {
    None, None, _ | None, Some(_), True -> step1.action() |> step1.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step1.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step1.next
  }
  let step3 = case mock.1, only, set.contains(only_set, 1) {
    None, None, _ | None, Some(_), True -> step2.action() |> step2.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step2.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step2.next
  }
  let step4 = case mock.2, only, set.contains(only_set, 2) {
    None, None, _ | None, Some(_), True -> step3.action() |> step3.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step3.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step3.next
  }
  let step5 = case mock.3, only, set.contains(only_set, 3) {
    None, None, _ | None, Some(_), True -> step4.action() |> step4.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step4.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step4.next
  }
  case mock.4, only, set.contains(only_set, 4) {
    None, None, _ | None, Some(_), True -> step5.action() |> step5.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step5.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step5.next
  }
}

pub fn use_klubok6(
  mock: Option(
    #(
      Option(fn() -> r1),
      Option(fn() -> r2),
      Option(fn() -> r3),
      Option(fn() -> r4),
      Option(fn() -> r5),
      Option(fn() -> r6),
    ),
  ),
  only: Option(Set(Int)),
  init: fn() ->
    Step(
      fn() -> r1,
      fn(r1) ->
        Step(
          fn() -> r2,
          fn(r2) ->
            Step(
              fn() -> r3,
              fn(r3) ->
                Step(
                  fn() -> r4,
                  fn(r4) ->
                    Step(fn() -> r5, fn(r5) -> Step(fn() -> r6, fn(r6) -> r7)),
                ),
            ),
        ),
    ),
) -> r7 {
  let step1 = init()
  let mock = option.unwrap(mock, none6)
  let only_set = option.unwrap(only, set.new())
  let step2 = case mock.0, only, set.contains(only_set, 0) {
    None, None, _ | None, Some(_), True -> step1.action() |> step1.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step1.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step1.next
  }
  let step3 = case mock.1, only, set.contains(only_set, 1) {
    None, None, _ | None, Some(_), True -> step2.action() |> step2.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step2.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step2.next
  }
  let step4 = case mock.2, only, set.contains(only_set, 2) {
    None, None, _ | None, Some(_), True -> step3.action() |> step3.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step3.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step3.next
  }
  let step5 = case mock.3, only, set.contains(only_set, 3) {
    None, None, _ | None, Some(_), True -> step4.action() |> step4.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step4.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step4.next
  }
  let step6 = case mock.4, only, set.contains(only_set, 4) {
    None, None, _ | None, Some(_), True -> step5.action() |> step5.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step5.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step5.next
  }
  case mock.5, only, set.contains(only_set, 5) {
    None, None, _ | None, Some(_), True -> step6.action() |> step6.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step6.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step6.next
  }
}

pub fn use_klubok7(
  mock: Option(
    #(
      Option(fn() -> r1),
      Option(fn() -> r2),
      Option(fn() -> r3),
      Option(fn() -> r4),
      Option(fn() -> r5),
      Option(fn() -> r6),
      Option(fn() -> r7),
    ),
  ),
  only: Option(Set(Int)),
  init: fn() ->
    Step(
      fn() -> r1,
      fn(r1) ->
        Step(
          fn() -> r2,
          fn(r2) ->
            Step(
              fn() -> r3,
              fn(r3) ->
                Step(
                  fn() -> r4,
                  fn(r4) ->
                    Step(
                      fn() -> r5,
                      fn(r5) ->
                        Step(
                          fn() -> r6,
                          fn(r6) -> Step(fn() -> r7, fn(r7) -> r8),
                        ),
                    ),
                ),
            ),
        ),
    ),
) -> r8 {
  let step1 = init()
  let mock = option.unwrap(mock, none7)
  let only_set = option.unwrap(only, set.new())
  let step2 = case mock.0, only, set.contains(only_set, 0) {
    None, None, _ | None, Some(_), True -> step1.action() |> step1.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step1.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step1.next
  }
  let step3 = case mock.1, only, set.contains(only_set, 1) {
    None, None, _ | None, Some(_), True -> step2.action() |> step2.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step2.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step2.next
  }
  let step4 = case mock.2, only, set.contains(only_set, 2) {
    None, None, _ | None, Some(_), True -> step3.action() |> step3.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step3.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step3.next
  }
  let step5 = case mock.3, only, set.contains(only_set, 3) {
    None, None, _ | None, Some(_), True -> step4.action() |> step4.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step4.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step4.next
  }
  let step6 = case mock.4, only, set.contains(only_set, 4) {
    None, None, _ | None, Some(_), True -> step5.action() |> step5.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step5.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step5.next
  }
  let step7 = case mock.5, only, set.contains(only_set, 5) {
    None, None, _ | None, Some(_), True -> step6.action() |> step6.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step6.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step6.next
  }
  case mock.6, only, set.contains(only_set, 6) {
    None, None, _ | None, Some(_), True -> step7.action() |> step7.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step7.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step7.next
  }
}

pub fn use_klubok8(
  mock: Option(
    #(
      Option(fn() -> r1),
      Option(fn() -> r2),
      Option(fn() -> r3),
      Option(fn() -> r4),
      Option(fn() -> r5),
      Option(fn() -> r6),
      Option(fn() -> r7),
      Option(fn() -> r8),
    ),
  ),
  only: Option(Set(Int)),
  init: fn() ->
    Step(
      fn() -> r1,
      fn(r1) ->
        Step(
          fn() -> r2,
          fn(r2) ->
            Step(
              fn() -> r3,
              fn(r3) ->
                Step(
                  fn() -> r4,
                  fn(r4) ->
                    Step(
                      fn() -> r5,
                      fn(r5) ->
                        Step(
                          fn() -> r6,
                          fn(r6) ->
                            Step(
                              fn() -> r7,
                              fn(r7) -> Step(fn() -> r8, fn(r8) -> r9),
                            ),
                        ),
                    ),
                ),
            ),
        ),
    ),
) -> r9 {
  let step1 = init()
  let mock = option.unwrap(mock, none8)
  let only_set = option.unwrap(only, set.new())
  let step2 = case mock.0, only, set.contains(only_set, 0) {
    None, None, _ | None, Some(_), True -> step1.action() |> step1.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step1.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step1.next
  }
  let step3 = case mock.1, only, set.contains(only_set, 1) {
    None, None, _ | None, Some(_), True -> step2.action() |> step2.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step2.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step2.next
  }
  let step4 = case mock.2, only, set.contains(only_set, 2) {
    None, None, _ | None, Some(_), True -> step3.action() |> step3.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step3.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step3.next
  }
  let step5 = case mock.3, only, set.contains(only_set, 3) {
    None, None, _ | None, Some(_), True -> step4.action() |> step4.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step4.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step4.next
  }
  let step6 = case mock.4, only, set.contains(only_set, 4) {
    None, None, _ | None, Some(_), True -> step5.action() |> step5.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step5.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step5.next
  }
  let step7 = case mock.5, only, set.contains(only_set, 5) {
    None, None, _ | None, Some(_), True -> step6.action() |> step6.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step6.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step6.next
  }
  let step8 = case mock.6, only, set.contains(only_set, 6) {
    None, None, _ | None, Some(_), True -> step7.action() |> step7.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step7.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step7.next
  }
  case mock.7, only, set.contains(only_set, 7) {
    None, None, _ | None, Some(_), True -> step8.action() |> step8.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step8.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step8.next
  }
}

pub fn use_klubok9(
  mock: Option(
    #(
      Option(fn() -> r1),
      Option(fn() -> r2),
      Option(fn() -> r3),
      Option(fn() -> r4),
      Option(fn() -> r5),
      Option(fn() -> r6),
      Option(fn() -> r7),
      Option(fn() -> r8),
      Option(fn() -> r9),
    ),
  ),
  only: Option(Set(Int)),
  init: fn() ->
    Step(
      fn() -> r1,
      fn(r1) ->
        Step(
          fn() -> r2,
          fn(r2) ->
            Step(
              fn() -> r3,
              fn(r3) ->
                Step(
                  fn() -> r4,
                  fn(r4) ->
                    Step(
                      fn() -> r5,
                      fn(r5) ->
                        Step(
                          fn() -> r6,
                          fn(r6) ->
                            Step(
                              fn() -> r7,
                              fn(r7) ->
                                Step(
                                  fn() -> r8,
                                  fn(r8) -> Step(fn() -> r9, fn(r9) -> r10),
                                ),
                            ),
                        ),
                    ),
                ),
            ),
        ),
    ),
) -> r10 {
  let step1 = init()
  let mock = option.unwrap(mock, none9)
  let only_set = option.unwrap(only, set.new())
  let step2 = case mock.0, only, set.contains(only_set, 0) {
    None, None, _ | None, Some(_), True -> step1.action() |> step1.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step1.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step1.next
  }
  let step3 = case mock.1, only, set.contains(only_set, 1) {
    None, None, _ | None, Some(_), True -> step2.action() |> step2.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step2.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step2.next
  }
  let step4 = case mock.2, only, set.contains(only_set, 2) {
    None, None, _ | None, Some(_), True -> step3.action() |> step3.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step3.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step3.next
  }
  let step5 = case mock.3, only, set.contains(only_set, 3) {
    None, None, _ | None, Some(_), True -> step4.action() |> step4.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step4.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step4.next
  }
  let step6 = case mock.4, only, set.contains(only_set, 4) {
    None, None, _ | None, Some(_), True -> step5.action() |> step5.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step5.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step5.next
  }
  let step7 = case mock.5, only, set.contains(only_set, 5) {
    None, None, _ | None, Some(_), True -> step6.action() |> step6.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step6.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step6.next
  }
  let step8 = case mock.6, only, set.contains(only_set, 6) {
    None, None, _ | None, Some(_), True -> step7.action() |> step7.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step7.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step7.next
  }
  let step9 = case mock.7, only, set.contains(only_set, 7) {
    None, None, _ | None, Some(_), True -> step8.action() |> step8.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step8.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step8.next
  }
  case mock.8, only, set.contains(only_set, 8) {
    None, None, _ | None, Some(_), True -> step9.action() |> step9.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step9.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step9.next
  }
}

pub fn use_klubok10(
  mock: Option(
    #(
      Option(fn() -> r1),
      Option(fn() -> r2),
      Option(fn() -> r3),
      Option(fn() -> r4),
      Option(fn() -> r5),
      Option(fn() -> r6),
      Option(fn() -> r7),
      Option(fn() -> r8),
      Option(fn() -> r9),
      Option(fn() -> r10),
    ),
  ),
  only: Option(Set(Int)),
  init: fn() ->
    Step(
      fn() -> r1,
      fn(r1) ->
        Step(
          fn() -> r2,
          fn(r2) ->
            Step(
              fn() -> r3,
              fn(r3) ->
                Step(
                  fn() -> r4,
                  fn(r4) ->
                    Step(
                      fn() -> r5,
                      fn(r5) ->
                        Step(
                          fn() -> r6,
                          fn(r6) ->
                            Step(
                              fn() -> r7,
                              fn(r7) ->
                                Step(
                                  fn() -> r8,
                                  fn(r8) ->
                                    Step(
                                      fn() -> r9,
                                      fn(r9) ->
                                        Step(fn() -> r10, fn(r10) -> r11),
                                    ),
                                ),
                            ),
                        ),
                    ),
                ),
            ),
        ),
    ),
) -> r11 {
  let step1 = init()
  let mock = option.unwrap(mock, none10)
  let only_set = option.unwrap(only, set.new())
  let step2 = case mock.0, only, set.contains(only_set, 0) {
    None, None, _ | None, Some(_), True -> step1.action() |> step1.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step1.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step1.next
  }
  let step3 = case mock.1, only, set.contains(only_set, 1) {
    None, None, _ | None, Some(_), True -> step2.action() |> step2.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step2.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step2.next
  }
  let step4 = case mock.2, only, set.contains(only_set, 2) {
    None, None, _ | None, Some(_), True -> step3.action() |> step3.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step3.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step3.next
  }
  let step5 = case mock.3, only, set.contains(only_set, 3) {
    None, None, _ | None, Some(_), True -> step4.action() |> step4.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step4.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step4.next
  }
  let step6 = case mock.4, only, set.contains(only_set, 4) {
    None, None, _ | None, Some(_), True -> step5.action() |> step5.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step5.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step5.next
  }
  let step7 = case mock.5, only, set.contains(only_set, 5) {
    None, None, _ | None, Some(_), True -> step6.action() |> step6.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step6.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step6.next
  }
  let step8 = case mock.6, only, set.contains(only_set, 6) {
    None, None, _ | None, Some(_), True -> step7.action() |> step7.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step7.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step7.next
  }
  let step9 = case mock.7, only, set.contains(only_set, 7) {
    None, None, _ | None, Some(_), True -> step8.action() |> step8.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step8.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step8.next
  }
  let step10 = case mock.8, only, set.contains(only_set, 8) {
    None, None, _ | None, Some(_), True -> step9.action() |> step9.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step9.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step9.next
  }
  case mock.9, only, set.contains(only_set, 9) {
    None, None, _ | None, Some(_), True -> step10.action() |> step10.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step10.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step10.next
  }
}

pub fn use_klubok11(
  mock: Option(
    #(
      Option(fn() -> r1),
      Option(fn() -> r2),
      Option(fn() -> r3),
      Option(fn() -> r4),
      Option(fn() -> r5),
      Option(fn() -> r6),
      Option(fn() -> r7),
      Option(fn() -> r8),
      Option(fn() -> r9),
      Option(fn() -> r10),
      Option(fn() -> r11),
    ),
  ),
  only: Option(Set(Int)),
  init: fn() ->
    Step(
      fn() -> r1,
      fn(r1) ->
        Step(
          fn() -> r2,
          fn(r2) ->
            Step(
              fn() -> r3,
              fn(r3) ->
                Step(
                  fn() -> r4,
                  fn(r4) ->
                    Step(
                      fn() -> r5,
                      fn(r5) ->
                        Step(
                          fn() -> r6,
                          fn(r6) ->
                            Step(
                              fn() -> r7,
                              fn(r7) ->
                                Step(
                                  fn() -> r8,
                                  fn(r8) ->
                                    Step(
                                      fn() -> r9,
                                      fn(r9) ->
                                        Step(
                                          fn() -> r10,
                                          fn(r10) ->
                                            Step(fn() -> r11, fn(r11) -> r12),
                                        ),
                                    ),
                                ),
                            ),
                        ),
                    ),
                ),
            ),
        ),
    ),
) -> r12 {
  let step1 = init()
  let mock = option.unwrap(mock, none11)
  let only_set = option.unwrap(only, set.new())
  let step2 = case mock.0, only, set.contains(only_set, 0) {
    None, None, _ | None, Some(_), True -> step1.action() |> step1.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step1.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step1.next
  }
  let step3 = case mock.1, only, set.contains(only_set, 1) {
    None, None, _ | None, Some(_), True -> step2.action() |> step2.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step2.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step2.next
  }
  let step4 = case mock.2, only, set.contains(only_set, 2) {
    None, None, _ | None, Some(_), True -> step3.action() |> step3.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step3.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step3.next
  }
  let step5 = case mock.3, only, set.contains(only_set, 3) {
    None, None, _ | None, Some(_), True -> step4.action() |> step4.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step4.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step4.next
  }
  let step6 = case mock.4, only, set.contains(only_set, 4) {
    None, None, _ | None, Some(_), True -> step5.action() |> step5.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step5.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step5.next
  }
  let step7 = case mock.5, only, set.contains(only_set, 5) {
    None, None, _ | None, Some(_), True -> step6.action() |> step6.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step6.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step6.next
  }
  let step8 = case mock.6, only, set.contains(only_set, 6) {
    None, None, _ | None, Some(_), True -> step7.action() |> step7.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step7.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step7.next
  }
  let step9 = case mock.7, only, set.contains(only_set, 7) {
    None, None, _ | None, Some(_), True -> step8.action() |> step8.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step8.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step8.next
  }
  let step10 = case mock.8, only, set.contains(only_set, 8) {
    None, None, _ | None, Some(_), True -> step9.action() |> step9.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step9.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step9.next
  }
  let step11 = case mock.9, only, set.contains(only_set, 9) {
    None, None, _ | None, Some(_), True -> step10.action() |> step10.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step10.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step10.next
  }
  case mock.10, only, set.contains(only_set, 10) {
    None, None, _ | None, Some(_), True -> step11.action() |> step11.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step11.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step11.next
  }
}

pub fn use_klubok12(
  mock: Option(
    #(
      Option(fn() -> r1),
      Option(fn() -> r2),
      Option(fn() -> r3),
      Option(fn() -> r4),
      Option(fn() -> r5),
      Option(fn() -> r6),
      Option(fn() -> r7),
      Option(fn() -> r8),
      Option(fn() -> r9),
      Option(fn() -> r10),
      Option(fn() -> r11),
      Option(fn() -> r12),
    ),
  ),
  only: Option(Set(Int)),
  init: fn() ->
    Step(
      fn() -> r1,
      fn(r1) ->
        Step(
          fn() -> r2,
          fn(r2) ->
            Step(
              fn() -> r3,
              fn(r3) ->
                Step(
                  fn() -> r4,
                  fn(r4) ->
                    Step(
                      fn() -> r5,
                      fn(r5) ->
                        Step(
                          fn() -> r6,
                          fn(r6) ->
                            Step(
                              fn() -> r7,
                              fn(r7) ->
                                Step(
                                  fn() -> r8,
                                  fn(r8) ->
                                    Step(
                                      fn() -> r9,
                                      fn(r9) ->
                                        Step(
                                          fn() -> r10,
                                          fn(r10) ->
                                            Step(
                                              fn() -> r11,
                                              fn(r11) ->
                                                Step(
                                                  fn() -> r12,
                                                  fn(r12) -> r13,
                                                ),
                                            ),
                                        ),
                                    ),
                                ),
                            ),
                        ),
                    ),
                ),
            ),
        ),
    ),
) -> r13 {
  let step1 = init()
  let mock = option.unwrap(mock, none12)
  let only_set = option.unwrap(only, set.new())
  let step2 = case mock.0, only, set.contains(only_set, 0) {
    None, None, _ | None, Some(_), True -> step1.action() |> step1.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step1.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step1.next
  }
  let step3 = case mock.1, only, set.contains(only_set, 1) {
    None, None, _ | None, Some(_), True -> step2.action() |> step2.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step2.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step2.next
  }
  let step4 = case mock.2, only, set.contains(only_set, 2) {
    None, None, _ | None, Some(_), True -> step3.action() |> step3.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step3.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step3.next
  }
  let step5 = case mock.3, only, set.contains(only_set, 3) {
    None, None, _ | None, Some(_), True -> step4.action() |> step4.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step4.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step4.next
  }
  let step6 = case mock.4, only, set.contains(only_set, 4) {
    None, None, _ | None, Some(_), True -> step5.action() |> step5.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step5.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step5.next
  }
  let step7 = case mock.5, only, set.contains(only_set, 5) {
    None, None, _ | None, Some(_), True -> step6.action() |> step6.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step6.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step6.next
  }
  let step8 = case mock.6, only, set.contains(only_set, 6) {
    None, None, _ | None, Some(_), True -> step7.action() |> step7.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step7.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step7.next
  }
  let step9 = case mock.7, only, set.contains(only_set, 7) {
    None, None, _ | None, Some(_), True -> step8.action() |> step8.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step8.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step8.next
  }
  let step10 = case mock.8, only, set.contains(only_set, 8) {
    None, None, _ | None, Some(_), True -> step9.action() |> step9.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step9.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step9.next
  }
  let step11 = case mock.9, only, set.contains(only_set, 9) {
    None, None, _ | None, Some(_), True -> step10.action() |> step10.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step10.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step10.next
  }
  let step12 = case mock.10, only, set.contains(only_set, 10) {
    None, None, _ | None, Some(_), True -> step11.action() |> step11.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step11.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step11.next
  }
  case mock.11, only, set.contains(only_set, 11) {
    None, None, _ | None, Some(_), True -> step12.action() |> step12.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step12.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step12.next
  }
}

pub fn use_klubok13(
  mock: Option(
    #(
      Option(fn() -> r1),
      Option(fn() -> r2),
      Option(fn() -> r3),
      Option(fn() -> r4),
      Option(fn() -> r5),
      Option(fn() -> r6),
      Option(fn() -> r7),
      Option(fn() -> r8),
      Option(fn() -> r9),
      Option(fn() -> r10),
      Option(fn() -> r11),
      Option(fn() -> r12),
      Option(fn() -> r13),
    ),
  ),
  only: Option(Set(Int)),
  init: fn() ->
    Step(
      fn() -> r1,
      fn(r1) ->
        Step(
          fn() -> r2,
          fn(r2) ->
            Step(
              fn() -> r3,
              fn(r3) ->
                Step(
                  fn() -> r4,
                  fn(r4) ->
                    Step(
                      fn() -> r5,
                      fn(r5) ->
                        Step(
                          fn() -> r6,
                          fn(r6) ->
                            Step(
                              fn() -> r7,
                              fn(r7) ->
                                Step(
                                  fn() -> r8,
                                  fn(r8) ->
                                    Step(
                                      fn() -> r9,
                                      fn(r9) ->
                                        Step(
                                          fn() -> r10,
                                          fn(r10) ->
                                            Step(
                                              fn() -> r11,
                                              fn(r11) ->
                                                Step(
                                                  fn() -> r12,
                                                  fn(r12) ->
                                                    Step(
                                                      fn() -> r13,
                                                      fn(r13) -> r14,
                                                    ),
                                                ),
                                            ),
                                        ),
                                    ),
                                ),
                            ),
                        ),
                    ),
                ),
            ),
        ),
    ),
) -> r14 {
  let step1 = init()
  let mock = option.unwrap(mock, none13)
  let only_set = option.unwrap(only, set.new())
  let step2 = case mock.0, only, set.contains(only_set, 0) {
    None, None, _ | None, Some(_), True -> step1.action() |> step1.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step1.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step1.next
  }
  let step3 = case mock.1, only, set.contains(only_set, 1) {
    None, None, _ | None, Some(_), True -> step2.action() |> step2.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step2.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step2.next
  }
  let step4 = case mock.2, only, set.contains(only_set, 2) {
    None, None, _ | None, Some(_), True -> step3.action() |> step3.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step3.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step3.next
  }
  let step5 = case mock.3, only, set.contains(only_set, 3) {
    None, None, _ | None, Some(_), True -> step4.action() |> step4.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step4.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step4.next
  }
  let step6 = case mock.4, only, set.contains(only_set, 4) {
    None, None, _ | None, Some(_), True -> step5.action() |> step5.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step5.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step5.next
  }
  let step7 = case mock.5, only, set.contains(only_set, 5) {
    None, None, _ | None, Some(_), True -> step6.action() |> step6.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step6.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step6.next
  }
  let step8 = case mock.6, only, set.contains(only_set, 6) {
    None, None, _ | None, Some(_), True -> step7.action() |> step7.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step7.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step7.next
  }
  let step9 = case mock.7, only, set.contains(only_set, 7) {
    None, None, _ | None, Some(_), True -> step8.action() |> step8.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step8.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step8.next
  }
  let step10 = case mock.8, only, set.contains(only_set, 8) {
    None, None, _ | None, Some(_), True -> step9.action() |> step9.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step9.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step9.next
  }
  let step11 = case mock.9, only, set.contains(only_set, 9) {
    None, None, _ | None, Some(_), True -> step10.action() |> step10.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step10.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step10.next
  }
  let step12 = case mock.10, only, set.contains(only_set, 10) {
    None, None, _ | None, Some(_), True -> step11.action() |> step11.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step11.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step11.next
  }
  let step13 = case mock.11, only, set.contains(only_set, 11) {
    None, None, _ | None, Some(_), True -> step12.action() |> step12.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step12.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step12.next
  }
  case mock.12, only, set.contains(only_set, 12) {
    None, None, _ | None, Some(_), True -> step13.action() |> step13.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step13.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step13.next
  }
}

pub fn use_klubok14(
  mock: Option(
    #(
      Option(fn() -> r1),
      Option(fn() -> r2),
      Option(fn() -> r3),
      Option(fn() -> r4),
      Option(fn() -> r5),
      Option(fn() -> r6),
      Option(fn() -> r7),
      Option(fn() -> r8),
      Option(fn() -> r9),
      Option(fn() -> r10),
      Option(fn() -> r11),
      Option(fn() -> r12),
      Option(fn() -> r13),
      Option(fn() -> r14),
    ),
  ),
  only: Option(Set(Int)),
  init: fn() ->
    Step(
      fn() -> r1,
      fn(r1) ->
        Step(
          fn() -> r2,
          fn(r2) ->
            Step(
              fn() -> r3,
              fn(r3) ->
                Step(
                  fn() -> r4,
                  fn(r4) ->
                    Step(
                      fn() -> r5,
                      fn(r5) ->
                        Step(
                          fn() -> r6,
                          fn(r6) ->
                            Step(
                              fn() -> r7,
                              fn(r7) ->
                                Step(
                                  fn() -> r8,
                                  fn(r8) ->
                                    Step(
                                      fn() -> r9,
                                      fn(r9) ->
                                        Step(
                                          fn() -> r10,
                                          fn(r10) ->
                                            Step(
                                              fn() -> r11,
                                              fn(r11) ->
                                                Step(
                                                  fn() -> r12,
                                                  fn(r12) ->
                                                    Step(
                                                      fn() -> r13,
                                                      fn(r13) ->
                                                        Step(
                                                          fn() -> r14,
                                                          fn(r14) -> r15,
                                                        ),
                                                    ),
                                                ),
                                            ),
                                        ),
                                    ),
                                ),
                            ),
                        ),
                    ),
                ),
            ),
        ),
    ),
) -> r15 {
  let step1 = init()
  let mock = option.unwrap(mock, none14)
  let only_set = option.unwrap(only, set.new())
  let step2 = case mock.0, only, set.contains(only_set, 0) {
    None, None, _ | None, Some(_), True -> step1.action() |> step1.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step1.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step1.next
  }
  let step3 = case mock.1, only, set.contains(only_set, 1) {
    None, None, _ | None, Some(_), True -> step2.action() |> step2.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step2.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step2.next
  }
  let step4 = case mock.2, only, set.contains(only_set, 2) {
    None, None, _ | None, Some(_), True -> step3.action() |> step3.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step3.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step3.next
  }
  let step5 = case mock.3, only, set.contains(only_set, 3) {
    None, None, _ | None, Some(_), True -> step4.action() |> step4.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step4.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step4.next
  }
  let step6 = case mock.4, only, set.contains(only_set, 4) {
    None, None, _ | None, Some(_), True -> step5.action() |> step5.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step5.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step5.next
  }
  let step7 = case mock.5, only, set.contains(only_set, 5) {
    None, None, _ | None, Some(_), True -> step6.action() |> step6.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step6.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step6.next
  }
  let step8 = case mock.6, only, set.contains(only_set, 6) {
    None, None, _ | None, Some(_), True -> step7.action() |> step7.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step7.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step7.next
  }
  let step9 = case mock.7, only, set.contains(only_set, 7) {
    None, None, _ | None, Some(_), True -> step8.action() |> step8.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step8.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step8.next
  }
  let step10 = case mock.8, only, set.contains(only_set, 8) {
    None, None, _ | None, Some(_), True -> step9.action() |> step9.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step9.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step9.next
  }
  let step11 = case mock.9, only, set.contains(only_set, 9) {
    None, None, _ | None, Some(_), True -> step10.action() |> step10.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step10.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step10.next
  }
  let step12 = case mock.10, only, set.contains(only_set, 10) {
    None, None, _ | None, Some(_), True -> step11.action() |> step11.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step11.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step11.next
  }
  let step13 = case mock.11, only, set.contains(only_set, 11) {
    None, None, _ | None, Some(_), True -> step12.action() |> step12.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step12.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step12.next
  }
  let step14 = case mock.12, only, set.contains(only_set, 12) {
    None, None, _ | None, Some(_), True -> step13.action() |> step13.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step13.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step13.next
  }
  case mock.13, only, set.contains(only_set, 13) {
    None, None, _ | None, Some(_), True -> step14.action() |> step14.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step14.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step14.next
  }
}

pub fn use_klubok15(
  mock: Option(
    #(
      Option(fn() -> r1),
      Option(fn() -> r2),
      Option(fn() -> r3),
      Option(fn() -> r4),
      Option(fn() -> r5),
      Option(fn() -> r6),
      Option(fn() -> r7),
      Option(fn() -> r8),
      Option(fn() -> r9),
      Option(fn() -> r10),
      Option(fn() -> r11),
      Option(fn() -> r12),
      Option(fn() -> r13),
      Option(fn() -> r14),
      Option(fn() -> r15),
    ),
  ),
  only: Option(Set(Int)),
  init: fn() ->
    Step(
      fn() -> r1,
      fn(r1) ->
        Step(
          fn() -> r2,
          fn(r2) ->
            Step(
              fn() -> r3,
              fn(r3) ->
                Step(
                  fn() -> r4,
                  fn(r4) ->
                    Step(
                      fn() -> r5,
                      fn(r5) ->
                        Step(
                          fn() -> r6,
                          fn(r6) ->
                            Step(
                              fn() -> r7,
                              fn(r7) ->
                                Step(
                                  fn() -> r8,
                                  fn(r8) ->
                                    Step(
                                      fn() -> r9,
                                      fn(r9) ->
                                        Step(
                                          fn() -> r10,
                                          fn(r10) ->
                                            Step(
                                              fn() -> r11,
                                              fn(r11) ->
                                                Step(
                                                  fn() -> r12,
                                                  fn(r12) ->
                                                    Step(
                                                      fn() -> r13,
                                                      fn(r13) ->
                                                        Step(
                                                          fn() -> r14,
                                                          fn(r14) ->
                                                            Step(
                                                              fn() -> r15,
                                                              fn(r15) -> r16,
                                                            ),
                                                        ),
                                                    ),
                                                ),
                                            ),
                                        ),
                                    ),
                                ),
                            ),
                        ),
                    ),
                ),
            ),
        ),
    ),
) -> r16 {
  let step1 = init()
  let mock = option.unwrap(mock, none15)
  let only_set = option.unwrap(only, set.new())
  let step2 = case mock.0, only, set.contains(only_set, 0) {
    None, None, _ | None, Some(_), True -> step1.action() |> step1.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step1.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step1.next
  }
  let step3 = case mock.1, only, set.contains(only_set, 1) {
    None, None, _ | None, Some(_), True -> step2.action() |> step2.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step2.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step2.next
  }
  let step4 = case mock.2, only, set.contains(only_set, 2) {
    None, None, _ | None, Some(_), True -> step3.action() |> step3.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step3.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step3.next
  }
  let step5 = case mock.3, only, set.contains(only_set, 3) {
    None, None, _ | None, Some(_), True -> step4.action() |> step4.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step4.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step4.next
  }
  let step6 = case mock.4, only, set.contains(only_set, 4) {
    None, None, _ | None, Some(_), True -> step5.action() |> step5.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step5.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step5.next
  }
  let step7 = case mock.5, only, set.contains(only_set, 5) {
    None, None, _ | None, Some(_), True -> step6.action() |> step6.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step6.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step6.next
  }
  let step8 = case mock.6, only, set.contains(only_set, 6) {
    None, None, _ | None, Some(_), True -> step7.action() |> step7.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step7.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step7.next
  }
  let step9 = case mock.7, only, set.contains(only_set, 7) {
    None, None, _ | None, Some(_), True -> step8.action() |> step8.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step8.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step8.next
  }
  let step10 = case mock.8, only, set.contains(only_set, 8) {
    None, None, _ | None, Some(_), True -> step9.action() |> step9.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step9.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step9.next
  }
  let step11 = case mock.9, only, set.contains(only_set, 9) {
    None, None, _ | None, Some(_), True -> step10.action() |> step10.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step10.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step10.next
  }
  let step12 = case mock.10, only, set.contains(only_set, 10) {
    None, None, _ | None, Some(_), True -> step11.action() |> step11.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step11.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step11.next
  }
  let step13 = case mock.11, only, set.contains(only_set, 11) {
    None, None, _ | None, Some(_), True -> step12.action() |> step12.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step12.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step12.next
  }
  let step14 = case mock.12, only, set.contains(only_set, 12) {
    None, None, _ | None, Some(_), True -> step13.action() |> step13.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step13.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step13.next
  }
  let step15 = case mock.13, only, set.contains(only_set, 13) {
    None, None, _ | None, Some(_), True -> step14.action() |> step14.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step14.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step14.next
  }
  case mock.14, only, set.contains(only_set, 14) {
    None, None, _ | None, Some(_), True -> step15.action() |> step15.next
    Some(action), None, _ | Some(action), Some(_), True ->
      action() |> step15.next
    _, Some(_), False -> Nil |> dynamic.from |> unsafe_coerce |> step15.next
  }
}

@external(erlang, "gleam_stdlib", "identity")
@external(javascript, "../gleam_stdlib/gleam_stdlib.mjs", "identity")
fn unsafe_coerce(a: Dynamic) -> a
