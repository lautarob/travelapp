class Api::V1::BaseController < ::Api::ApiController
  before_action :authenticate_user!
end