module UsersHelper

  # # 引数で与えられたユーザーのGravatar画像を返す 7.1.4
  # def gravatar_for(user)
  #   gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
  #   gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
  #   image_tag(gravatar_url, alt: user.name, class: "gravatar")
  # end

  # 渡されたユーザーのGravatar画像を返す 10.38
  def gravatar_for(user, options = { size: 80 })
    size         = options[:size]
    gravatar_id  = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end