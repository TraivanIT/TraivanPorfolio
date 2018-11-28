module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end
  
  def set_page_defaults
    @page_title = "Traivan Portfolio"
    @seo_keywords = " Traivan Von Portfolio"
  end

end