module ApplicationHelper
  # 4.2
  def full_title(page_title = '')
    base_title = "VAE Sample Images"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
