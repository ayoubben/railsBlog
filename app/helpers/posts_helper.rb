module PostsHelper
  def resource_name
    :user
  end

  def resource
    @resource = session[:subscription] || User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def embed(youtube_url)
    youtube_id = youtube_url.split("=").last
    content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}?rel=0&autoplay=0")
  end
end
