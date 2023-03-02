# one-liner
# def staggered_case(s)
#   up = false
#   s.chars.map do |c|
#     up = !up if c =~ /[a-z]/i
#     up ? c.upcase : c.downcase
#   end.join
# end

def staggered_case(s)
  (up = s.size)
    .times
    .with_object("") do |i, res|
      res << (
        (up = (s[i] =~ /[a-z]/i ? !up : up)) ? s[i].downcase : s[i].upcase
      )
    end
end

# FE
# def staggered_case(s, count_non_alpha = false)
#   up = false
#   s.chars.map do |c|
#     up = !up if c =~ /[a-z]/i || count_non_alpha
#     up ? c.upcase : c.downcase
#   end.join
# end

# def staggered_case(s, count_non_alpha = false, r = 0)
#   s.chars.map.with_index { |c, i| ( i % 2 == (r = ((c =~ /[a-z]/i || count_non_alpha) ? r : r.zero? && 1 || 0)) ) ? c.upcase : c.downcase }.join
# end

p staggered_case("I Love Launch School!") #== "I lOvE lAuNcH sChOoL!"
# p staggered_case("I Love Launch School!", true) == "I LoVe lAuNcH ScHoOl!"
# p staggered_case("I Love Launch School!", false, 1) == "i LoVe LaUnCh ScHoOl!"
# p staggered_case("I Love Launch School!", true, 1) == "i lOvE LaUnCh sChOoL!"
p staggered_case("ALL CAPS") == "AlL cApS"
p staggered_case("ignore 77 the 444 numbers") == "IgNoRe 77 ThE 444 nUmBeRs"
