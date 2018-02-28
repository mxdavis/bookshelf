class Mutations::CreateAuthor < GraphQL::Function

  argument :author, Types::AuthorInputType

  type Types::AuthorType

  # Query
  # mutation createAuthor($author:AuthorInputType) {
  #   createAuthor(author: $author) {
  #     id
  #     full_name
  #   }
  # }
  # Query Variable
  # {
  #   "author": {
  #     "first_name":"Mike",
  #     "last_name":"Smith",
  #     "birth_year":1954,
  #     "is_alive": true
  #   }
  # }

  def call(obj, args, ctx)
    Author.create args[:author].to_h
  end

end
