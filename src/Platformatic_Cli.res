type options = {path: string}

let run = (options: options) => {
  Js.log(options)
}

run({path: "test"})
