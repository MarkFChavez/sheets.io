mark = User.create!(
  name: 'Mark Chavez',
  email: 'mark.chavez@gmail.com',
  password: 'foobar123'
)

personal = mark.note_categories.create!(name: 'Personal')
work = mark.note_categories.create!(name: 'Work')

personal.notes.create!(body: "Finish sheets.io")
work.notes.create!(body: "Finish daily status reports")