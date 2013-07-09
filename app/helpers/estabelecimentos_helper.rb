module EstabelecimentosHelper
  
  def distancia(lat1, long1, lat2, long2)
    #Fórmula de Haversine
    pi = 3.1415927
    lat1 = lat1 * pi / 180
    long1 = long1 * pi / 180
    lat2 = lat2 * pi / 180
    long2 = long2 * pi / 180
    raio_da_terra =  6371 # km
    dLat = (lat2-lat1) #diferença das latitudes dos pontos em radianos
    dLon = (long2-long1) #diferença das longitudes dos pontos em radianos
    a = Math.sin(dLat/2) * Math.sin(dLat/2) + Math.cos(lat1) * Math.cos(lat2) * Math.sin(dLon/2) * Math.sin(dLon/2)
    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a))
    distancia = raio_da_terra * c * 1000 #em metros
    return distancia
    
  end
  
end
