#
#  layout_generator.rb
#
#  Created by Marko Tunjic on 15/07/16.
#  Copyright © 2016 Marko Tunjic. All rights reserved.
#

class LayoutGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  argument :ui, :type => :string, :default => "bootstrap"

  class_option :stylesheet, :type        => :boolean,
                            :default     => true,
                            :description => "Include stylesheets"

  def generate_layout
    if options.stylesheet?
      copy_file "application.scss", "public/stylesheets/application.scss"
    end
    template "layout.html.erb", "app/views/layouts/application.html.erb"

  end
end



