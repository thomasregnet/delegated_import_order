FactoryBot.define do
  factory :import_order do
    user { nil }
    import_order { nil }
    uri { "MyText" }
    requests_count { 1 }
    importable_type { "MyText" }
    importable_id { "MyString" }
  end
end
