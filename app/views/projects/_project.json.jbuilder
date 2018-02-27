json.extract! project, :id, :name, :start_year, :csv_tags, :short_desc, :long_desc, :website, :github, :created_at, :updated_at
json.url project_url(project, format: :json)
