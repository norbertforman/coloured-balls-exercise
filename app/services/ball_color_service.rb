class BallColorService
  def initialize(params)
    ValidateParameterService.new(params, [:number]).validate!
    raise Errors::BadRequest, 'number parameter is empty' unless params[:number].present?
    @number = params[:number].to_i
    raise Errors::UnprocessableEntity, 'not valid number' unless @number.to_s == params[:number]
    @number += 1
  end

  def calculate
    data = { color: 'pink', score: 1 }
    data = { color: 'green', score: 3 } if @number % 3 == 0
    data = { color: 'blue', score: 5 } if @number % 5 == 0
    data = { color: 'purple', score: 15 } if @number % 15 == 0
    data
  end
end
