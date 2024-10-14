require 'rails/generators/erb/scaffold/scaffold_generator'

module Rails
  module Generators
    class ViewGenerator < ::Erb::Generators::ScaffoldGenerator # Rails::Generators::NamedBase
      source_root ::Erb::Generators::ScaffoldGenerator.source_root

      def self.usage_path
        paths = [
          File.expand_path("USAGE", File.dirname(__FILE__)),
        ]
        paths.compact.detect { |path| File.exist? path }
      end
    end
  end
end