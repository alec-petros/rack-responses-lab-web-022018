class Application

  def call(env)
    resp = Rack::Response.new
    # time = Time.new
    # resp.write "#{time.hour}\n"
    if Time.now.hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end


end
