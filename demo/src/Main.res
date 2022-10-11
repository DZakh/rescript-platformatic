let run = () => {
  Platformatic.SqlMapper.connect({
    connectionString: "sqlite://./pages.db",
    ignore: Js.Dict.fromArray([("versions", true)]),
  })->Promise.thenResolve(mapper => {
    Js.Console.error(mapper.entities->Js.Dict.keys)
  })
}
