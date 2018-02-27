json.extract! article, :id, :name, :author, :published_on, :csv_tags, :text_link, :text_link_type, :created_at, :updated_at
json.url article_url(article, format: :json)
