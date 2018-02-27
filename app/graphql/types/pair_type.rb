Types::PairType = GraphQL::ObjectType.define do
  name 'PairType'
  description 'A pair of coordinates'

  field :latitude, types.Float do
    resolve ->(o, _, _) {o.first}
  end

  field :longitude, types.Float do
    resolve ->(o, _, _) {o.last}
  end
end
