json.extract! gasto, :id, :cc, :fecha, :descripcion, :cargo, :saldo, :pagado, :created_at, :updated_at
json.url gasto_url(gasto, format: :json)
