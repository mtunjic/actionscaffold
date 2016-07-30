#
#  controller_generator.rb
#
#  Created by Marko Tunjic on 15/07/16.
#  Copyright © 2016 Marko Tunjic. All rights reserved.
#
module ActionsSaffold
   module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "This generator override default scaffold generator for controllers."
      source_root File.expand_path("../templates", __FILE__)
      def copy_template_file
        copy_file "controller.rb",
          "lib/templates/rails/scaffold_controller/controller.rb"
      end
    end
  end
end

