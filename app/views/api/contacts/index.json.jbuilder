json.array! @contacts do |contact|
  json.id contact.id
  json.first_name contact.first_name
  json.middle_name contact.middle_name
  json.last_name contact.last_name
  json.email contact.email
  json.phone_number contact.phone_number
  json.updated_at contact.updated_at
  json.friendly_updated_at contact.friendly_updated_at
  json.user_info current_user
  json.partial! "contact.json.jbuilder", contact: contact
end