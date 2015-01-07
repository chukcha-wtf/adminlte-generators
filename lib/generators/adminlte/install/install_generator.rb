require 'rails/generators'

module Adminlte
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc 'Copy AdminLTE Generators default files'
      source_root ::File.expand_path('../templates', __FILE__)

      class_option :template_engine, :default => 'erb'
      class_option :stylesheet_engine, :default => 'scss'
      class_option :layout_name, :default => 'application'
      class_option :skin, :default => 'blue', desc: 'AdminLTE skin color'
      class_option :skip_turbolinks, :type => :boolean, :default => false, :desc => "Skip Turbolinks on assets"

      def copy_lib
        directory "lib/templates/#{options[:template_engine]}"
      end

      def copy_form_builder
        copy_file "form_builder/_form.html.#{options[:template_engine]}", "lib/templates/#{options[:template_engine]}/scaffold/_form.html.#{options[:template_engine]}" 
      end

      def copy_nav_helper
        copy_file "helpers/navigation_helper.rb", "app/helpers/nav_helper.rb"
      end

      def create_layout
        template "layouts/dashboard.html.#{options[:template_engine]}", "app/views/layouts/#{options[:layout_name]}.html.#{options[:template_engine]}"
        template "layouts/_header.html.#{options[:template_engine]}", "app/views/layouts/_#{options[:layout_name]}_header.html.#{options[:template_engine]}"
        template "layouts/_sidebar.html.#{options[:template_engine]}", "app/views/layouts/_#{options[:layout_name]}_sidebar.html.#{options[:template_engine]}"
      end

      def create_stylesheets
        copy_file "assets/stylesheets/adminlte_overrides.#{options[:stylesheet_engine]}", "app/assets/stylesheets/adminlte_overrides.#{options[:stylesheet_engine]}"
      end

      def inject_adminlte
        application_js_path = "app/assets/javascripts/#{options[:layout_name]}.js"

        if ::File.exists?(::File.join(destination_root, application_js_path))
          inject_into_file application_js_path, before: '//= require_tree' do
            "//= require adminlte/bootstrap\n"+
            "//= require adminlte/app\n"
          end
        end
      end
    end
  end
end
