namespace :db do
  desc "Fake course"
  task fake_course: [:environment] do
    MasterCourse.create code: "20171", name: "20171",
      start_date: "2017/08/01", end_date: "2017/12/31"
    MasterCourse.create code: "20172", name: "20172",
      start_date: "2018/01/15", end_date: "2018/6/31"

    MasterCourse.create code: "20161", name: "20161",
      start_date: "2016/08/01", end_date: "2016/12/31"
    MasterCourse.create code: "20162", name: "20162",
      start_date: "2017/01/15", end_date: "2017/6/31"

    MasterCourse.create code: "20101", name: "20101",
      start_date: "2010/08/01", end_date: "2010/12/31"
    MasterCourse.create code: "20102", name: "20102",
      start_date: "2011/01/15", end_date: "2011/6/31"

    MasterCourse.create code: "20111", name: "20111",
      start_date: "2011/08/01", end_date: "2011/12/31"
    MasterCourse.create code: "20112", name: "20112",
      start_date: "2012/01/15", end_date: "2012/6/31"

    MasterCourse.create code: "20121", name: "20121",
      start_date: "2012/08/01", end_date: "2012/12/31"
    MasterCourse.create code: "20122", name: "20122",
      start_date: "2013/01/15", end_date: "2013/6/31"

    MasterCourse.create code: "20131", name: "20131",
      start_date: "2013/08/01", end_date: "2013/12/31"
    MasterCourse.create code: "20132", name: "20132",
      start_date: "2014/01/15", end_date: "2014/6/31"

    MasterCourse.create code: "20141", name: "20141",
      start_date: "2014/08/01", end_date: "2014/12/31"
    MasterCourse.create code: "20142", name: "20142",
      start_date: "2015/01/15", end_date: "2015/6/31"

    MasterCourse.create code: "20151", name: "20151",
      start_date: "2015/08/01", end_date: "2015/12/31"
    MasterCourse.create code: "20152", name: "20152",
      start_date: "2016/01/15", end_date: "2016/6/31"

    MasterCourse.create code: "20181", name: "20181",
      start_date: "2018/08/01", end_date: "2018/12/31"
    MasterCourse.create code: "20182", name: "20182",
      start_date: "2018/01/15", end_date: "2018/6/31"
  end
end
