class Mutations::UpdateAuthor < GraphQL::Function

  argument :id, types.ID
  argument :author, Types::AuthorInputType

  type Types::AuthorType

  # sample query for update author's first name
  #  mutation updateAuthor($author:AuthorInputType) {
  #    updateAuthor(id: 6, author: $author) {
  #      id
  #      full_name
  #    }
  #  }
  # query Variable
  #  {
  #    "author": {
  #      "first_name":"Jerry"
  #    }
  #  }

  def call(obj, args, ctx)
    author = Author.find(args[:id])
    author.try :update, args[:author].to_h
    author
  end

end
