CREATE TABLE jobs (
  id INT,
  name VARCHAR(500) COLLATE utf8_unicode_ci,
  media_id INT,
  job_category_id INT,
  job_type_id INT,
  description VARCHAR(500) COLLATE utf8_unicode_ci,
  detail VARCHAR(500) COLLATE utf8_unicode_ci,
  business_skill VARCHAR(500) COLLATE utf8_unicode_ci,
  knowledge VARCHAR(500) COLLATE utf8_unicode_ci,
  location VARCHAR(500) COLLATE utf8_unicode_ci,
  activity VARCHAR(500) COLLATE utf8_unicode_ci,
  academic_degree_doctor VARCHAR(500) COLLATE utf8_unicode_ci,
  academic_degree_master VARCHAR(500) COLLATE utf8_unicode_ci,
  academic_degree_professional VARCHAR(500) COLLATE utf8_unicode_ci,
  academic_degree_bachelor VARCHAR(500) COLLATE utf8_unicode_ci,
  salary_statistic_group VARCHAR(500) COLLATE utf8_unicode_ci,
  salary_range_first_year DECIMAL(9,2),
  salary_range_average DECIMAL(9,2),
  salary_range_remarks VARCHAR(500) COLLATE utf8_unicode_ci,
  restriction VARCHAR(500) COLLATE utf8_unicode_ci,
  estimated_total_workers INT,
  remarks VARCHAR(500) COLLATE utf8_unicode_ci,
  url VARCHAR(500) COLLATE utf8_unicode_ci,
  seo_description VARCHAR(500) COLLATE utf8_unicode_ci,
  seo_keywords VARCHAR(500) COLLATE utf8_unicode_ci,
  sort_order VARCHAR(500) COLLATE utf8_unicode_ci,
  publish_status VARCHAR(500) COLLATE utf8_unicode_ci,
  version VARCHAR(500) COLLATE utf8_unicode_ci,
  created_by VARCHAR(500) COLLATE utf8_unicode_ci,
  created DATETIME,
  modified DATETIME,
  deleted DATETIME
);

INSERT INTO jobs VALUES (
1,
"software",
1,
1,
1,
"software engineer",
"no description",
"interpersonal skill",
"technical knowledge",
"kuala lumpur",
"engineering",
"required",
"required",
"required",
"required",
"senior executive",
10000.00,
10000.00,
"no remark",
"no restriction",
10,
"no remark",
"www.google.com",
"SEO desc",
"SEO keys",
1,
1,
"v1.0",
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);


INSERT INTO jobs VALUES (
2,
"software",
1,
1,
1,
"senior software engineer",
"no description",
"interpersonal skill",
"technical knowledge",
"kuala lumpur",
"engineering",
"required",
"required",
"required",
"required",
"senior executive",
10000.00,
10000.00,
"no remark",
"no restriction",
10,
"no remark",
"www.google.com",
"SEO desc",
"SEO keys",
2,
1,
"v1.0",
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);

INSERT INTO jobs VALUES (
3,
"キャビンアテンダント",
1,
1,
1,
"キャビンアテンダント",
"キャビンアテンダント",
"キャビンアテンダント",
"キャビンアテンダント",
"キャビンアテンダント",
"キャビンアテンダント",
"required",
"required",
"required",
"required",
"キャビンアテンダント",
10000.00,
10000.00,
"キャビンアテンダント",
"キャビンアテンダント",
10,
"キャビンアテンダント",
"www.google.com",
"SEO desc",
"SEO keys",
3,
1,
"v1.0",
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);

CREATE TABLE job_categories (
  id INT,
  name VARCHAR(500) COLLATE utf8_unicode_ci,
  sort_order VARCHAR(500) COLLATE utf8_unicode_ci,
  created_by VARCHAR(500) COLLATE utf8_unicode_ci,
  created DATETIME,
  modified DATETIME,
  deleted DATETIME
);

INSERT INTO job_categories VALUES (
1,
"software",
1,
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);

INSERT INTO job_categories VALUES (
2,
"キャビンアテンダント",
2,
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);

CREATE TABLE job_types (
  id INT,
  job_category_id INT,
  name VARCHAR(500) COLLATE utf8_unicode_ci,
  sort_order VARCHAR(500) COLLATE utf8_unicode_ci,
  created_by VARCHAR(500) COLLATE utf8_unicode_ci,
  created DATETIME,
  modified DATETIME,
  deleted DATETIME
);

INSERT INTO job_types VALUES (
1,
1,
"software",
"asc",
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);

INSERT INTO job_types VALUES (
2,
1,
"キャビンアテンダント",
"asc",
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);

CREATE TABLE jobs_personalities (
  id INT,
  job_id INT,
  personality_id INT,
  created_by VARCHAR(500) COLLATE utf8_unicode_ci,
  created DATETIME,
  modified DATETIME,
  deleted DATETIME
);

INSERT INTO jobs_personalities VALUES (
1,
3,
1,
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);

CREATE TABLE personalities (
  id INT,
  name VARCHAR(500) COLLATE utf8_unicode_ci,
  created_by VARCHAR(500) COLLATE utf8_unicode_ci,
  created DATETIME,
  modified DATETIME,
  deleted DATETIME
);

