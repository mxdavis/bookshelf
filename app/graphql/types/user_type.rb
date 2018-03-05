Types::UserType = GraphQL::ObjectType.define do
  name 'UserType'

  field :email, !types.String
  field :is_superadmin, types.Boolean
  field :id, types.ID

end
