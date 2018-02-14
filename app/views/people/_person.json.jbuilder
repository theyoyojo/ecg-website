json.extract! person, :id, :name, :grad_year, :degree, :position, :email, :linkedin, :github, :website, :created_at, :updated_at
json.url person_url(person, format: :json)
