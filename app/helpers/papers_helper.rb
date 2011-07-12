module PapersHelper
  def tag_counts
    @tags ||= Paper.tag_counts.find(:all,:order=>"count DESC").map{|t| "#{link_to t.name, tag_url(t)} (#{t.count})"}.to_sentence
  end
end