INSERT INTO personalities VALUES (
1,
"キャビンアテンダント",
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);

CREATE TABLE jobs_practical_skills (
  id INT,
  job_id INT,
  practical_skill_id INT,
  created_by VARCHAR(500) COLLATE utf8_unicode_ci,
  created DATETIME,
  modified DATETIME,
  deleted DATETIME
);

INSERT INTO jobs_practical_skills VALUES (
1,
3,
1,
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);

CREATE TABLE practical_skills (
  id INT,
  name VARCHAR(500) COLLATE utf8_unicode_ci,
  created_by VARCHAR(500) COLLATE utf8_unicode_ci,
  created DATETIME,
  modified DATETIME,
  deleted DATETIME
);

INSERT INTO practical_skills VALUES (
1,
"キャビンアテンダント",
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);

CREATE TABLE jobs_basic_abilities (
  id INT,
  job_id INT,
  basic_ability_id INT,
  created_by VARCHAR(500) COLLATE utf8_unicode_ci,
  created DATETIME,
  modified DATETIME,
  deleted DATETIME
);

INSERT INTO jobs_basic_abilities VALUES (
1,
3,
1,
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);

CREATE TABLE basic_abilities (
  id INT,
  name VARCHAR(500) COLLATE utf8_unicode_ci,
  created_by VARCHAR(500) COLLATE utf8_unicode_ci,
  created DATETIME,
  modified DATETIME,
  deleted DATETIME
);

INSERT INTO basic_abilities VALUES (
1,
"キャビンアテンダント",
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);

CREATE TABLE jobs_tools (
  id INT,
  job_id INT,
  affiliate_id INT,
  created_by VARCHAR(500) COLLATE utf8_unicode_ci,
  created DATETIME,
  modified DATETIME,
  deleted DATETIME
);

INSERT INTO jobs_tools VALUES (
1,
3,
1,
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);

CREATE TABLE tools (
  id INT,
  name VARCHAR(500) COLLATE utf8_unicode_ci,
  created_by VARCHAR(500) COLLATE utf8_unicode_ci,
  created DATETIME,
  modified DATETIME,
  deleted DATETIME
);

INSERT INTO tools VALUES (
1,
"キャビンアテンダント",
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);

CREATE TABLE jobs_career_paths (
  id INT,
  job_id INT,
  affiliate_id INT,
  created_by VARCHAR(500) COLLATE utf8_unicode_ci,
  created DATETIME,
  modified DATETIME,
  deleted DATETIME
);

INSERT INTO jobs_career_paths VALUES (
1,
3,
1,
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);

CREATE TABLE career_paths (
  id INT,
  type INT,
  name VARCHAR(500) COLLATE utf8_unicode_ci,
  created_by VARCHAR(500) COLLATE utf8_unicode_ci,
  created DATETIME,
  modified DATETIME,
  deleted DATETIME
);

INSERT INTO career_paths VALUES (
1,
3,
"キャビンアテンダント",
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);

CREATE TABLE jobs_rec_qualifications (
  id INT,
  job_id INT,
  affiliate_id INT,
  created_by VARCHAR(500) COLLATE utf8_unicode_ci,
  created DATETIME,
  modified DATETIME,
  deleted DATETIME
);

INSERT INTO jobs_rec_qualifications VALUES (
1,
3,
1,
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);

CREATE TABLE rec_qualifications (
  id INT,
  type INT,
  name VARCHAR(500) COLLATE utf8_unicode_ci,
  created_by VARCHAR(500) COLLATE utf8_unicode_ci,
  created DATETIME,
  modified DATETIME,
  deleted DATETIME
);

INSERT INTO rec_qualifications VALUES (
1,
3,
"キャビンアテンダント",
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);

CREATE TABLE jobs_req_qualifications (
  id INT,
  job_id INT,
  affiliate_id INT,
  created_by VARCHAR(500) COLLATE utf8_unicode_ci,
  created DATETIME,
  modified DATETIME,
  deleted DATETIME
);

INSERT INTO jobs_req_qualifications VALUES (
1,
3,
1,
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);

CREATE TABLE req_qualifications (
  id INT,
  type INT,
  name VARCHAR(500) COLLATE utf8_unicode_ci,
  created_by VARCHAR(500) COLLATE utf8_unicode_ci,
  created DATETIME,
  modified DATETIME,
  deleted DATETIME
);

INSERT INTO req_qualifications VALUES (
1,
3,
"キャビンアテンダント",
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);

CREATE TABLE affiliates (
  id INT,
  type INT,
  name VARCHAR(500) COLLATE utf8_unicode_ci,
  created_by VARCHAR(500) COLLATE utf8_unicode_ci,
  created DATETIME,
  modified DATETIME,
  deleted DATETIME
);

INSERT INTO affiliates VALUES (
1,
3,
"キャビンアテンダント",
"admin",
'2015-04-13 11:42:41',
'2015-04-13 11:42:41',
'2015-04-13 11:42:41'
);
