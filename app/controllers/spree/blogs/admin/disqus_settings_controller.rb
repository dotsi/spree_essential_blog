class Spree::Blogs::Admin::DisqusSettingsController < Spree::Admin::BaseController
  helper_method :collection_url

  def edit
    @preferences = ['disqus_shortname']
    @config = Spree::BlogConfiguration.new
  end

  def update
    config = Spree::BlogConfiguration.new

    params.each do |name, value|
      next unless config.has_preference? name
      config[name] = value
    end

    redirect_to edit_admin_disqus_settings_path
  end

  protected

    def collection_url
      admin_disqus_settings_url
    end

end
