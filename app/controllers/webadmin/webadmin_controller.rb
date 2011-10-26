class Webadmin::WebadminController < ApplicationController
  # before_filter :authenticate_admin!
  layout 'layouts/webadmin'
  @title = "Campus Taps Admin"
end
