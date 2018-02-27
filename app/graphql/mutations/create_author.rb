class Mutations::CreateAuthor < GraphQL::Function

  argument :first_name, types.String
  argument :last_name, types.String
  argument :birth_year, types.Int
  argument :is_alive, types.Boolean

  type Types::AuthorType

  def call(obj, args, ctx)
    Author.create args.to_h
  end

end
