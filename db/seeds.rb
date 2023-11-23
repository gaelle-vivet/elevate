TeacherAvailability.destroy_all
Review.destroy_all
Booking.destroy_all
Lesson.destroy_all
User.destroy_all

# Seed data for users

user1 = User.create!(
  first_name: 'Amina',
  last_name: 'Ghafor',
  email: 'aghafor@gmail.com',
  education_level: 'Undergraduate',
  avatar_url: 'https://seedlegals.com/wp-content/uploads/2022/11/Amina-Ghafor.jpg',
  is_teacher: false,
  bio: 'Passionate about mathematics and helping students succeed.',
  address: '12 Great Malborough Street, N1 4AY London',
  password: '123456'
)

user2 = User.create!(
  first_name: 'Gaëlle',
  last_name: 'Vivet',
  email: 'gaelle@gmail.com',
  education_level: 'Masters',
  avatar_url: 'https://media.licdn.com/dms/image/C4E03AQEfXJV7osHDTw/profile-displayphoto-shrink_800_800/0/1526374010120?e=1706140800&v=beta&t=4oI03Qaua6m1BuEGGaHS5Je0KxQ_N2WHdUx-Q53HX7E',
  is_teacher: true,
  bio: 'Language enthusiast with a love for teaching and sharing knowledge.',
  address: '11 Rue de la Paix, 75002 Paris',
  password: '567765432'
)

user3 = User.create!(
  first_name: 'Marianne',
  last_name: 'Bourgeois',
  email: 'bourgeois@gmail.com',
  education_level: 'MBA',
  avatar_url: 'https://media.licdn.com/dms/image/C4E03AQEfXJV7osHDTw/profile-displayphoto-shrink_800_800/0/1526374010120?e=1706140800&v=beta&t=4oI03Qaua6m1BuEGGaHS5Je0KxQ_N2WHdUx-Q53HX7E',
  is_teacher: true,
  bio: 'Former high school teacher. Experienced french & maths teacher with a track record for success.',
  address: '167 Route de Bel Air, 08008 Biarritz',
  password: 'mypassword!2'
)

user4 = User.create!(
  first_name: 'Imanol',
  last_name: 'Barrios',
  email: 'imanol@gmail.com',
  education_level: 'PhD',
  avatar_url: 'https://media.licdn.com/dms/image/C4D03AQFn81J2xzqYzA/profile-displayphoto-shrink_800_800/0/1593158466607?e=1706140800&v=beta&t=7y25dtlgh4Q4Dqwq1aEtOFM6HXA6R_UsY1qiAbqMepU',
  is_teacher: false,
  bio: 'Maths teacher providing comprehensive lessons on a range of subjects',
  address: '149 C/ del Bruc, 08037 Barcelona',
  password: 'mysafepassword'
)

user5 = User.create!(
  first_name: 'Oliver',
  last_name: 'Smith',
  email: 'oliver.smith@gmail.com',
  education_level: 'Masters',
  avatar_url: 'https://images.unsplash.com/photo-1633332755192-727a05c4013d?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG1hbiUyMGZhY2V8ZW58MHx8MHx8fDA%3',
  is_teacher: false,
  bio: 'Enthusiastic learner with a passion for science, maths and technology.',
  address: '25 Maple Avenue, SW1A 1AA London',
  password: 'oliver123'
)

user6 = User.create!(
  first_name: 'Sophie',
  last_name: 'Johnson',
  email: 'sophie.johnson@gmail.com',
  education_level: 'Undergraduate',
  avatar_url: 'https://images.unsplash.com/photo-1520943219761-6ca840e2e585?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGJsYWNrJTIwd29tYW4lMjBoZWFkc2hvdHxlbnwwfHwwfHx8MA%3D%3D',
  is_teacher: true,
  bio: 'Linguist with C2 level French and Spanish. I have a passion for teaching and can support all levels',
  address: '8 Rue de la Liberté, 75001 Paris',
  password: 'sophie456'
)

