# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130228035457) do

  create_table "achievements", :force => true do |t|
    t.string   "icon_url"
    t.string   "title"
    t.text     "description", :limit => 255
    t.integer  "creator_id"
    t.integer  "course_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.time     "deleted_at"
  end

  create_table "actions", :force => true do |t|
    t.string   "text"
    t.text     "description", :limit => 255
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "activities", :force => true do |t|
    t.integer  "course_id"
    t.integer  "actor_course_id"
    t.integer  "target_course_id"
    t.integer  "action_id"
    t.integer  "obj_id"
    t.string   "obj_type"
    t.string   "extra"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "announcements", :force => true do |t|
    t.integer  "creator_id"
    t.integer  "course_id"
    t.datetime "publish_at"
    t.integer  "important"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "title"
    t.text     "description", :limit => 255
    t.time     "deleted_at"
  end

  create_table "answer_gradings", :force => true do |t|
    t.integer  "grader_id"
    t.integer  "grade"
    t.text     "comment",               :limit => 255
    t.integer  "student_answer_id"
    t.integer  "submission_grading_id"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.string   "student_answer_type"
  end

  create_table "asm_qns", :force => true do |t|
    t.integer  "asm_id"
    t.string   "asm_type"
    t.integer  "qn_id"
    t.string   "qn_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "pos"
  end

  create_table "asm_reqs", :force => true do |t|
    t.integer  "asm_id"
    t.string   "asm_type"
    t.integer  "min_grade"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "asm_tags", :force => true do |t|
    t.integer  "asm_id"
    t.string   "asm_type"
    t.integer  "tag_id"
    t.integer  "max_exp"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "user_course_id"
    t.text     "text"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "course_theme_attributes", :force => true do |t|
    t.integer  "course_id"
    t.integer  "theme_attribute_id"
    t.string   "value"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "course_themes", :force => true do |t|
    t.integer  "course_id"
    t.integer  "theme_id"
    t.string   "theme_folder_url"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "title"
    t.integer  "creator_id"
    t.text     "description", :limit => 255
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "logo_url"
    t.string   "banner_url"
    t.time     "deleted_at"
  end

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "enroll_requests", :force => true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "exp_transactions", :force => true do |t|
    t.integer  "exp"
    t.string   "reason"
    t.boolean  "is_valid"
    t.integer  "user_course_id"
    t.integer  "giver_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.time     "deleted_at"
  end

  create_table "file_uploads", :force => true do |t|
    t.integer  "course_id"
    t.integer  "creator_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "levels", :force => true do |t|
    t.integer  "level"
    t.integer  "exp_threshold"
    t.integer  "course_id"
    t.integer  "creator_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "mcq_answers", :force => true do |t|
    t.integer  "mcq_id"
    t.text     "text",        :limit => 255
    t.integer  "creator_id"
    t.text     "explanation", :limit => 255
    t.boolean  "is_correct"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "mcqs", :force => true do |t|
    t.integer  "creator_id"
    t.text     "description",       :limit => 255
    t.integer  "correct_answer_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "max_grade"
  end

  create_table "missions", :force => true do |t|
    t.integer  "course_id"
    t.integer  "exp"
    t.datetime "open_at"
    t.datetime "close_at"
    t.datetime "deadline"
    t.integer  "timelimit"
    t.integer  "attempt_limit"
    t.integer  "auto_graded"
    t.integer  "pos"
    t.text     "description",   :limit => 255
    t.integer  "creator_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "title"
    t.integer  "max_grade"
  end

  create_table "notifications", :force => true do |t|
    t.integer  "target_course_id"
    t.integer  "actor_course_id"
    t.integer  "action_id"
    t.integer  "obj_id"
    t.string   "obj_type"
    t.string   "extra"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "questions", :force => true do |t|
    t.integer  "creator_id"
    t.text     "description", :limit => 255
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "max_grade"
  end

  create_table "quiz_submissions", :force => true do |t|
    t.integer  "std_course_id"
    t.integer  "quiz_id"
    t.datetime "open_at"
    t.datetime "submit_at"
    t.integer  "attempt"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "final_grading_id"
    t.time     "deleted_at"
  end

  create_table "quizzes", :force => true do |t|
    t.integer  "course_id"
    t.string   "title"
    t.text     "description",   :limit => 255
    t.integer  "exp"
    t.integer  "max_grade"
    t.datetime "open_at"
    t.datetime "close_at"
    t.integer  "pos"
    t.integer  "attempt_limit"
    t.integer  "creator_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "requirements", :force => true do |t|
    t.integer  "req_id"
    t.string   "req_type"
    t.integer  "obj_id"
    t.string   "obj_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rewards", :force => true do |t|
    t.string   "icon_url"
    t.string   "title"
    t.text     "description", :limit => 255
    t.integer  "creator_id"
    t.integer  "course_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "role_requests", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "description", :limit => 255
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "sbm_answers", :force => true do |t|
    t.integer  "sbm_id"
    t.string   "sbm_type"
    t.integer  "answer_id"
    t.string   "answer_type"
    t.boolean  "is_final"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "seen_by_users", :force => true do |t|
    t.integer  "user_course_id"
    t.integer  "obj_id"
    t.string   "obj_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "std_answers", :force => true do |t|
    t.text     "text",        :limit => 255
    t.integer  "student_id"
    t.integer  "question_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "std_mcq_answers", :force => true do |t|
    t.integer  "mcq_answer_id"
    t.string   "choices"
    t.integer  "student_id"
    t.integer  "mcq_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "std_tags", :force => true do |t|
    t.integer  "std_course_id"
    t.integer  "tag_id"
    t.integer  "exp"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "submission_gradings", :force => true do |t|
    t.integer  "grader_id"
    t.integer  "total_grade"
    t.text     "comment",            :limit => 255
    t.integer  "sbm_id"
    t.datetime "publish_at"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.string   "sbm_type"
    t.integer  "exp_transaction_id"
  end

  create_table "submissions", :force => true do |t|
    t.integer  "std_course_id"
    t.integer  "mission_id"
    t.datetime "open_at"
    t.datetime "submit_at"
    t.integer  "attempt"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "final_grading_id"
    t.time     "deleted_at"
  end

  create_table "tag_groups", :force => true do |t|
    t.string   "name"
    t.text     "description", :limit => 255
    t.integer  "course_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.time     "deleted_at"
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.text     "description",  :limit => 255
    t.integer  "course_id"
    t.string   "icon_url"
    t.integer  "max_exp"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "tag_group_id"
    t.time     "deleted_at"
  end

  create_table "theme_attributes", :force => true do |t|
    t.string   "name"
    t.text     "description", :limit => 255
    t.string   "value_type"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "titles", :force => true do |t|
    t.string   "title"
    t.text     "description", :limit => 255
    t.integer  "creator_id"
    t.integer  "course_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "training_submissions", :force => true do |t|
    t.integer  "std_course_id"
    t.integer  "training_id"
    t.integer  "current_step"
    t.datetime "open_at"
    t.datetime "submit_at"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.time     "deleted_at"
  end

  create_table "trainings", :force => true do |t|
    t.integer  "course_id"
    t.integer  "creator_id"
    t.string   "title"
    t.text     "description", :limit => 255
    t.integer  "exp"
    t.datetime "open_at"
    t.integer  "pos"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "max_grade"
    t.time     "deleted_at"
  end

  create_table "user_achievements", :force => true do |t|
    t.integer  "user_course_id"
    t.integer  "achievement_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "user_courses", :force => true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.integer  "exp"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "level_id"
    t.time     "deleted_at"
  end

  create_table "user_rewards", :force => true do |t|
    t.integer  "user_course_id"
    t.integer  "reward_id"
    t.datetime "claimed_at"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "user_titles", :force => true do |t|
    t.integer  "user_course_id"
    t.integer  "title_id"
    t.integer  "is_using"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "profile_photo_url"
    t.string   "display_name"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "system_role_id"
    t.time     "deleted_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
