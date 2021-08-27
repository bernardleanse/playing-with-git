# lets just first figure out how ipv4 adresses work then yeah??????\
# 255.255.255.255

def ipv4_to_a(ip)
  ip.split(".").map {|num| num.to_i}
end

def ipsBetween(start, ending)
  start_a = ipv4_to_a(start)
  end_a = ipv4_to_a(end)
  until start == ending

    start[4] + 1
    ips += 1
  end
end

ipsBetween("10.0.0.0", "10.0.0.50")

myBigChange = "this is crucial"
