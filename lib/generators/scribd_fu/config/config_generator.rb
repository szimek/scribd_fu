require 'rails/generators/base'

module ScribdFu
  module Generators
    class ConfigGenerator < Rails::Generators::Base
      # Points to the original templates directory
      def self.source_root
        @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), '..', '..', '..', '..', 'generators', 'scribd_fu', 'templates'))
      end

      desc "This generator creates a scribd_fu configuration file"
      def copy_configuration_file
        copy_file 'scribd_fu.yml', 'config/scridb_fu.yml'
      end
    end
  end
end
