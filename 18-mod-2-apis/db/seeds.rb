url = "https://pokemon-go1.p.rapidapi.com/pokemon_stats.json"

pokemon_stats = RestClient::Request.execute(method: :get, 
    url: "https://pokemon-go1.p.rapidapi.com/pokemon_stats.json", 
    headers:{
    "X-RapidAPI-Host" => "pokemon-go1.p.rapidapi.com",
    "X-RapidAPI-Key" => "5db3651e50msha9aec845d0458d1p1c2eefjsn7a066cc59d05"
  })
  response_json = JSON.parse(pokemon_stats.body)


  response_json.each do |pokemon|
    Pokemon.find_or_create_by(pokemon)
  end

  # binding.pry


  puts "all seeds are done. woot!"
