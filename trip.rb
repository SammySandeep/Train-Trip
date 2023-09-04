def check_trip(start, target, stations, links)
    visited = {}
    
    stack = [start]
  
    while !stack.empty?
      current_station = stack.pop
      
      return "Trip is Possible" if current_station == target
      
      visited[current_station] = true

      if links[current_station]
        links[current_station].each do |neighbor|
          stack.push(neighbor) unless visited[neighbor]
        end
      end
    end
    
   return  "Trip is Impossible"
  end
  
  
stations = ["ADL", "BRI", "MEL", "SYD"]
links = {"ADL" => ["MEL"], "MEL" => ["ADL", "SYD"], "SYD" => ["BRI"]}

p check_trip( "ADL", "BRI", stations, links )
p check_trip( "MEL", "BRI", stations, links )
p check_trip( "SYD", "ADL", stations, links )


