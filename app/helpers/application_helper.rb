module ApplicationHelper
  #ページごとのタイトルを返します
  def full_title(page_title = '')
    bese_title = 'CookLook'
    if page_title.empty?
      bese_title
    else
      page_title + ' | ' + bese_title
    end
  end
end
