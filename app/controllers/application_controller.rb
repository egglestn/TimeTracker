class ApplicationController < ActionController::API
  before_action :allow_cors

  #config.middleware.insert_before 0, Rack::Cors do
  #  allow do
  #    origins '*'
  #    resource '*', :headers => :any, :methods => [:get, :post, :options]
  #  end
  #end

  def allow_cors
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end

end
