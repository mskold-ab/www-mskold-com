ALERT_REGEX = /^> \[!(NOTE|TIP|IMPORTANT|WARNING|CAUTION)\]\r?\n((?:(?:>\s?.*)\r?\n?)*)/m

def transform_github_alerts(content)
  content.gsub(ALERT_REGEX) do
    type = Regexp.last_match(1).downcase
    body = Regexp.last_match(2).gsub(/^>\s?/, '').strip

    <<~HTML
    <div class="gh-alert gh-alert-#{type}">
    #{body}
    </div>
    HTML
  end
end



Jekyll::Hooks.register :documents, :pre_render do |doc|
  doc.content = transform_github_alerts(doc.content)
end
