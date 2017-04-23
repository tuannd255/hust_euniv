namespace :db do
  desc "Fake subject"
  task fake_subject: [:environment] do
    MasterSubject.create code: "IT" + Faker::Number.number(4), name: "Các phương pháp học máy và ứng dụng",
      creadit: rand(1..4)
    MasterSubject.create code: "IT" + Faker::Number.number(4), name: "Cảm biến hình ảnh và ứng dụng",
      creadit: rand(1..4)
    MasterSubject.create code: "IT" + Faker::Number.number(4), name: "Mạng nơ ron và ứng dụng",
      creadit: rand(1..4)
    MasterSubject.create code: "IT" + Faker::Number.number(4), name: "Xử lý ảnh số",
      creadit: rand(1..4)
    MasterSubject.create code: "IT" + Faker::Number.number(4), name: "Thiết bị quang điện tử chuyên dụng dùng trong y tế",
      creadit: rand(1..4)
    MasterSubject.create code: "IT" + Faker::Number.number(4), name: "Cơ sinh và ứng dụng",
      creadit: rand(1..4)
    MasterSubject.create code: "IT" + Faker::Number.number(4), name: "Các giải pháp quản trị mạng doanh nghiệp",
      creadit: rand(1..4)
    MasterSubject.create code: "IT" + Faker::Number.number(4), name: "Hệ thống hướng tác tử",
      creadit: rand(1..4)
    MasterSubject.create code: "IT" + Faker::Number.number(4), name: "Khai phá dữ liệu",
      creadit: rand(1..4)
    MasterSubject.create code: "IT" + Faker::Number.number(4), name: "Kinh tế công nghệ phần mềm",
      creadit: rand(1..4)
    MasterSubject.create code: "IT" + Faker::Number.number(4), name: "Mạng máy tính tiên tiến",
      creadit: rand(1..4)
    MasterSubject.create code: "IT" + Faker::Number.number(4), name: "Quản trị dự án Công nghệ thông tin",
      creadit: rand(1..4)
    MasterSubject.create code: "IT" + Faker::Number.number(4), name: "Thiết kế mạng",
      creadit: rand(1..4)
    MasterSubject.create code: "IT" + Faker::Number.number(4), name: "Thiết kế và xây dựng phần mềm phân tán",
      creadit: rand(1..4)
    MasterSubject.create code: "IT" + Faker::Number.number(4), name: "Tìm kiếm cục bộ dựa trên ràng buộc",
      creadit: rand(1..4)
    MasterSubject.create code: "IT" + Faker::Number.number(4), name: "Tính toán di động",
      creadit: rand(1..4)
    MasterSubject.create code: "IT" + Faker::Number.number(4), name: "Truyền thông số",
      creadit: rand(1..4)
  end
end
