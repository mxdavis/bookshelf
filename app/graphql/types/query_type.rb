Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # Login Query
  # {
  #   login(email: "john@example.com", password: "12")
  # }
  field :login, types.String do
    argument :email, types.String
    argument :password, types.String

    resolve ->(_, args, _) {
      user = User.where(email: args[:email]).first
      user.sessions.create.key if user.try(:authenticate, args[:password])
    }
  end

  # Query
  # {
  #   current_user: {
  #    id
  #    email
  #  }
  # }
  field :current_user, Types::UserType do
    resolve ->(_, _, ctx) { ctx[:current_user] }
  end

  field :author, Types::AuthorType do
    argument :id, types.ID
    description "One Author"
    resolve ->(obj, args, ctx) {
      Author.where(id: args[:id]).first
    }
  end

  field :all_authors, types[Types::AuthorType] do
    is_public true
    description "All the authors in the database"
    resolve ->(_, _, _) {Author.all}
  end
end
