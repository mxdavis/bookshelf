GraphQL::Field.accepts_definitions is_public: GraphQL::Define.assign_metadata_key(:is_public)
GraphQL::Field.accepts_definitions must_be: GraphQL::Define.assign_metadata_key(:must_be)

BookshelfSchema = GraphQL::Schema.define do
  mutation(Types::MutationType)
  query(Types::QueryType)
end
