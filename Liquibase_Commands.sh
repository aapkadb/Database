export PATH=$PATH:/home/codecraftman/snap/liquibase-4.28.0

liquibase --version

liquibase status --verbose

liquibase update

liquibase --defaults-file=liquibase_local.properties status --verbose

liquibase --defaults-file=liquibase_local.properties update

