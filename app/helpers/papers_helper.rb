module PapersHelper
  def tag_counts
    Paper.tag_counts.map{|t| "#{link_to t.name, tag_url(t)} (#{t.count})"}.to_sentence
  end
end
