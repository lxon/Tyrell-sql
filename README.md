## Background

This is the SQL optimise query test.
Given the query as below

```
SELECT Jobs.id AS `Jobs__id`,
Jobs.name AS `Jobs__name`,
Jobs.media_id AS `Jobs__media_id`,
Jobs.job_category_id AS `Jobs__job_category_id`,
Jobs.job_type_id AS `Jobs__job_type_id`,
Jobs.description AS `Jobs__description`,
Jobs.detail AS `Jobs__detail`,
Jobs.business_skill AS `Jobs__business_skill`,
Jobs.knowledge AS `Jobs__knowledge`,
Jobs.location AS `Jobs__location`,
Jobs.activity AS `Jobs__activity`,
Jobs.academic_degree_doctor AS `Jobs__academic_degree_doctor`,
Jobs.academic_degree_master AS `Jobs__academic_degree_master`,
Jobs.academic_degree_professional AS `Jobs__academic_degree_professional`,
Jobs.academic_degree_bachelor AS `Jobs__academic_degree_bachelor`,
Jobs.salary_statistic_group AS `Jobs__salary_statistic_group`,
Jobs.salary_range_first_year AS `Jobs__salary_range_first_year`,
Jobs.salary_range_average AS `Jobs__salary_range_average`,
Jobs.salary_range_remarks AS `Jobs__salary_range_remarks`,
Jobs.restriction AS `Jobs__restriction`,
Jobs.estimated_total_workers AS `Jobs__estimated_total_workers`,
Jobs.remarks AS `Jobs__remarks`,
Jobs.url AS `Jobs__url`,
Jobs.seo_description AS `Jobs__seo_description`,
Jobs.seo_keywords AS `Jobs__seo_keywords`,
Jobs.sort_order AS `Jobs__sort_order`,
Jobs.publish_status AS `Jobs__publish_status`,
Jobs.version AS `Jobs__version`,
Jobs.created_by AS `Jobs__created_by`,
...
OR RecQualifications.name LIKE '%キャビンアテンダント%'
OR ReqQualifications.name LIKE '%キャビンアテンダント%')
AND publish_status = 1
AND (Jobs.deleted) IS NULL)
GROUP BY Jobs.id
ORDER BY Jobs.sort_order desc,
Jobs.id DESC LIMIT 50 OFFSET 0
```

## Personal Feedback

The SQL test is lacking the schema & dummy data.
The crucial parts for candidates to get a better insight
and understanding of the context of the SQL query.

## Before optimization

Before optimization, my side did 2 steps for better clarity.

1. Rebuild the table schema based on the query.
2. Insert dummy data to test the original query.

During the rebuild table schema process, notice few key points:

1. Highly normalized schemas

   Normalization is needed for keeping data consistent.
   The database schema design is highly normalized. This is no big deal when the dataset is small, but when the dataset growing huge, the highly normalized schema will be hurting the query performance, because needs to join the table to get the data from another data. Each table joins increases the query loading speed.

2. Possible legacy query

   In reality, simply avoid optimizing the legacy query, cause most of the time, the unoptimized query serves the purpose of user request or feature. Any minor changes to the query may cause instability or bug in the application. In any normal case, stability & feature is having higher priority than performance, in short Feature > Performance.

## Possible area of optimization

1. Index important Ids

   Quick and easy solution if never done so.

2. Revise the database schema

   Try to denormalize the schema for better performance.

3. Get the Information Architect(IA) done right

   In often cases of the development, it always starts with the developer or DB admin to design the database based on the requirements or documentations. Maybe can get that flow twisted by understanding what kind of info matters to the real end-user with the mockup or wireframe before hands.

   The schema design is based on the proposed feature and mockup. Often see the developer try to create a flexible schema or solution to fulfil any possibilities that arise, but flexibility comes with complexity. The complexity becomes a huge hurdle at a later stage. Lack of proper documentation is another pain point for complex issues and features.

\*\* Above is my personal opinions.

## Answer / Demo

- https://www.db-fiddle.com/f/3wLZj9cSzTMGQGhwRirnLD/4

## Resource spent

- 2, 3 hours for planning
- 3, 4 hours for rebuild & optimization
