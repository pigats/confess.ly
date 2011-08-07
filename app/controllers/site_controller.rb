class SiteController < ApplicationController
  def index
 		@latest = Confession.order('created_at DESC').limit(5)
 		@top = Confession.order('views DESC').limit(5)
  end

end
