class ApplicationController < ActionController::Base
  before_action :set_tenant

  private
  def set_tenant
    @tenant = Author.find_by!(slug: request.subdomain).slug
  end

end
