require "similar_strings/version"

module SimilarStrings
  
  def self.score(str1, str2)
    return 0 if str1.blank? || str2.blank?
    str1.downcase! if !str1.blank?
    pairs1 = (0..str1.length-2).collect {|i| str1[i,2]}.reject {
      |pair| pair.include? " "}
    str2.downcase! if !str2.blank?
    pairs2 = (0..str2.length-2).collect {|i| str2[i,2]}.reject {
      |pair| pair.include? " "}
    union = pairs1.size + pairs2.size 
    intersection = 0 
    pairs1.each do |p1| 
      0.upto(pairs2.size-1) do |i| 
        if p1 == pairs2[i] 
          intersection += 1 
          pairs2.slice!(i) 
          break 
        end 
      end 
    end 
    (2.0 * intersection) / union
  end
  
end
