use trainning;
-- Viết lệnh sql để tạo dữ liệu cho các bảng
insert into categories(categories.category_name,categories.created_at,categories.updated_at) 
values ("categories_1",current_date(),current_date());
insert into categories(categories.category_name,categories.created_at,categories.updated_at) 
values ("categories_2",current_date(),current_date());
insert into categories(categories.category_name,categories.created_at,categories.updated_at) 
values ("categories_3",current_date(),current_date());

insert into companies(companies.company_name,companies.company_code,companies.created_at,companies.updated_at) 
values ("companies_1","companies_1",current_date(),current_date());
insert into companies(companies.company_name,companies.company_code,companies.created_at,companies.updated_at) 
values ("companies_1","companies_1",current_date(),current_date());
insert into companies(companies.company_name,companies.company_code,companies.created_at,companies.updated_at) 
values ("monstar-lab","companies_1",current_date(),current_date());

insert into projects(projects.project_name,projects.projected_spend,projects.projected_variance,
projects.revenue_recognised,projects.category_id,projects.company_id,projects.created_at,projects.updated_at)
values ("project_1",10,10,10,3,3,current_date(),current_date());
insert into projects(projects.project_name,projects.projected_spend,projects.projected_variance,
projects.revenue_recognised,projects.category_id,projects.company_id,projects.created_at,projects.updated_at)
values ("project_2",110,10,10,3,3,current_date(),current_date());
insert into projects(projects.project_name,projects.projected_spend,projects.projected_variance,
projects.revenue_recognised,projects.category_id,projects.company_id,projects.created_at,projects.updated_at)
values ("project_3",120,10,10,3,3,current_date(),current_date());
insert into projects(projects.project_name,projects.projected_spend,projects.projected_variance,
projects.revenue_recognised,projects.category_id,projects.company_id,projects.created_at,projects.updated_at)
values ("project_4",130,10,10,3,3,current_date(),current_date());
insert into projects(projects.project_name,projects.projected_spend,projects.projected_variance,
projects.revenue_recognised,projects.category_id,projects.company_id,projects.created_at,projects.updated_at)
values ("project_5",10,10,10,3,3,current_date(),current_date());
insert into projects(projects.project_name,projects.projected_spend,projects.projected_variance,
projects.revenue_recognised,projects.category_id,projects.company_id,projects.created_at,projects.updated_at)
values ("project_6",10,10,10,3,3,current_date(),current_date());
insert into projects(projects.project_name,projects.projected_spend,projects.projected_variance,
projects.revenue_recognised,projects.category_id,projects.company_id,projects.created_at,projects.updated_at)
values ("project_7",10,10,10,3,3,current_date(),current_date());
insert into projects(projects.project_name,projects.projected_spend,projects.projected_variance,
projects.revenue_recognised,projects.category_id,projects.company_id,projects.created_at,projects.updated_at)
values ("project_8",10,10,10,3,3,current_date(),current_date());
insert into projects(projects.project_name,projects.projected_spend,projects.projected_variance,
projects.revenue_recognised,projects.category_id,projects.company_id,projects.created_at,projects.updated_at)
values ("project_9",10,10,10,3,3,current_date(),current_date());
insert into projects(projects.project_name,projects.projected_spend,projects.projected_variance,
projects.revenue_recognised,projects.category_id,projects.company_id,projects.created_at,projects.updated_at)
values ("project_10",200,10,10,3,3,current_date(),current_date());

insert into users(users.username,users.password,users.email,users.image_url,users.birthday,users.is_active,
users.created_at,users.updated_at)
values("username_1","password_1","email1@gmail.com","image1.png",date("2000-12-21"),true,current_date(),current_date());
insert into users(users.username,users.password,users.email,users.image_url,users.birthday,users.is_active,
users.created_at,users.updated_at)
values("username_2","password_2","email2@gmail.com","image2.png",date("2000-12-21"),true,current_date(),current_date());insert into users(users.username,users.password,users.email,users.image_url,users.birthday,users.is_active,
users.created_at,users.updated_at)
values("username_3","password_3","email3@gmail.com","image3.png",date("2000-12-21"),true,current_date(),current_date());insert into users(users.username,users.password,users.email,users.image_url,users.birthday,users.is_active,
users.created_at,users.updated_at)
values("username_4","password_4","email4@gmail.com","image4.png",date("2000-12-21"),true,current_date(),current_date());insert into users(users.username,users.password,users.email,users.image_url,users.birthday,users.is_active,
users.created_at,users.updated_at)
values("username_5","password_5","email5@gmail.com","image5.png",date("2000-12-21"),true,current_date(),current_date());

insert into project_users(project_users.project_id,project_users.user_id,project_users.created_at,project_users.updated_at)
values(1,1,current_date(),current_date());
insert into project_users(project_users.project_id,project_users.user_id,project_users.created_at,project_users.updated_at)
values(2,2,current_date(),current_date());
insert into project_users(project_users.project_id,project_users.user_id,project_users.created_at,project_users.updated_at)
values(1,3,current_date(),current_date());
insert into project_users(project_users.project_id,project_users.user_id,project_users.created_at,project_users.updated_at)
values(3,5,current_date(),current_date());
insert into project_users(project_users.project_id,project_users.user_id,project_users.created_at,project_users.updated_at)
values(3,4,current_date(),current_date());

-- Viết lệnh sql để có thể lấy thông tin những bản ghi của projects và số lượng user của mỗi projects đó (count user) 
select projects.*,count(users.id) as count_users from projects,project_users,users
where projects.id = project_users.project_id and project_users.user_id = users.id
group by projects.id;

-- viết lệnh sql để lấy ra danh sách các project của company có company_name = “monstar-lab”  
select projects.* from projects, companies
where projects.company_id = companies.id and companies.company_name = "monstar-lab";

-- viết lệnh sql lấy ra danh sách các công ty có project có project_spend > 100
select distinct companies.* from companies, projects
where companies.id = projects.company_id and projected_spend > 100;

-- viết lệnh sql để lấy ra thông tin của user  tham gia vào projects
select distinct users.* from users,project_users,projects
where users.id = project_users.user_id and project_users.project_id = projects.id;

-- lấy ra danh sách project mà có số lượng user tham gia > 2 , sắp xếp số lượng user tham gia tăng dần
select projects.*,count(users.id) as count_users from projects,project_users,users
where projects.id = project_users.project_id and project_users.user_id = users.id
group by projects.id having count_users > 2 order by count_users asc;

-- Xoá project mà chưa có user nào tham gia
delete from projects where projects.id not in(select distinct project_users.project_id from project_users);



