Fabricator(:bug_archive) do
  title { Faker::Lorem.words(4).join("") }
  error { Faker::Lorem.paragraph(1) }
  solution { Faker::Lorem.paragraph(1) }
  note { Faker::Lorem.paragraph(1) }

end