module ApplicationHelper
    def gravatar_for(user, options = {size: 80})
        email_address = user.email
        hash = Digest::MD5.hexdigest(email_address)
        size = options[:size]
        gravatar_url = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
        # SMC TODO - look at the user of alt: here
        image_tag(gravatar_url, alt: user.username, class:"shadow rounded mx-auto d-block")
    end

end
