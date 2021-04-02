# How to reproduce

1. `docker-compose up --build -d && docker-compose logs -f`
2. In ./src/graphql/typeDefs/Query.graphql change ` test: Boolean!` to ` test: Boolean!!` and hit save

The console will only display Failed to load schema instead of the actual error
