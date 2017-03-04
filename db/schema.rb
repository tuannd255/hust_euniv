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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170304040957) do

  create_table "master_class_subject_teachers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code"
    t.string   "tbluser_user_code"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "master_class_subjects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code"
    t.string   "master_class_code"
    t.string   "master_subject_code"
    t.string   "master_course_code"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "master_classes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "master_course_schedules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code"
    t.datetime "date"
    t.integer  "slot"
    t.string   "master_class_subject_teacher_code"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "master_courses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "master_subjects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code"
    t.integer  "creadit"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "master_class_subject_teacher_code"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "tblacademicrank", primary_key: "AcademicRank_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "AcademicRank_VNName",               null: false
    t.string  "AcademicRank_AsciiName",            null: false
    t.string  "AcademicRank_Code",                 null: false
    t.integer "AcademicRank_Score",                null: false
    t.string  "AcademicRank_VNAbbr",    limit: 10, null: false
  end

  create_table "tblacademicyear", primary_key: "ACAYEAR_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "ACAYEAR_Code",     null: false
    t.date   "ACAYEAR_FromDate", null: false
    t.date   "ACAYEAR_ToDate",   null: false
  end

  create_table "tblbooksdeclaration", primary_key: "BOK_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "BOK_Code",                  limit: 256, null: false
    t.string  "BOK_UserCode",              limit: 256, null: false
    t.string  "BOK_BookName",              limit: 512, null: false
    t.string  "BOK_Publisher",             limit: 512
    t.integer "BOK_PublishedMonth"
    t.integer "BOK_PublishedYear"
    t.string  "BOK_Authors",               limit: 512
    t.string  "BOK_ISBN",                  limit: 50
    t.string  "BOK_SourceFile",            limit: 256
    t.string  "BOK_ReportingAcademicDate", limit: 50,  null: false
    t.string  "BOK_ApproveStatus",         limit: 50
    t.string  "BOK_Approve_UserCode",      limit: 256
  end

  create_table "tblbookstaffs", primary_key: "BOKSTF_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "BOKSTF_Code",      limit: 256, null: false
    t.string "BOKSTF_StaffCode", limit: 256, null: false
    t.string "BOKSTF_BookCode",  limit: 256, null: false
  end

  create_table "tblclasses", primary_key: "Classes_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "Classes_Code",        null: false, collation: "utf8_unicode_ci"
    t.string "Classes_Name",        null: false, collation: "utf8_unicode_ci"
    t.string "Classes_AsciiName",   null: false, collation: "utf8_unicode_ci"
    t.string "Classes_FacultyCode", null: false, collation: "utf8_unicode_ci"
    t.string "Classes_Year",        null: false
  end

  create_table "tblcommentssubmittedprojects", primary_key: "COMPROJ_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "COMPROJ_CODE",       limit: 50,    null: false
    t.string  "COMPROJ_STAFFCODE",  limit: 50,    null: false
    t.string  "COMPROJ_PRJCODE",    limit: 50,    null: false
    t.text    "COMPROJ_COMMENT",    limit: 65535, null: false
    t.string  "COMPROJ_UpdateDate", limit: 50,    null: false
    t.boolean "COMPROJ_Lock",                     null: false
  end

  create_table "tbldefensesessions", primary_key: "DEFSESS_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "DEFSESS_Code",    limit: 50,             null: false
    t.string  "DEFSESS_Name",    limit: 50,             null: false
    t.integer "DEFSESS_Enabled", limit: 1,  default: 0, null: false
  end

  create_table "tbldepartment", primary_key: "Department_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "Department_Code",         null: false
    t.string "Department_Name",         null: false
    t.string "Department_AsciiName",    null: false
    t.string "Department_Faculty_Code", null: false
  end

  create_table "tbldetailcommentsubmittedprojects", primary_key: "CMTSUBPRJ_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "CMTSUBPRJ_StaffCode",                                          null: false, comment: "Ma thanh vien hoi dong"
    t.string  "CMTSUBPRJ_PRJCode",                               default: "", null: false, comment: "Ma de tai"
    t.string  "CMTSUBPRJ_PRJCallCode",                                        null: false, comment: "Ma dot goi de tai"
    t.integer "CMTSUBPRJ_Eval_Motivation",                                    null: false, comment: "Diem - tinh cap thiet"
    t.integer "CMTSUBPRJ_Eval_Innovation",                                    null: false, comment: "Diem - tinh moi"
    t.integer "CMTSUBPRJ_Eval_Applicability",                                 null: false, comment: "Diem - kha nang ap dung phat trien"
    t.integer "CMTSUBPRJ_Eval_RearchMethodology",                             null: false, comment: "Diem - phuong phap nghien cuu"
    t.integer "CMTSUBPRJ_Eval_ResearchContent",                               null: false, comment: "Diem - noi dung nghien cuu"
    t.integer "CMTSUBPRJ_Eval_Paper",                                         null: false, comment: "Diem - bai bao"
    t.integer "CMTSUBPRJ_Eval_Product",                                       null: false, comment: "Diem - san pham thiet bi, co dia chi ung dung cu the"
    t.integer "CMTSUBPRJ_Eval_Patent",                                        null: false, comment: "Diem - so huu tri tue"
    t.integer "CMTSUBPRJ_Eval_Graduate_Student",                              null: false, comment: "Diem - hoc vien sau dai hoc, NCS"
    t.integer "CMTSUBPRJ_Eval_Young_Rearcher",                                null: false, comment: "Diem - can bo tre"
    t.integer "CMTSUBPRJ_Eval_Education_Graduate",                            null: false, comment: "Diem - tham gia dao tao NCS, ThS"
    t.integer "CMTSUBPRJ_Eval_Reasonable_Budget",                             null: false, comment: "Diem kinh phi du tru"
    t.string  "CMTSUBPRJ_Eval_Classification",     limit: 50,                 null: false, comment: "Phan loai A,B,C"
    t.text    "CMTSUBPRJ_Eval_Conclusion",         limit: 65535,              null: false, comment: "Ket luan"
  end

  create_table "tblexamstatus", primary_key: "EXS_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "EXS_ACaYear_Code", limit: 20, null: false, collation: "utf8mb4_unicode_ci"
    t.integer "EXS_Semester",                null: false
    t.integer "EXS_Status",                  null: false
  end

  create_table "tblexternalstaffs", primary_key: "EXTSTAF_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "EXTSTAF_Code",           limit: 100, null: false
    t.string "EXTSTAF_Name",           limit: 250, null: false
    t.string "EXTSTAF_UniversityCode", limit: 100, null: false
    t.string "EXTSTAF_AcademicRank",   limit: 50,  null: false
    t.string "EXTSTAF_Email",          limit: 100, null: false
    t.string "EXTSTAF_Phone",          limit: 20
  end

  create_table "tblfaculty", primary_key: "Faculty_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "Faculty_Code",                       null: false
    t.string "Faculty_Name",                       null: false
    t.string "Faculty_AsciiName",                  null: false
    t.string "Faculty_University_Code", limit: 20
  end

  create_table "tblfunctions", primary_key: "FUNC_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "FUNC_CODE",           limit: 50,                 null: false, comment: "Mã chức năng"
    t.string  "FUNC_NAME",           limit: 50,                 null: false, comment: "Tên chức năng"
    t.string  "FUNC_URL",                                       null: false, comment: "Url link to the page"
    t.integer "FUNC_PARENTID",                  default: 0,     null: false
    t.string  "FUNC_TITLE_CLASS",    limit: 50
    t.string  "FUNC_SELECTED_CLASS", limit: 50
    t.boolean "FUNC_HAS_CHILDREN",              default: false, null: false
  end

  create_table "tbljournalindex", primary_key: "JNAL_ID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "JNAL_IndexCode",   null: false
    t.string "JNAL_Description"
  end

  create_table "tbljuryexternalmembers", primary_key: "JEM_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "JEM_Code",               limit: 250, null: false
    t.string "JEM_MemberCode",         limit: 250, null: false
    t.string "JEM_DefenseSessionCode", limit: 50,  null: false
    t.string "JEM_StaffCode",          limit: 250, null: false
  end

  create_table "tbljurymembers", primary_key: "JuryMem_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "JuryMem_Code",               limit: 250
    t.string "JuryMem_MemberCode",         limit: 250, null: false
    t.string "JuryMem_DefenseSessionCode", limit: 50,  null: false
    t.string "JuryMem_StaffCode",          limit: 250, null: false
  end

  create_table "tbljuryresearchprojects", primary_key: "JURPRJ_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "JURPRJ_Code",          limit: 50
    t.string  "JURPRJ_Name",          limit: 500, null: false
    t.string  "JURPRJ_PROJCall_Code",             null: false
    t.string  "JURPRJ_UserCode",                  null: false
    t.integer "JURPRJ_Active",                    null: false
  end

  create_table "tbljuryrooms", primary_key: "JuryRoom_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "JuryRoom_Index",                         null: false
    t.string  "JuryRoom_Code",               limit: 50, null: false
    t.string  "JuryRoom_DefenseSessionCode", limit: 50, null: false
    t.string  "JuryRoom_StaffCode",          limit: 50, null: false
  end

  create_table "tbljuryslots", primary_key: "JurySlot_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "JurySlot_Index",                         null: false
    t.string  "JurySlot_Code",               limit: 50, null: false
    t.string  "JurySlot_Name",               limit: 50, null: false
    t.string  "JurySlot_DefenseSessionCode", limit: 50, null: false
    t.string  "JurySlot_StaffCode",          limit: 50, null: false
  end

  create_table "tbljurysubmittedprojectroles", primary_key: "JUPRJROL_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "JUPRJROL_CODE", limit: 50, null: false, comment: "Mã vai trò"
    t.string "JUPRJROL_NAME",            null: false, comment: "Tên vai trò"
  end

  create_table "tbljurysubmittedprojects", primary_key: "JUSUPRJ_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "JUSUPRJ_STAFFCODE",                          null: false, comment: "Mã thành viên (tham chiếu tblstaffs)"
    t.string "JUSUPRJ_JURYRESEARCHPROJECTCODE",            null: false
    t.string "JUSUPRJ_PRJCALLCODE",                        null: false, comment: "Mã đợt gọi đề tài (tham chiếu tblprojectcalls)"
    t.string "JUPSURJ_ROLECODE",                limit: 50, null: false, comment: "Mã vai trò của thành viên hội đồng xét (tham chiếu tbljurysubmittedprojectroles)"
  end

  create_table "tblmasterclasscourses", primary_key: "MSTCLSCRS_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "MSTCLSCRS_Code",       limit: 50, null: false
    t.string "MSTCLSCRS_ClassCode",  limit: 50, null: false
    t.string "MSTCLSCRS_CourseCode", limit: 50, null: false
  end

  create_table "tblmastercourses", primary_key: "MSTCRS_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "MSTCRS_Code",        limit: 50,  null: false
    t.string  "MSTCRS_Name",        limit: 256, null: false
    t.integer "MSTCRS_Credits",                 null: false
    t.string  "MSTCRS_SessionCode", limit: 50,  null: false
  end

  create_table "tblmastercoursesessions", primary_key: "MSTCRSSES_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "MSTCRSSES_Code",      limit: 50,  null: false
    t.string "MSTCRSSES_Name",      limit: 250, null: false
    t.string "MSTCRSSES_StartDate", limit: 50,  null: false
    t.string "MSTCRSSES_EndDate",   limit: 50,  null: false
  end

  create_table "tblmasterdefensejury", primary_key: "MASDEFJury_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "MASDEFJury_Code",                            null: false
    t.string "MASDEFJury_ThesisCode",                      null: false
    t.string "MASDEFJury_PresidentCode"
    t.string "MASDEFJury_SecretaryCode"
    t.string "MASDEFJury_Examiner1Code"
    t.string "MASDEFJury_Examiner2Code"
    t.string "MASDEFJury_MemberCode"
    t.string "MASDEFJury_SlotCode"
    t.string "MASDEFJury_RoomCode"
    t.string "MASDEFJury_DefenseSessionCode"
    t.string "MASDEFJury_StaffCode",          default: "", null: false, comment: "Mapped with a Staff who set the jury"
  end

  create_table "tblmasterthesis", primary_key: "Thesis_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "Thesis_Name",           null: false, collation: "utf8_unicode_ci"
    t.string "Thesis_Code",           null: false, collation: "utf8_unicode_ci"
    t.string "Thesis_StudentCode",    null: false, collation: "utf8_unicode_ci"
    t.string "Thesis_SupervisorCode", null: false, collation: "utf8_unicode_ci"
  end

  create_table "tblmasterthesisspecializationkeywords", primary_key: "MTKW_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "MTKW_ThesisCode", null: false, collation: "utf8_unicode_ci"
    t.string "MTKW_KWCode",     null: false, collation: "utf8_unicode_ci"
  end

  create_table "tblpapercategory", primary_key: "PCAT_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "PCAT_Name",                       null: false, collation: "utf8_unicode_ci"
    t.text    "PCAT_Description",    limit: 255,              collation: "utf8_unicode_ci"
    t.string  "PCAT_Code",           limit: 15,  null: false, collation: "utf8_unicode_ci"
    t.string  "PCAT_Journal",        limit: 30,  null: false,                               comment: "The loai bai bao"
    t.integer "PCAT_Budget",                     null: false,                               comment: "Tien "
    t.integer "PCAT_ConvertedHours",             null: false,                               comment: "So gio quy doi"
  end

  create_table "tblpapercategoryhourbudget", primary_key: "PCAHOBUD_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "PCAHOBUD_Code",              limit: 50, null: false
    t.string  "PCAHOBUD_PaperCategoryCode", limit: 50, null: false
    t.integer "PCAHOBUD_Hour",                         null: false
    t.integer "PCAHOBUD_Budget",                       null: false
    t.string  "PCAHOBUD_AcademicYearCode",  limit: 50, null: false
  end

  create_table "tblpapersdeclaration", primary_key: "PDECL_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "PDECL_Code",                                    null: false
    t.string  "PDECL_PaperCategory_Code",        limit: 20,    null: false
    t.string  "PDECL_User_Code",                 limit: 250,   null: false
    t.string  "PDECL_PublicationName",                         null: false, comment: "free text"
    t.string  "PDECL_JournalConferenceName",                   null: false, comment: "free text"
    t.string  "PDECL_Volumn",                    limit: 250,   null: false, comment: "Ten tap chi dang de tai duoc cong bo "
    t.integer "PDECL_Year",                                    null: false, comment: "free text"
    t.string  "PDECL_Month",                     limit: 50,    null: false
    t.string  "PDECL_ISSN",                                    null: false, comment: "free text"
    t.string  "PDECL_IndexCode",                 limit: 15,    null: false, comment: "mapped by journal index"
    t.integer "PDECL_PublicationConvertedHours",               null: false, comment: "free text"
    t.integer "PDECL_AuthorConvertedHours",                    null: false, comment: "free text"
    t.string  "PDECL_AuthorList",                limit: 512,                comment: "Contain list of all authors"
    t.string  "PDECL_ReportingAcademicDate",     limit: 20,    null: false
    t.text    "PDECL_SourceFile",                limit: 65535
    t.string  "PDECL_ApproveStatus",             limit: 50,    null: false
    t.string  "PDECL_Approve_UserCode"
  end

  create_table "tblpaperstaffs", primary_key: "PPSTF_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "PPSTF_Code",      null: false
    t.string "PPSTF_StaffCode", null: false
    t.string "PPSTF_PaperCode", null: false
  end

  create_table "tblpatentdeclaration", primary_key: "PAT_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "PAT_Name",                              null: false
    t.string  "PAT_User_Code",                         null: false
    t.string  "PAT_Authors"
    t.string  "PAT_Type"
    t.string  "PAT_Number"
    t.date    "PAT_DateOfIssue",                       null: false
    t.integer "PAT_ConvertedHours"
    t.integer "PAT_AuthorConvertedHours"
    t.string  "PAT_ReportingAcademicDate", limit: 20,  null: false
    t.string  "PAT_ApproveUserCode",       limit: 256
  end

  create_table "tblproducts", primary_key: "PROD_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "PROD_Code",        limit: 256,   null: false
    t.string  "PROD_ProjCode",    limit: 256,   null: false
    t.text    "PROD_Name",        limit: 255,   null: false
    t.string  "PROD_StartDate",   limit: 256
    t.string  "PROD_EndDate",     limit: 256
    t.integer "PROD_Budget"
    t.string  "PROD_Status_Code", limit: 256,   null: false
    t.text    "PROD_SourceFile",  limit: 65535, null: false
    t.string  "PROD_User_Code",   limit: 256,   null: false
  end

  create_table "tblprojectcalls", primary_key: "PROJCALL_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "PROJCALL_CODE",        limit: 50, null: false, comment: "Mã đợt gọi"
    t.string "PROJCALL_PROJCATCODE", limit: 50, null: false, comment: "Mã loại đề tài (tham chiếu tblprojectcategory)"
    t.string "PROJCALL_NAME",        limit: 50, null: false, comment: "Tên đợt gọi đề tài"
    t.date   "PROJCALL_DATE",                   null: false, comment: "Ngay"
    t.string "PROJCALL_STATUS"
  end

  create_table "tblprojectcategory", primary_key: "PROJCAT_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "PROJCAT_Name",        null: false
    t.string "PROJCAT_Description"
    t.string "PROJCAT_Code",        null: false
  end

  create_table "tblprojectparticipationroles", primary_key: "PROJPARTIROLE_ID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "PROJPARTIROLE_Code",        limit: 256, null: false
    t.string "PROJPARTIROLE_Description", limit: 512, null: false
  end

  create_table "tblprojectprojectresearchfields", primary_key: "PRJPRJRSHF_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "PRJPRJRSHF_PROJCode",                null: false
    t.string "PRJPRJRSHF_PRJRSHFCode", limit: 500, null: false
  end

  create_table "tblprojectresearchfields", primary_key: "PRJRSHF_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "PRJRSHF_Code", limit: 50,  null: false
    t.string "PRJRSHF_Name", limit: 500, null: false
  end

  create_table "tblprojects", primary_key: "PROJ_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "PROJ_Code",                  limit: 256,               null: false, collation: "utf8_unicode_ci"
    t.string  "PROJ_AcaYear_Code",          limit: 256,                            collation: "utf8_unicode_ci"
    t.text    "PROJ_Name",                  limit: 255,               null: false, collation: "utf8_unicode_ci"
    t.string  "PROJ_ProjCat_Code",          limit: 256,                            collation: "utf8_unicode_ci"
    t.string  "PROJ_StartDate",             limit: 256,                            collation: "utf8_unicode_ci"
    t.string  "PROJ_EndDate",               limit: 256,                            collation: "utf8_unicode_ci"
    t.text    "PROJ_Survey",                limit: 65535,                          collation: "utf8_unicode_ci"
    t.text    "PROJ_Motivation",            limit: 65535,                          collation: "utf8_unicode_ci", comment: "Dong co xay dung"
    t.text    "PROJ_Objective",             limit: 65535,                          collation: "utf8_unicode_ci"
    t.text    "PROJ_Content",               limit: 65535,                          collation: "utf8_unicode_ci"
    t.text    "PROJ_Result",                limit: 65535,                          collation: "utf8_unicode_ci"
    t.text    "PROJ_SourceFile",            limit: 65535,                          collation: "utf8_unicode_ci"
    t.string  "PROJ_Status_Code",           limit: 256,                            collation: "utf8_unicode_ci"
    t.integer "PROJ_TotalBudget"
    t.integer "PROJ_BudgetMaterial"
    t.string  "PROJ_User_Code",             limit: 256,               null: false, collation: "utf8_unicode_ci"
    t.string  "PROJ_FacultyCode",           limit: 100,                            collation: "utf8_unicode_ci"
    t.integer "PROJ_Locked1",               limit: 1,     default: 0
    t.text    "PROJ_SurveyChanged",         limit: 65535,                          collation: "utf8_unicode_ci"
    t.text    "PROJ_MotivationChanged",     limit: 65535,                          collation: "utf8_unicode_ci"
    t.text    "PROJ_ObjectiveChanged",      limit: 65535,                          collation: "utf8_unicode_ci"
    t.text    "PROJ_ContentChanged",        limit: 65535,                          collation: "utf8_unicode_ci"
    t.text    "PROJ_ResultChanged",         limit: 65535,                          collation: "utf8_unicode_ci"
    t.integer "PROJ_BudgetChanged",                       default: 0
    t.integer "PROJ_BudgetMaterialChanged"
    t.integer "PROJ_Locked2",               limit: 1
    t.string  "PROJ_PRJCall_Code",          limit: 100,               null: false, collation: "utf8_unicode_ci"
    t.string  "PROJ_ResearchFieldCode",     limit: 50,                null: false
  end

  create_table "tblprojectsdeclaration", primary_key: "PROJDECL_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "PROJDECL_Name",                               null: false
    t.string  "PROJDECL_ProjCategory_Code",                  null: false
    t.string  "PROJDECL_User_Code",                          null: false
    t.integer "PROJDECL_Budget",                             null: false
    t.integer "PROJDECL_ConvertedHours",                     null: false
    t.integer "PROJDECL_AuthorConvertedHours"
    t.integer "PROJDECL_Year"
    t.string  "PROJDECL_ReportingAcademicDate", limit: 20,   null: false
    t.string  "PROJDECL_RoleCode",              limit: 50
    t.string  "PROJDECL_Sponsor",               limit: 1024
    t.string  "PROJDECL_StartDate",             limit: 50
    t.string  "PROJDECL_EndDate",               limit: 50
    t.string  "PROJDECL_ApproveUserCode",       limit: 256
  end

  create_table "tblprojectstaffs", primary_key: "PROJSTAFF_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "PROJSTAFF_Code",       limit: 256,                                  null: false
    t.string "PROJSTAFF_Staff_Code", limit: 256,                                  null: false
    t.string "PROJSTAFF_Proj_Code",  limit: 256, default: "Map voi bang project", null: false
    t.string "PROJSTAFF_Role_Code",  limit: 256, default: "Map voi bang Roles",   null: false
  end

  create_table "tblprojectstatuses", primary_key: "PROJSTAT_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "PROJSTAT_Code",        limit: 256, null: false
    t.string "PROJSTAT_Description", limit: 256, null: false
  end

  create_table "tblprojecttasks", primary_key: "PRJTSK_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string  "PRJTSK_Code",                    null: false
    t.string  "PRJTSK_StaffCode",               null: false
    t.string  "PRJTSK_RoleCode",  limit: 50,    null: false
    t.string  "PRJTSK_Proj_Code", limit: 100,   null: false, comment: "Project code"
    t.text    "PRJTSK_Task",      limit: 65535,              comment: "Task's content"
    t.integer "PRJTSK_NRBDay",                               comment: "Working day"
    t.integer "PRJTSK_Cost",                                 comment: "Fee for task"
  end

  create_table "tblregularclasscoursedepartments", primary_key: "RCLSCRSDEPT_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "RCLSCRSDEPT_Code",            limit: 100, null: false
    t.string "RCLSCRSDEPT_ClassCourseCode", limit: 50,  null: false
    t.string "RCLSCRSDEPT_DepartmentCode",  limit: 50,  null: false
  end

  create_table "tblregularclasscoursestaffs", primary_key: "RCLSCRSSTAFF_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "RCLSCRSSTAFF_CODE",            limit: 100, null: false
    t.string "RCLSCRSSTAFF_StaffCode",       limit: 50,  null: false
    t.string "RCLSCRSSTAFF_ClassCourseCode", limit: 50,  null: false
  end

  create_table "tblregularcourse", primary_key: "RC_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "RC_Name",         limit: 500, null: false, collation: "utf8_unicode_ci"
    t.string "RC_Code",         limit: 20,  null: false, collation: "utf8_unicode_ci"
    t.string "RC_CreditHour",   limit: 50,  null: false, collation: "utf8_unicode_ci"
    t.string "RC_Faculty_Code", limit: 50,  null: false, collation: "utf8_unicode_ci"
  end

  create_table "tblregularcoursedepartments", primary_key: "CRSDEPT_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "CRSDEPT_CODE",           limit: 100, null: false
    t.string "CRSDEPT_CourseCode",     limit: 50,  null: false
    t.string "CRSDEPT_DepartmentCode", limit: 50,  null: false
  end

  create_table "tblregularcourseexam", primary_key: "RCE_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "RCE_Code",         limit: 50,  null: false, collation: "utf8_unicode_ci"
    t.string  "RCE_ACaYear_Code", limit: 20,  null: false, collation: "utf8_unicode_ci"
    t.integer "RCE_Semester",                 null: false
    t.string  "RCE_Class_Code",   limit: 10,  null: false, collation: "utf8_unicode_ci"
    t.string  "RCE_RC_Code",      limit: 10,  null: false, collation: "utf8_unicode_ci"
    t.string  "RCE_RC_Name",      limit: 100, null: false, collation: "utf8_unicode_ci"
    t.integer "RCE_Week",                     null: false
    t.integer "RCE_Day",                      null: false
    t.string  "RCE_Date",         limit: 10,  null: false, collation: "utf8_unicode_ci"
    t.string  "RCE_Turn",         limit: 20,  null: false
    t.string  "RCE_Slots",        limit: 50,  null: false, collation: "utf8_unicode_ci"
    t.string  "RCE_Group",        limit: 50,  null: false, collation: "utf8_unicode_ci"
    t.string  "RCE_Room_Code",    limit: 20,  null: false, collation: "utf8_unicode_ci"
  end

  create_table "tblregularcoursetimetable", primary_key: "RCTT_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "RCTT_RCTTE_Code", limit: 50,  null: false, collation: "utf8_unicode_ci"
    t.string  "RCTT_Code",       limit: 100, null: false, collation: "utf8_unicode_ci"
    t.integer "RCTT_Day",                    null: false
    t.string  "RCTT_Slots",      limit: 50,  null: false, collation: "utf8_unicode_ci"
    t.string  "RCTT_Weeks",      limit: 50,  null: false, collation: "utf8_unicode_ci"
    t.string  "RCTT_Room_Code",  limit: 50,  null: false, collation: "utf8_unicode_ci"
  end

  create_table "tblregularcoursetimetableentry", primary_key: "RCTTE_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "RCTTE_AcaYear_Code",  limit: 50,  null: false, collation: "utf8_unicode_ci"
    t.integer "RCTTE_Semester",                  null: false
    t.string  "RCTTE_Semester_Type", limit: 20,  null: false, collation: "utf8_unicode_ci"
    t.string  "RCTTE_Class_Code",    limit: 50,  null: false, collation: "utf8_unicode_ci"
    t.string  "RCTTE_Course_Code",   limit: 50,               collation: "utf8_unicode_ci"
    t.string  "RCTTE_Code",          limit: 100, null: false, collation: "utf8_unicode_ci"
    t.string  "RCTTE_Class_Type",    limit: 50,  null: false, collation: "utf8_unicode_ci"
  end

  create_table "tblregularcoursetimetablestatus", primary_key: "RCTTS_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "RCTTS_ACaYear_Code", limit: 20, null: false, collation: "utf8_unicode_ci"
    t.integer "RCTTS_Semester",                null: false
    t.integer "RCTTS_Status",                  null: false
  end

  create_table "tblroles", primary_key: "ROLE_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "ROLE_CODE",        limit: 256,   null: false
    t.string "ROLE_NAME",        limit: 512,   null: false
    t.text   "ROLE_DESCRIPTION", limit: 65535, null: false
  end

  create_table "tblroomcluster", primary_key: "RC_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "RC_Code", null: false
    t.string  "RC_Name", null: false, collation: "utf8_unicode_ci"
  end

  create_table "tblrooms", primary_key: "R_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "R_Code",         limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.string  "R_Building",     limit: 50,             null: false, collation: "utf8_unicode_ci"
    t.integer "R_Capacity",                default: 0, null: false
    t.string  "R_Note",                                             collation: "utf8_unicode_ci"
    t.integer "R_Cluster_Code",            default: 0
    t.integer "R_Floor",                   default: 0, null: false
  end

  create_table "tblscientificfield", primary_key: "SCIF_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "SCIF_Code",    limit: 512, null: false, collation: "ascii_general_ci"
    t.string "SCIF_EngName", limit: 512, null: false
    t.string "SCIF_VNName",  limit: 512, null: false, collation: "utf8_unicode_ci"
    t.index ["SCIF_Code"], name: "SCIF_Code", unique: true, using: :btree
  end

  create_table "tblspecializationkeywords", primary_key: "KW_ID", unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "KW_Code",                limit: 512, null: false, collation: "utf8_unicode_ci"
    t.string "KW_EngName",             limit: 512, null: false, collation: "utf8_unicode_ci"
    t.string "KW_VNName",              limit: 512, null: false, collation: "utf8_unicode_ci"
    t.string "KW_ScientificFieldCode", limit: 512, null: false, collation: "utf8_unicode_ci"
  end

  create_table "tblstaffacademicrank", primary_key: "STACR_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "STACR_Code",             limit: 50, null: false
    t.string "STACR_StaffCode",        limit: 50, null: false
    t.string "STACR_AcademicRankCode", limit: 50, null: false
  end

  create_table "tblstaffcategory", primary_key: "Staff_Category_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "Staff_Category_Code",      null: false
    t.string "Staff_Category_Name",      null: false
    t.string "Staff_Category_AsciiName", null: false
  end

  create_table "tblstaffjurysubmittedprojects", primary_key: "STFJUPRJ_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "STFJUPRJ_CODE",                    null: false, comment: "Mã đợt gọi"
    t.string "STFJUPRJ_STAFFJURCODE",            null: false, comment: "Mã loại đề tài (tham chiếu tblprojectcategory)"
    t.string "STFJUPRJ_PRJCODE",      limit: 50, null: false, comment: "Tên đợt gọi đề tài"
    t.string "STFJUPRJ_JURY_CODE",               null: false
    t.string "STFJUPRJ_PRJCALLCODE",             null: false
  end

  create_table "tblstaffs", primary_key: "Staff_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "Staff_Code",                                        null: false
    t.string "Staff_Name",                                        null: false
    t.string "Staff_AsciiName"
    t.string "Staff_Email"
    t.string "Staff_Department_Code",                             null: false
    t.string "Staff_Phone",           limit: 32
    t.string "Staff_Category_Code",                               null: false
    t.string "Staff_User_Code",                                   null: false
    t.string "Staff_Faculty_Code",                                null: false
    t.string "Staff_DateOfBirth",     limit: 30
    t.string "Staff_Gender",          limit: 50, default: "male"
    t.string "Staff_AcademicRank",    limit: 50
  end

  create_table "tblstaffspecializationkeywords", primary_key: "STFKW_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "STFKW_StaffCode",   limit: 512, null: false, collation: "utf8_unicode_ci"
    t.string "STFKW_KeywordCode", limit: 512, null: false, collation: "utf8_unicode_ci"
  end

  create_table "tblstudent", primary_key: "Student_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "Student_Code",                     collation: "utf8_unicode_ci"
    t.string  "Student_Name",        null: false, collation: "utf8_unicode_ci"
    t.string  "Student_Email",                    collation: "utf8_unicode_ci"
    t.string  "Student_Phone",                    collation: "utf8_unicode_ci"
    t.integer "Student_StatusID",    null: false
    t.string  "Student_ClassesCode",              collation: "utf8_unicode_ci"
  end

  create_table "tbluniversity", primary_key: "University_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "University_Code",                 null: false, collation: "utf8_unicode_ci"
    t.string "University_Name",                 null: false, collation: "utf8_unicode_ci"
    t.string "University_AsciiName",            null: false, collation: "utf8_unicode_ci"
    t.string "University_Role",      limit: 10,              collation: "ascii_general_ci"
    t.index ["University_Code"], name: "University_Code", unique: true, using: :btree
  end

  create_table "tbluserfunctions", primary_key: "USERFUNC_ID", id: :bigint, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "USERFUNC_CODE",     null: false, comment: "Mã user-chức năng"
    t.string "USERFUNC_USERCODE", null: false, comment: "Mã user"
    t.string "USERFUNC_FUNCCODE", null: false, comment: "Mã chức năng (tham chiếu bảng tblfunctions)"
  end

  create_table "tbluserroles", primary_key: "UserRole_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "Username", limit: 50, null: false, collation: "utf8_unicode_ci"
    t.string "Role",     limit: 50, null: false, collation: "utf8_unicode_ci"
    t.index ["Role", "Username"], name: "uni_username_role", unique: true, using: :btree
    t.index ["Username"], name: "fk_username_idx", using: :btree
  end

  create_table "tblusers", primary_key: "User_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "username"
    t.string   "salt"
    t.boolean  "enabled"
    t.string   "user_code"
    t.string   "avatar"
    t.string   "Password"
    t.boolean  "is_admin",               default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.index ["email"], name: "index_tblusers_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_tblusers_on_reset_password_token", unique: true, using: :btree
    t.index ["username"], name: "username", unique: true, using: :btree
  end

  create_table "tblweeks", primary_key: "W_ID", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "W_Code",         limit: 50, null: false, collation: "utf8_unicode_ci"
    t.integer "W_Name",                    null: false
    t.string  "W_AcaYear_Code", limit: 50, null: false, collation: "utf8_unicode_ci"
    t.string  "W_StartDate",    limit: 50, null: false, collation: "utf8_unicode_ci"
    t.string  "W_EndDate",      limit: 50, null: false, collation: "utf8_unicode_ci"
  end

end
