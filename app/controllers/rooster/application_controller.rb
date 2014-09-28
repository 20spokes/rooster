class Rooster::ApplicationController < ActionController::Base
  include Rooster.config.admin_auth.to_s.constantize

  #before_filter :authenticate_user!

  layout 'layouts/rooster/cms'
end
