module DefaultPageContent
  extend ActiveSupport:: Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title  = "Portfolio | My Portfolio Website"
    @seo_keyword = "Yohanan Assefa's Portfolio"
  end
end
