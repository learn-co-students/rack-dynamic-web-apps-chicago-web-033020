class Application
 
  def call(env)
    resp = Rack::Response.new
#     resp.write "Hello, World"
#     resp.finish
#   end
 
# end
##############
  # Kernel is a module that holds many of Ruby's most useful bits. 
  # We're just using it here to generate some random numbers.
  num_1 = Kernel.rand(1..20)
  num_2 = Kernel.rand(1..20)
  num_3 = Kernel.rand(1..20)

# The #write method can be called many times to build up the full response.
# The response isn't sent back to the user until #finish is called.
  resp.write "#{num_1}\n"  # \n = new line
  resp.write "#{num_2}\n"
  resp.write "#{num_3}\n"
   
  if num_1==num_2 && num_2==num_3
# puts "You Win"
# Instead of puts now we'll use the #write method in our Rack::Response object.
    resp.write "You Win"
  else
#puts "You Lose"
    resp.write "You Lose"
  end
  
  resp.finish
  end

end