class BallColorService
  def initialize(params)
    ValidateParameterService.new(params, [:number]).validate!
    raise Errors::BadRequest, 'number parameter is empty' unless params[:number].present?
    @number = params[:number].to_i
    raise Errors::UnprocessableEntity, 'not valid number' unless @number.to_s == params[:number]
    @number += 1
  end

  def calculate
    color = 'pink'
    color = 'green' if @number % 3 == 0
    color = 'blue' if @number % 5 == 0
    color = 'purple' if @number % 15 == 0
    { next_color: color }
  end
end
