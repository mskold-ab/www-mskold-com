Jekyll::Hooks.register :documents, :pre_render do |doc|
  doc.content.gsub!(
    /^> \[!(NOTE|TIP|IMPORTANT|WARNING|CAUTION)\]\n((?:>.*\n?)*)/m
  ) do
    type = $1.downcase
    body = $2.gsub(/^>\s?/, '')
    <<~HTML
    <div class="gh-alert gh-alert-#{type}">
    #{body}
    </div>
    HTML
  end
end
