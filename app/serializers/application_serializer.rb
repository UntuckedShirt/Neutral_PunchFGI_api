class ApplicationSerializer < ActiveModel::Serializer
    include Rails.application.routes.url_helpers
    default_url_options[:host] = 'Neutral_PunchFGI_api'
end