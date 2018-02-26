Types::AuthorType = GraphQL::ObjectType.define do
  name "AuthorType"

  field :first_name, types.String
  field :last_name, types.String
  field :birth_year, types.Int
  field :is_alive, types.Boolean
  field :id, types.ID
end
