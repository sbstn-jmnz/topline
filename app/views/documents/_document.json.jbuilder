json.extract! document, :id, :delivery_id, :docsbymail, :approvaldate, :courier, :received, :senttoclient, :created_at, :updated_at
json.url document_url(document, format: :json)
