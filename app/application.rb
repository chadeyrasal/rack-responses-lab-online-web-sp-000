require 'pry'
class Application

  def call(env)
    resp = Rack::Response.new

    binding.pry
    time = Time.now
    if time > 12
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end

    resp.finish
  end

end
