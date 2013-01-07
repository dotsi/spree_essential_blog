Deface::Override.new(:virtual_path  => "spree/admin/shared/_configuration_menu",
                     :name          => "blog_disqus_admin_configurations_menu",
                     :insert_bottom => "[data-hook='admin_configurations_sidebar_menu'], #admin_configurations_sidebar_menu[data-hook]",
                     :partial       => "spree/blogs/admin/shared/blog_config",
                     :disabled      => false)
