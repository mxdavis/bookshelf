Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"


  # query to call this Mutation with id and full name being returned after author created
  # mutation {
  #   createAuthor(first_name:"Jim", last_name: "Smith", birth_year: 1900, is_alive: false) {
  #    id
  #    full_name
  #  }
  # }

  field :createAuthor, Types::AuthorType do
    argument :first_name, types.String
    argument :last_name, types.String
    argument :birth_year, types.Int
    argument :is_alive, types.Boolean

    resolve ->(obj, args, ctx) { Author.create args.to_h }
  end
end
