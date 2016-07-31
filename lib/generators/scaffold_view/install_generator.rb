#
#  controller_generator.rb
#
#  Created by Marko Tunjic on 15/07/16.
#  Copyright © 2016 Marko Tunjic. All rights reserved.
#
# require 'rails/generators/erb'
# require 'rails/generators/resource_helpers'

module ScaffoldView
   module Generators
    class InstallGenerator < Rails::Generators::Base
      #include Rails::Generators::ResourceHelpers

      #argument :ui, :type => :string, :default => 'bootstrap'
      #argument :attributes, type: :array, default: [], banner: "field:type field:type"
      ui = "bootstrap"
      desc "This generator override default scaffold generator for views."
      source_root File.expand_path("../templates/#{ui}", __FILE__)


      def copy_template_file
        #puts argument[:ui]
        %w(index _form).each do |template|
          copy_file "#{template}.html.erb",
            "lib/templates/erb/scaffold/#{template}.html.erb"
        end
      end


    end
  end
end

