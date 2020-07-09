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

def mail_to(email, html_options: {})
  link_to(
    email,
    "mailto:#{email}",
    **html_options
  )
end

def link_to_newsletter(title: 'Newsletter', html_options: {})
  html_options.reverse_merge(
    target: '_blank',
    rel: 'noopener',
  )

  link_to(
    title,
    'http://eepurl.com/g3BqKX',
    **html_options
  )
end
