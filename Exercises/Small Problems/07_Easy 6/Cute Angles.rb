# 1. Establish rules/define the boundaries
#   1. Assess the available information
#   2. Identify the explicit req's
#     - Input: float num, 0 < n < 360
#     - Output: string representation of float num as degrees, minutes, seconds
#   3. Identify the implicit req's
#     - Clarifying questions:
#     - Problem analysis:
#     - Test cases/examples
#     - deg is formatting as int
#     - min and sec are formatted as two digit nums

#   4. Develop your mental Model (A summary of how you think the problem works)
#     - formatting problem - output should convert float into degrees, mins, secs
#   5. Dont speed this process

# DS: int variables

# Algo:
# n = input
# get degrees from input by truncating
# subtract degrees from n
# multiply n by 60
# get minutes from n by truncating
# subtract minutes from n
# multiply n by 60
# get seconds from n by truncating

# format with fstring

DEGREE = "\xC2\xB0"

def dms(n)
  deg = n.to_i
  n = ((n - deg) * 60).round(5)
  min = n.to_i
  n = ((n - min) * 60).round(5)
  sec = n.to_i
  "#{deg}#{DEGREE}#{format("%02d", min)}'#{format("%02d", sec)}\""
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
