#
#  install_generator.rb
#
#  Created by Marko Tunjic on 15/07/16.
#  Copyright © 2016 Marko Tunjic. All rights reserved.
#
module ScaffoldView
   module Generators
    class InstallGenerator < Rails::Generators::Base

      source_root File.expand_path("../templates", __FILE__)

      desc "This generator override default scaffold generator for views."
      argument :ui, :type    => :string,
                    :default     => "bootstrap",
                    :description => "Include stylesheets"

      def copy_template_file
        # copy stylesheets
        directory 'stylesheets', "vendor/assets/stylesheets/#{ui}"
        # copy templates
        %w(index show _form new edit).each do |template|
          copy_file "#{ui}/#{template}.html.erb",
            "lib/templates/erb/scaffold/#{template}.html.erb"
        end
      end

    end
  end
end
