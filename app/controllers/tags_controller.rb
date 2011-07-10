class TagsController < ApplicationController
  def index
    @tags = Paper.tag_counts
  end

  def show
    @tag = Paper.tag_counts.find_by_id(params[:id])
    @papers = Paper.tagged_with(@tag.name.to_sym)
  end
end
