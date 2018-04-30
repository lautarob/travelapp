class ActionDispatch::Routing::Mapper
  def draw(routes_name)
    instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
  end
end

Rails.application.routes.draw do
  resources :settings
  root to: "home#index"

  draw :devise
  draw :api_v1
end
