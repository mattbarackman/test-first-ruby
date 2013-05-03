def ftoc(f_temp)
  (f_temp - 32) * 5 / 9   # Deduct 32, then multiply by 5, then divide by 9
end

def ctof(c_temp)
  (c_temp.to_f * 9 / 5) + 32
end