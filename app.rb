require "sinatra"

get "/" do
	erb :first_page
end

post "/name" do
	name = params[:name]
	redirect "/name_redirect?name=" + name
end

get "/name_redirect" do
	f_name = params[:name]
	erb :second_page, locals: {f_name: f_name}
end

post "/age" do
	f_name = params[:f_name]
	age = params[:age]
	redirect "/favorite_food?f_name=" + f_name + "&age=" + age
end

get "/favorite_food" do
	f_name = params[:f_name]
	age = params[:age]
	erb :third_page, locals: {f_name: f_name, age: age}
end

post "/food_drink" do
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	redirect "/favorite_numbers?f_name=" + f_name + "&age=" + age + "&food=" + food + "&drink=" + drink
end

get "/favorite_numbers" do
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	erb :forth_page, locals: {f_name: f_name, age: age, food: food, drink: drink}
end

post "/numbers" do
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	number_1 = params[:number_1]
	number_2 = params[:number_2]
	number_3 = params[:number_3]
	redirect "/favorite_color?f_name=" + f_name + "&age=" + age + "&food=" + food + "&drink=" + drink + "&number_1=" + number_1 + "&number_2=" + number_2 + "&number_3=" + number_3
end

get "/favorite_color" do
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	number_1 = params[:number_1]
	number_2 = params[:number_2]
	number_3 = params[:number_3]
	erb :fifth_page, locals: {f_name: f_name, age: age, food: food, drink: drink, number_1: number_1, number_2: number_2, number_3: number_3}
end

post "/numbers" do
	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	number_1 = params[:number_1]
	number_2 = params[:number_2]
	number_3 = params[:number_3]
	color = params[:color]
	redirect "/favorite_color?f_name=" + f_name + "&age=" + age + "&food=" + food + "&drink=" + drink + "&number_1=" + number_1 + "&number_2=" + number_2 + "&number_3=" + number_3 + "&color=" + color
end

post "/show" do

	f_name = params[:f_name]
	age = params[:age]
	food = params[:food]
	drink = params[:drink]
	number_1 = params[:number_1]
	number_2 = params[:number_2]
	number_3 = params[:number_3]
	color = params[:color]
	erb :sixth_page, locals: {f_name: f_name, age: age, food: food, drink: drink, number_1: number_1, number_2: number_2, number_3: number_3, color: color}
end





