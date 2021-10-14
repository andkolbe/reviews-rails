class HtmlPagesController < ApplicationController
  def home
  end

  def help
    # because the action is empty, going to /html_pages/help will only render the static html on the corresponding view
  end

  def about
  end
end
