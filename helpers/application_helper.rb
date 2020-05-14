def active_nav_item?(page)
  case current_path
  when 'index.html'
    page == :index
  when 'contact/index.html'
    page == :contact
  else
    false
  end
end

def link_to_newsletter(title: 'Newsletter', html_options: {})
  html_options.reverse_merge(
    target: '_blank',
    rel: 'noopener',
  )

  link_to(
    title,
    'https://augsburger-warenhandlung.us18.list-manage.com/subscribe/post?u=0375003d35a145b49438cd77f&amp;id=b47eb0535bg',
    **html_options
  )
end
