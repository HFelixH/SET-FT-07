class Application
  def call(env)
    req = Rack::Request.new(env)
    res = Rack::Response.new

    case req.path
    when '/owners'
      if req.params.key? 'id'
        res.write Owner.find(req.params['id'].to_i).to_json
      else
        res.write Owner.all.to_json
      end
    when '/cats'
      res.write Cat.all.to_json
    else
      res.status = 404
    end

    res.finish
  end
end
