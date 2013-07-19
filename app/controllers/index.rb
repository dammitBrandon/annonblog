before do
  @posts = []
end

get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/post/create' do
  erb :post_create
end

post '/post/create' do
  args = {title: params["blog"][":title"], body: params["blog"][":body"]}
  @blog = Blog.create(args)
  tags = {tags: params["blog"][":tags"]}
  tags[:tags].split(',').each { |tag| @blog.tags << Tag.find_or_create_by_name(name: tag.strip)}
  erb :post_successful
end
