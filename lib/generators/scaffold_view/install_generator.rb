#
#  install_generator.rb
#
#  Created by Marko Tunjic on 15/07/16.
#  Copyright © 2016 Marko Tunjic. All rights reserved.
#
module ScaffoldView
   module Generators
    class InstallGenerator < Rails::Generators::Base

      # TODO: add opt args
      argument :ui, :type => :string, :default => "bootstrap"
      ui = "bootstrap"
      desc "This generator override default scaffold generator for views."
      source_root File.expand_path("../templates/#{ui}", __FILE__)

      def copy_template_file
        %w(index show _form new edit).each do |template|
          copy_file "#{template}.html.erb",
            "lib/templates/erb/scaffold/#{template}.html.erb"
        end
      end

    end
  end
end
