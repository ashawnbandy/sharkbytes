class CorePagesController < ApplicationController
  before_filter :signed_in_user, only: [:home]

  # The 'splash' page is the root path ('/') that is presented to users
  # who try to access any protected page. It has a login and some basic
  # static page links. If the user is currently in a logged-in session,
  # the user should be immediatly forwarded to their home page (Users#home)
  # Note that this is ALSO currently aliased as new_user_session (/signin)
  # which is super confusing but I can't find an elegant fix. This needs fixed.
  def splash
    if user_signed_in?
      redirect_to home_path
    end
  end


  def home
  end

end
