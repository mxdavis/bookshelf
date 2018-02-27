class Mutations::UpdateAuthor < GraphQL::Function


  argument :id, types.ID
  argument :first_name, types.String
  argument :last_name, types.String
  argument :birth_year, types.Int
  argument :is_alive, types.Boolean

  type Types::AuthorType

  #sample query for update author's first name
  # mutation {
  #   updateAuthor(id:3, first_name:"Jack") {
  #     id
  #     full_name
  #   }
  # }

  def call(obj, args, ctx)
    author = Author.find(args[:id])
    author.try :update, args.to_h
    author
  end

end
