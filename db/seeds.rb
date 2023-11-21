# Example: seeds.rb
TeacherAvailability.destroy_all
Review.destroy_all
Booking.destroy_all
Lesson.destroy_all
User.destroy_all

# Seed data for users
user1 = User.create!(first_name: 'Amina', last_name: 'Ghafor', email: 'aghafor@gmail.com', education_level: 'Undergraduate',
                     is_teacher: false, bio: 'Passionate about mathematics and helping students succeed.', address: '12 Great Malborough Street, N1 4AY London', password: '123456')
user2 = User.create!(first_name: 'Gaëlle', last_name: 'Vivet', email: 'gaelle@gmail.com', education_level: 'Masters',
                     is_teacher: true, bio: 'Biology enthusiast with a love for teaching and sharing knowledge.', address: '11 Rue de la Paix, 75002 Paris', password: '567765432')
user3 = User.create!(first_name: 'Marianne', last_name: 'Bourgeois', email: 'bourgeois@gmail.com', education_level: 'MBA',
                     is_teacher: true, bio: 'Passionate about business education and guiding students towards success.', address: '167 Route de Bel Air, 08008 Biarritz', password: 'mypassword!2')
user4 = User.create!(first_name: 'Imanol', last_name: 'Barrios', email: 'imanol@gmail.com', education_level: 'PhD',
                     is_teacher: false, bio: 'Exploring the wonders of literature and language, committed to fostering a love for reading.', address: '149 C/ del Bruc, 08037 Barcelona', password: 'mysafepassword')

# Seed data for lessons
lesson1 = Lesson.create!(
  user_id: user1.id,
  subject: 'Maths',
  description: 'Introduction to Algebra',
  hourly_rate: 30
)

lesson2 = Lesson.create!(
  user_id: user1.id,
  subject: 'English',
  description: 'Creative Writing Workshop',
  hourly_rate: 25
)

lesson3 = Lesson.create!(
  user_id: user2.id,
  subject: 'Biology',
  description: 'Cell Biology Basics',
  hourly_rate: 35
)

lesson4 = Lesson.create!(
  user_id: user3.id,
  subject: 'Physics',
  description: 'Newtonian Mechanics',
  hourly_rate: 40
)

lesson5 = Lesson.create!(
  user_id: user3.id,
  subject: 'French',
  description: 'Basic Conversational French',
  hourly_rate: 28
)

lesson6 = Lesson.create!(
  user_id: user4.id,
  subject: 'French',
  description: 'Advanced Business-Level French',
  hourly_rate: 28
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
