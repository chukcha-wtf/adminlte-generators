require "rails"

module Adminlte
  module Generators
    class Engine < ::Rails::Engine
      config.app_generators.stylesheets false

      # config.app_generators do |g|
      #   g.templates.unshift File::expand_path('../templates', __FILE__)
      # end
    end
  end
end
