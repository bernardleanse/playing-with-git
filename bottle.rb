def contentWeight(bottleWeight, scale)
  scale_int = scale.split[0].to_i
  scale_int = (1 / scale_int.to_f) if scale.split[2] == 'smaller'
  return ((bottleWeight * scale_int) / (scale_int + 1)).to_i
end

puts contentWeight(120, "2 times smaller") # -----> 80


# so now lets figure out how to do do it when it says smaller
# bottleweight can be 120. the contents is 2 times smaller than the bottle.
# let bottle = x...2x + x = 120...3x = 120...x = 40