user7 = User.create!(
  first_name: 'Claire',
  last_name: 'Dupont',
  email: 'claire.dupont@gmail.com',
  education_level: 'Undergraduate',
  avatar_url: 'https://images.unsplash.com/photo-1592214534258-0067435006d8?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGZlbWFsZSUyMGZhY2V8ZW58MHx8MHx8fDA%3D',
  is_teacher: true,
  bio: 'Enseignante passionnée par la langue française et déterminée à aider les étudiants à exceller en français.',
  address: '25 Rue de la République, 75001 Paris',
  password: 'claire456'
)

# Seed data for lessons

# maths lessons
lesson1 = Lesson.create!(
  user_id: user1.id,
  subject: 'Maths',
  description: 'Introduction to Algebra',
  hourly_rate: 30
)

lesson2 = Lesson.create!(
  user_id: user4.id,
  subject: 'Maths',
  description: 'Advanced Maths Concepts',
  hourly_rate: 25
)

lesson3 = Lesson.create!(
  user_id: user4.id,
  subject: 'Maths',
  description: 'Advanced Calculus',
  hourly_rate: 35
)

lesson4 = Lesson.create!(
  user_id: user5.id,
  subject: 'Maths',
  description: 'Exploring Number Theory',
  hourly_rate: 40
)

lesson5 = Lesson.create!(
  user_id: user3.id,
  subject: 'Maths',
  description: 'High school mathematics refresher course',
  hourly_rate: 28
)

# french lessons

lesson6 = Lesson.create!(
  user_id: user2.id,
  subject: 'French',
  description: 'Basic Conversational French',
  hourly_rate: 28
)

lesson7 = Lesson.create!(
  user_id: user3.id,
  subject: 'French',
  description: 'Advanced Business-Level French',
  hourly_rate: 28
)

lesson8 = Lesson.create!(
  user_id: user6.id,
  subject: 'French',
  description: 'French Cultural Insights',
  hourly_rate: 30
)

lesson9 = Lesson.create!(
  user_id: user7.id,
  subject: 'French',
  description: 'Intermediate French Conversations',
  hourly_rate: 32
)

# Seed data for bookings
booking1 = Booking.create!(
  user_id: user1.id,
  lesson_id: lesson1.id,
  occurs_on: DateTime.now + 1.day,
  duration_minutes: 60,
  is_online: true,
  status: 'Confirmed'
)

booking2 = Booking.create!(
  user_id: user2.id,
  lesson_id: lesson2.id,
  occurs_on: DateTime.now + 2.days,
  duration_minutes: 90,
  is_online: false,
  address: '123 Main Street, London',
  status: 'Pending'
)

booking3 = Booking.create!(
  user_id: user1.id,
  lesson_id: lesson1.id,
  occurs_on: DateTime.now + 3.days,
  duration_minutes: 180,
  is_online: true,
  status: 'Pending'
)

review1 = Review.new(
  comment: 'Great lesson! Really useful, will be booking again.'
)
review1.booking = booking1
review1.save

review2 = Review.new(
  comment: 'Enjoyed the workshop. Looking forward to the next one!'
)
review2.booking = booking2
review2.save

review3 = Review.new(
  comment: 'Very informative session. I learned a lot.'
)
review3.booking = booking3
review3.save

# Seed data for teacher_availabilities
teacher_availability1 = TeacherAvailability.create!(
  user_id: user1.id,
  monday_am: true,
  tuesday_pm: true,
  wednesday_am: false,
  thursday_pm: true,
  friday_am: true,
  saturday_am: false,
  saturday_pm: false,
  sunday_am: false,
  sunday_pm: false
)

teacher_availability2 = TeacherAvailability.create!(
  user_id: user2.id,
  monday_am: true,
  tuesday_am: true,
  wednesday_pm: true,
  thursday_am: false,
  friday_pm: false,
  saturday_am: true,
  saturday_pm: true,
  sunday_am: false,
  sunday_pm: false
)

teacher_availability3 = TeacherAvailability.create!(
  user_id: user3.id,
  monday_am: true,
  tuesday_am: true,
  wednesday_am: true,
  thursday_am: true,
  friday_am: false,
  saturday_am: false,
  saturday_pm: true,
  sunday_am: true,
  sunday_pm: false
)
