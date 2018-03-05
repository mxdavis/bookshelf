Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"


  # query to call this Mutation with id and full name being returned after author created
  # mutation {
  #   createAuthor(first_name:"Jim", last_name: "Smith", birth_year: 1900, is_alive: false) {
  #    id
  #    full_name
  #  }
  # }

  field :createAuthor, function: Mutations::CreateAuthor.new
  field :updateAuthor, function: Mutations::UpdateAuthor.new
  field :deleteAuthor, function: Mutations::DeleteAuthor.new

  # Query
  # mutation { logout }
  field :logout, types.Boolean do
    resolve ->(_, _, ctx) {Session.where(key: ctx[:session_key]).destroy_all}
  end

end
