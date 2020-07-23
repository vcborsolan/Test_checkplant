require 'rgeo'
# sudo apt-get install libproj-dev
# uma dependencia linux do rgeo


def distance_betwen(point1 , point2)

    latlon = RGeo::Geographic.spherical_factory.point(point1[1], point1[2])

    latlon2 = RGeo::Geographic.spherical_factory.point(point2[1], point2[2])

    latlon.distance(latlon2)

end

arg = ARGV.each_slice(2).to_a
arg.each_index do |index|
    arg[index].unshift(index)
end

size = -1 .. (arg.size)-1
hash_distances = {}
size.each do |x|
    if !(arg[x+1]).nil?
        dist = distance_betwen(arg[x] , arg[x+1])
        hash_distances["#{x}|>#{x+1}".to_sym] = dist
    end

end

puts hash_distances