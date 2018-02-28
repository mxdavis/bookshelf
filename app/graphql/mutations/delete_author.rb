class Mutations::DeleteAuthor < GraphQL::Function

  argument :id, types.ID

  #what the call returns
  type types.Boolean

  # sample query for delete author
  # mutation {
  #   deleteAuthor(id: 6) {}
  # }

  def call(obj, args, ctx)
    author = Author.find(args[:id])
    !!author.destroy
  end

end
