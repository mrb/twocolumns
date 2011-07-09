module PapersHelper
  def tag_counts
    Paper.tag_counts.map{|t| "#{t.name} (#{t.count})"}.to_sentence
  end
end
