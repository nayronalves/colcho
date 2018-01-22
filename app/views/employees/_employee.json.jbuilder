json.extract! employee, :id, :nome, :lastname, :telephone, :identity, :cpf, :address, :function, :salary, :created_at, :updated_at
json.url employee_url(employee, format: :json)
