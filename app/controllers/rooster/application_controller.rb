class Rooster::ApplicationController < ActionController::Base
  before_filter :authenticate_user!

  layout 'layouts/rooster/cms'
end
