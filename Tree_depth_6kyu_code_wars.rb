# Write a method that takes a nested hash (object in javascript) as input and returns that hash with added "depth" keys. So, for example, the following input:

# tree = { 
#   a: 1,
#   b: 2, 
#   c: { d: { e: 3 } }
# }
# would yield the following return value:

# {
#   a: 1,
#   b: 2,
#   c: {
#     d: {
#       e: 3,
#       depth: 2
#     },
#     depth: 1
#   },
#   depth: 0
# }
# For Ruby, if the input is not a hash, then the function should return nil. For JavaScript, if the input is not an object (including an array), the function should return null.

answer = {164=>564, 904=>{446=>{958=>435, 793=>{554=>828, 713=>93, 443=>{957=>307, 445=>298, 987=>549, 934=>384, 293=>984}, 251=>638, 468=>262}, 503=>520, 974=>{587=>275, 821=>99, 977=>883, 889=>379, 444=>677}, 432=>261}, 75=>902, 497=>804, 989=>{820=>{234=>{44=>161, 405=>910, 314=>863, 373=>765, 254=>125}, 260=>355, 392=>97, 641=>268, 407=>{9=>193, 406=>730, 145=>200, 930=>802, 59=>{623=>{233=>21, 799=>357, 878=>709, 789=>270, 613=>218}, 55=>843, 6=>{968=>{207=>549, 652=>97, 552=>{59=>735, 369=>{142=>{751=>{854=>{853=>929, 921=>353, 870=>57, 868=>373, 656=>459}, 142=>102, 945=>495, 316=>970, 475=>620}, 189=>{71=>76, 980=>543, 248=>407, 717=>526, 300=>666}, 727=>655, 656=>{476=>{217=>955, 384=>{66=>396, 661=>922, 799=>437, 681=>552, 43=>536}, 90=>581, 801=>475, 792=>927}, 52=>{221=>85, 332=>842, 653=>144, 642=>21, 359=>171}, 433=>21, 959=>{161=>599, 283=>963, 106=>61, 293=>474, 168=>940}, 37=>265}, 166=>{332=>{402=>792, 393=>158, 698=>350, 858=>798, 516=>649}, 460=>969, 134=>993, 428=>64, 804=>812}}, 943=>393, 746=>145, 507=>465, 151=>771}, 853=>289, 27=>797, 926=>705}, 861=>298, 604=>900}, 196=>{80=>187, 333=>604, 983=>95, 48=>60, 957=>728}, 341=>479, 499=>464, 449=>757}, 866=>{185=>721, 455=>557, 598=>70, 46=>683, 449=>1}, 656=>947}}}, 399=>912, 763=>217, 415=>{173=>155, 418=>710, 40=>64, 87=>322, 242=>473}, 621=>778}, 92=>{776=>541, 828=>29, 150=>{784=>488, 741=>607, 540=>792, 196=>445, 718=>986}, 304=>960, 597=>649}}, 969=>555, 551=>998, 668=>482, :depth=>0}
# p answer.keys.include?(:depth)
# p answer[904].keys
# def record_depth(tree)
#   p tree
#   return nil if tree.instance_of?(Hash) != true
#   @count = 0
#   tree.each_value do |x|
#     p x
#     instance(x)
#   end
#   tree.store(:depth, 0)
#   p tree
# end

# def instance (item)
#   if item.instance_of?(Hash)
#   @count += 1
#   item.store(:depth,  @count)
#   item.each_value { |x| instance(x) }
#   end
# end

# currently issue is getting the program to understand when the hash has ended and it has now gone back down one level. So, going from a depth of 2 to 3 and then 3 closes and you are back down to depth 2. 

# def record_depth(tree)
#   p @tree = tree
#   return nil if tree.instance_of?(Hash) != true
#   @count = 0
#   @prev_k = @tree
#   @tree.store(:depth, @count)
#   @tree.each_pair do |k, v|
#     # p @tree.keys
#     p k
#     p v
#     p @prev_k = @tree[:depth]
#     if v.instance_of?(Hash)
#     # instance(v, @prev_k, k)
#   end
#   # p @tree
# end

# def instance (item, prev_k, k)
#   if item.instance_of?(Hash) && @tree[prev_k].has_key?(:depth)
#     @count = @tree[prev_k] + 1
#     item.store(:depth,  @count)
#     item.each_pair { |k, v| 
#       prev_k = k
#       instance(v, prev_k,k) 
#       }
#   end
# end

def record_depth(tree)
#   p tree
  return nil if tree.instance_of?(Hash) != true
  # @count = 0
  tree.store(:depth, 0)
  @keys = tree.keys
  tree.each_pair do |k, v|
    v.instance_of?(Hash)
    instance(k, v, @keys)
  end
  p tree
end

def instance (key, value, list_keys)
  if value.instance_of?(Hash) && @keys.last == :depth
    # @count += 1
    value.store(:depth, (@keys.last - 1))
    @keys = value.keys.last
    value.each_pair { |k, v| instance(k, v, @keys) }
  elsif value.item.instance_of?(Hash) && @keys.last != :depth
    value.store(:depth, (@keys.last + 1))
    @keys = value.keys.last
    value.each_pair { |k, v| instance(k, v, @keys) }
  end
end

record_depth(answer)