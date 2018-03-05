GraphQL::Field.accepts_definitions is_public: GraphQL::Define.assign_metadata_key(:is_public)

BookshelfSchema = GraphQL::Schema.define do
  mutation(Types::MutationType)
  query(Types::QueryType)
end
