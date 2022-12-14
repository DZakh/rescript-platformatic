// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Js_dict = require("rescript/lib/js/js_dict.js");
var Caml_option = require("rescript/lib/js/caml_option.js");
var SqlMapper = require("@platformatic/sql-mapper");

function run(param) {
  return SqlMapper.connect({
                connectionString: "sqlite://./pages.db",
                ignore: Caml_option.some(Js_dict.fromArray([[
                            "versions",
                            true
                          ]]))
              }).then(function (mapper) {
              console.error(Object.keys(mapper.entities));
            });
}

exports.run = run;
/* @platformatic/sql-mapper Not a pure module */
