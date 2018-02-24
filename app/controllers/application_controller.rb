class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def hello
    render html: "You say 夏が胸を刺激する"
  end
end
