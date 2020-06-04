class Recipe
  include HTTParty

  base_uri 'http://www.recipepuppy.com'
  format :json
  
  def self.buscar nombre, pag
   @recetas = get("/api", query:{q:nombre, p:pag})['results']
  end

end
