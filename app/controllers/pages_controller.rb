class PagesController < ApplicationController
  def index
  end

  private

  def should_show_footer?
    false
  end
end
