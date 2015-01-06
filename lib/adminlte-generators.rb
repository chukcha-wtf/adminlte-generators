require "rails"

module Adminlte
  module Generators
    class Engine < ::Rails::Engine
      config.app_generators.stylesheets false

      initializer 'adminlte-generators.setup', group: :all do |app|
        app.config.assets.paths << ::Rails.root.join('app', 'assets', 'fonts')

        app.config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/
      end
    end
  end
end
