module AuthorsHelper

  #Returns the Gravatar for the given author.

  def gravatar_for(author, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(author.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: author.name, class: 'gravatar')
  end
end
