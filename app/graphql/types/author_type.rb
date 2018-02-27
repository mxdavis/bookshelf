Types::AuthorType = GraphQL::ObjectType.define do
  name "AuthorType"

  field :first_name, types.String
  field :last_name, types.String
  field :birth_year, types.Int
  field :is_alive, types.Boolean
  field :id, !types.ID

  field :full_name, types.String do
    description "The full name of the author"
    resolve -> (o, _, _){ [o.first_name, o.last_name].compact.join(' ')}
  end

  #since the field matches the model method and we are importing
  # PairTypes we don't need to have a resolve
  field :coordinates, Types::PairType do
    description "The coordinates of the author"
  end
end
