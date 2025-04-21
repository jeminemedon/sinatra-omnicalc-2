require "sinatra"
require "sinatra/reloader"
require "active_support/all"

# ADDITION
get("/add") do
  erb(:add_form)
end

get("/add_result") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f
  @sum = @first_num + @second_num

  erb(:add_result)
end

# SUBTRACTION
get("/subtract") do
  erb(:subtraction_form)
end

get("/subtract_result") do
  @minuend = params.fetch("second_num").to_f
  @subtrahend = params.fetch("first_num").to_f
  @difference = @minuend - @subtrahend

  erb(:sub_result)
end

# MULTIPLICATION
get("/multiply") do
  erb(:mult_form)
end

get("/multiply_result") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f
  @product = @first_num * @second_num

  erb(:mult_result)
end

# DIVISION
get("/divide") do
  erb(:divform)
end

get("/divide_result") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f
  @quotient = @first_num / @second_num

  erb(:div_result)
end
