CREATE FUNCTION import_parquet(
    tablename  text,
    schemaname text,
    servername text,
    func       regproc,
    arg        jsonb,
    options    jsonb default NULL)
RETURNS VOID
AS 'MODULE_PATHNAME'
LANGUAGE C;

CREATE FUNCTION import_parquet(
    tablename  text,
    schemaname text,
    servername text,
    attrs      jsonb,
    func       regproc,
    arg        jsonb,
    options    jsonb default NULL)
RETURNS VOID
AS 'MODULE_PATHNAME', 'import_parquet_with_attrs'
LANGUAGE C;

