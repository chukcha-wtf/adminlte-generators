require "rails"

module Adminlte
  module Generators
    class Engine < ::Rails::Engine
      config.app_generators.stylesheets false

      initializer 'adminlte-generators.setup', group: :all do |app|
        app.config.assets.paths << ::Rails.root.join('app', 'assets', 'fonts')

        app.config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/
      end

      config.app_generators do |g|
        g.templates.unshift File::expand_path('../../templates', __FILE__)
      end
    end
  end
end
