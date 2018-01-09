mark = User.create!(
  name: 'Mark Chavez',
  email: 'mark.chavez@gmail.com',
  password: 'foobar123'
)

personal = mark.note_categories.create!(name: 'Personal')
work = mark.note_categories.create!(name: 'Work')

personal.notes.create!(body: "Finish sheets.io")
personal.notes.create!(body: "Learn JavaScript Today")
personal.notes.create!(body: "Finish Demistifying Rails on Launch School")
work.notes.create!(body: "Finish daily status reports")