class Application 
  
  @@items = []
  
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      is_match?
      if  @@items.find{|s| s.name == item_name}
        name = @@items.find{|s| s.name == item_name}
        resp.write name.price
      else 
        resp.write "Item was not found"
        resp.status = 400
      end 
    else 
      resp.write "Route not found"
      resp.status = 404
    end 
  end 
  
  def is_match?
    
  end 
  
  def is_not_match?
    
  end 
end 