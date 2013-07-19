before do
  @posts = []
end

get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/post/create' do
  puts #{params}
  erb :post_create
end

post '/post/create' do
  @args = {title: params[":blog"][":title"], body: params[":blog"][":body"]}
  Blog.create{@args}
  @tags = {tags: params["blog"][":tags"]}
  #Blog.tags << @tags.map {|tag| Tag.find_or_create_by_name(tag)}
  erb :post_successful
end
