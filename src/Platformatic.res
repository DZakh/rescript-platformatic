type logger
type todo

module SqlMapper = {
  type database
  type sql
  type entity = {
    /**
    * The origin name of the database entity.
    */
    name: string,
    /**
    * The name of the database object in the singular.
    */
    singularName: string,
    /**
    * The plural name of the database entity.
    */
    pluralName: string,
    /**
    * The primary key of the database entity.
    */
    primaryKey: string,
    /**
    * The table of the database entity.
    */
    table: string,
    /**
    * Fields of the database entity.
    */
    fields: todo,
    /**
    * Camel cased fields of the database entity.
    */
    camelCasedFields: todo,
    /**
    * Relations with other database entities.
    */
    relations: array<todo>,
    /**
    * Converts entities fields names to database column names.
    */
    fixInput: todo,
    /**
    * Converts database column names to entities fields names.
    */
    fixOutput: todo,
    /**
    * Selects matching entities from the database.
    */
    find: todo,
    /**
    * Inserts entities to the database.
    */
    insert: todo,
    /**
    * Saves entity to the database.
    */
    save: todo,
    /**
    * Deletes entities from the database.
    */
    delete: todo,
    /**
    * Count the entities considering the where condition.
    */
    count: todo,
  }
  type entities = Js.Dict.t<entity>
  type t = {
    db: database,
    sql: sql,
    entities: entities,
    addEntityHooks: (~entityName: string, ~hooks: todo) => ()
  }
  
  type options = {
    /**
     * Database connection string.
     */
    connectionString: string,
    /**
     * Set to true to enable auto timestamping for updated_at and inserted_at fields.
     */
    autoTimestamp?: bool,
    /**
     * A logger object (like [Pino](https://getpino.io))
     */
    // TODO: Add interface for logger
    log?: logger,
    /**
     * Database table to ignore when mapping to entities.
     * TypeScript type:
     * [tableName: string]: {
     *   [columnName: string]: boolean
     * } | boolean
     */
    // TODO: Support ignore of specific columns
    ignore?: Js.Dict.t<bool>,
    /**
     * An async function that is called after the connection is established.
    */
    onDatabaseLoad?: (~db: database, ~sql: sql) => unit,
  }

  @module("@platformatic/sql-mapper")
  external connect: options => Js.Promise.t<t> = "connect"
}
