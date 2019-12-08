# Rails one to many practice

1. Please fork and clone this repo.
2. Start at section 3.2 of the Rails Guides here: https://guides.rubyonrails.org/getting_started.html
3. Instead of `Article` and `Comment` models, please create an app with the following.

### Course

`has_many :students`

Database Columns

- `course_name`, string (e.g. - "WDI")
- `course_code`, integer (e.g. - 4)


### Student

`belongs_to :course`

- `first_name`, string
- `last_name`, string
- `email`, string
- `course_id`, integer (this will be automatically generated when you create the student model)

Your `Course` resource should have full CRUD. Your `Student` resource should have Create and Delete functionality.

Instead of the Blog app, create a new `misk_app` like so: `rails new misk_app -d postgresql`
