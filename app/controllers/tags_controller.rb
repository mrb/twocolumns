class TagsController < ApplicationController
  def index
    @tags = Paper.tag_counts
  end
end
