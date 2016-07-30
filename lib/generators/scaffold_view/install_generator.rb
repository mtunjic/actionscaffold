#
#  controller_generator.rb
#
#  Created by Marko Tunjic on 15/07/16.
#  Copyright © 2016 Marko Tunjic. All rights reserved.
#
module ScaffoldView
   module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "This generator override default scaffold generator for views."
      source_root File.expand_path("../templates", __FILE__)
      def copy_template_file
        copy_file "_form.html.erb",
          "lib/templates/erb/scaffold/_form.html.erb"
      end
    end
  end
end

