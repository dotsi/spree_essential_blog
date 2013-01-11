module SpreeEssentials
  module Generators
    class BlogGenerator < Rails::Generators::Base
      
      def copy_migrations
        rake "spree_essential_blog:install:migrations"
      end
      
      def add_stylesheets
        inject_into_file "app/assets/stylesheets/store/all.css", " *= require store/spree_essential_blog\n", :before => /\*\//, :verbose => true
      end
    end
  end
end
