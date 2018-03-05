GraphiQL::Rails.config.headers['Authorization'] = ->(context) {Session.first.key}
