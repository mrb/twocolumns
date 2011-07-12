class Paper < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :tags

  def self.find_by_slug_or_id(attr)
    if slug = find_by_slug(attr)
      return slug
    elsif id = find_by_id(attr)
      return id
    else
      raise ActiveRecord::RecordNotFound
    end
  end
end

