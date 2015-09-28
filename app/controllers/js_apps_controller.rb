class JsAppsController < ApplicationController

def dashboard

  if current_user
    render file: '/public/dashboard', layout: false
  else
    redirect_to "/home/index"
  end
end

end
