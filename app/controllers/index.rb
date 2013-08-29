get '/' do
  erb :index
  # let user create new short URL, display a list of shortened URLs
end

post '/urls' do
  new_url = Url.create(long_url: params[:long_link])

  erb :urls
end

# e.g., /q6bda
get '/:short_url' do
  url = Url.find_by_short_url(params[:short_url])
  
  redirect "#{url.long_url}"
end

