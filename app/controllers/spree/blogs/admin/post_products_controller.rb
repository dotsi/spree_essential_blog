class Spree::Blogs::Admin::PostProductsController < Spree::Admin::BaseController
  
  before_filter :load_data
  
  def create
    position = @post.products.count
    if params[:taxon_id] != ""
      @taxon = Spree::Taxon.find(params[:taxon_id])
      for p in @taxon.products
        Spree::PostProduct.create(:post_id => @post.id, :product_id => p.id, :position => position)
        position += 1
      end
    else  
      @product = Spree::Variant.find(params[:variant_id]).product
      Spree::PostProduct.create(:post_id => @post.id, :product_id => @product.id, :position => position)
    end
    render :partial => "spree/blogs/admin/post_products/related_products_table", :locals => { :post => @post }, :layout => false
  end
    
  def destroy
    @related = Spree::PostProduct.find(params[:id])
    if @related.destroy
      render_js_for_destroy
    end
  end
    
  private
  
    def load_data
	  	@post = Spree::Post.find_by_path(params[:post_id])
    end

end