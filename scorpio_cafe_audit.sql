CREATE DATABASE scorpio_cafe_audit
USE scorpio_cafe_audit

-- Table 1: Reviews
CREATE TABLE reviews 
(review_id INT IDENTITY(1,1) PRIMARY KEY,
 reviewer_name Varchar(50), 
 rating INT,
 review_text varchar(1000),
 Date date,
 sentiment Varchar(20),
 category Varchar(50),
 item_mentioned Varchar(100),
 complaint Varchar(200))

 -- Table 2: Business Info
CREATE TABLE business_info (
  field VARCHAR(100),
  value VARCHAR(200))

-- Table 3: Popular Items
CREATE TABLE popular_items
  (item_id INT IDENTITY(1,1) PRIMARY KEY,
  item_name VARCHAR(100),
  positive_mentions INT,
  negative_mentions INT,
  overall_sentiment VARCHAR(20))
 
-- Table 4: Competitors
CREATE TABLE competitors 
  (competitor_id INT IDENTITY(1,1) PRIMARY KEY,
  name VARCHAR(100),
  rating DECIMAL(3,1),
  total_reviews INT,
  price_for_two INT,
  speciality VARCHAR(100))

 -- Table 5: Complaints
CREATE TABLE complaints
  (complaint_id INT IDENTITY(1,1) PRIMARY KEY,
  category VARCHAR(100),
  frequency INT,
  severity VARCHAR(20),
  example VARCHAR(200))

  -- Insert Reviews
INSERT INTO reviews (rating, reviewer_name, review_text, Date, 
sentiment, category, item_mentioned, complaint) VALUES
(1, 'Customer1', 'Very disappointing chicken curry. Chewy and not fresh. Made me wait 40 minutes', 
'2026-02-06', 'Negative','Food + Service', 'Chicken Curry', 'Stale food, 40 min wait'),
(1, 'Customer2', 'Taking two hours to deliver one order.Pathetic',
'2026-04-06','Negative','Delivery','Order','2 hours delivery'),
(5, 'Customer3','Chilli garlic noodles were awesome!',
'2026-04-11', 'Positive', 'Food', 'Noodles', 'None'),
(3,'Customer4', 'The food is good quality but the service is too slow',
'2026-03-06','Mixed', 'Food + Service', 'General', 'Slow service'),
(1,'Customer5','Unhygienic food ever',
'2026-01-06','Negative', 'Hygiene', 'General', 'Unhygienic'),
(3,'Customer6','Food is okayish. Service slow. Doubt eating here as pure vegetarian',
'2026-01-07','Mixed', 'Food + Service + Ambience', 'General', 'Slow waiters, Non veg concern'),
(2,'Customer7', 'Very bad quality bun. 3-4 days old bread. Inconsistent quality',
'2026-01-06','Negative', 'Food', 'Burger', 'Stale bun, Inconsistent quality'),
(3,'Customer8','Loud noise. Difficult parking. Somewhat recommend for vegetarians',
'2026-02-10','Neutral', 'Ambience + Parking', 'General', 'Loud, Parking difficult'),
(5, 'Customer9','Good food, service and atmosphere. Up to 10 min wait',
'2026-03-06','Positive', 'Food + Service + Ambience', 'General', 'None'),
(5, 'Customer10','Highly recommend for vegetarians', 
'2026-09-01','Positive', 'Food', 'General', 'None'),
(3,'Customer11','Sandwich was nice and cold coffee good but sitting arrangement with sprinklers very irritating',
'2026-06-05','Mixed', 'Ambience', 'Sandwich, Cold Coffee', 'Sprinklers, Flies, Bin smell'),
(3,'Customer12','Average taste on reasonable price',
'2026-04-20','Neutral', 'Food + Pricing', 'General', 'Average taste'),
(1,'Customer13','Potatoes kept in open with spider web on wall. Lost a customer today',
'2026-08-06','Negative', 'Hygiene', 'Honey Chilli, Fries', 'Open food storage, Spider web'),
(5,'Customer14','Highly recommend. Honey Chilli, Aloo Tikki Burger, Noodles and Sandwich are best',
'2026-01-06','Positive', 'Food', 'Honey Chilli, Burger, Noodles, Sandwich', 'None'),
(1,'Customer15','Very unhygienic. Lots of mosquitos and flies. Owner said he cant do anything',
'2026-06-01','Negative', 'Hygiene', 'General', 'Mosquitos, Flies, Owner unhelpful'),
(3,'Customer16','Food is good but ambience not great. Good for street food lovers',
'2026-02-04','Mixed','Food + Ambience', 'General','Poor ambience'),
(4,'Customer17','School time cafe! Old memories. Sandwich is best. Service 3/5 Atmosphere 3/5',
'2026-05-06','Positive', 'Food + Service', 'Sandwich', 'Average service and ambience'),
(4,'Customer18','Good and tasty food. Sandwich is great', 
'2026-03-07','Positive', 'Food + Ambience', 'Sandwich', 'None'),
(5,'Customer19','One of the best place in Mayur Vihar Phase 2 for evening snacks', 
'2026-04-03','Positive', 'Food + Service + Ambience', 'Snacks', 'None'),
(5, 'Customer20','Food Service and Atmosphere all 5/5',
'2026-02-06','Positive', 'Food + Service + Ambience', 'General', 'None'),
(5,'Customer21','Always good. Food Service Atmosphere all perfect',
'2026-03-04', 'Positive', 'Food + Service + Ambience', 'General', 'None'),
(5, 'Customer22','Ekdam perfect', '2026-02-09', 'Positive', 'Food', 'General', 'None'),
(4,'Customer23','Fast food variety. Burgers noodles sandwiches fries. Pocket friendly prices. Evening crowded but service fast',
'2026-06-06','Positive', 'Food + Ambience + Pricing', 'Burger, Noodles, Sandwich', 'Crowded evening'),
(3,'Customer24','Just a nice experience. Food decent', 
'2025-05-06', 'Neutral', 'Food', 'General', 'Average food'),
(4, 'Customer25','Food 5/5 Service 4/5 Atmosphere 3/5', 
'2026-01-06', 'Positive', 'Food + Service', 'General', 'Average ambience'),
(3, 'Customer26','Quality degrading day by day. Was great in 2017. Price also increased',
'2025-09-06','Mixed', 'Food + Pricing', 'General', 'Quality degrading, Price increased'),
(5, 'Customer27','Fabulous food fresh quality. Service and atmosphere perfect. Love to visit',
'2025-11-06','Positive', 'Food + Service + Ambience', 'General', 'None'),
(4,'Customer28','Food was very good. Service 3/5 Atmosphere 3/5',
'2026-01-26','Positive', 'Food', 'General', 'Average service and ambience'),
(4, 'Customer29','Food 5/5 Service 4/5 Atmosphere 4/5',
'2026-05-12','Positive', 'Food + Service + Ambience', 'General', 'None'),
(3, 'Customer30','Somewhat recommend for vegetarians. Parking difficult', 
'2026-02-06', 'Neutral', 'Parking', 'General', 'Parking difficult')

select * from reviews
delete from reviews

-- Reset counter to 0
DBCC CHECKIDENT ('reviews', RESEED, 0)

-- Insert Business Info
INSERT INTO business_info (field, value) VALUES
('Business Name', 'Scorpio Café'),
('Location', 'Mayur Vihar Phase 2, Delhi'),
('Category', 'Café'),
('Google Rating', '4.0'),
('Total Reviews', '2561'),
('Price Range', 'Budget'),
('Speciality', 'Burgers, Noodles, Sandwich'),
('Opening Year', '2017')

select * from business_info

-- Insert Popular Items
INSERT INTO popular_items (item_name, positive_mentions, negative_mentions, overall_sentiment) VALUES
('Sandwich', 5, 0, 'Positive'),
('Noodles', 4, 0, 'Positive'),
('Honey Chilli', 3, 1, 'Positive'),
('Burger', 3, 2, 'Mixed'),
('Cold Coffee', 2, 1, 'Mixed'),
('Chicken Curry', 0, 1, 'Negative'),
('Pizza', 0, 1, 'Negative')

select * from popular_items

-- Insert Competitors
INSERT INTO competitors (name, rating, total_reviews, price_for_two, speciality) VALUES
('Cafe Junk Delhi', 4.3, 305, 550, 'Burgers, Pizza'),
('Veerji Malai Chaap Wale', 3.9, 214, 550, 'Chaap, North Indian'),
('Moustache Coffee', 3.8, 427, 550, 'Coffee, Chinese')

select * from competitors

-- Insert Complaints
INSERT INTO complaints (category, frequency, severity, example) VALUES
('Hygiene', 4, 'High', 'Spider web, flies, mosquitos'),
('Slow Service', 4, 'High', '40 min wait, slow waiters'),
('Parking', 3, 'Medium', 'Difficult to find parking'),
('Food Quality', 3, 'High', 'Stale bun, inconsistent quality'),
('Ambience', 2, 'Medium', 'Sprinklers, no AC'),
('Delivery Speed', 1, 'Medium', '2 hours delivery'),
('Pricing', 1, 'Low', 'Price increased over time'),
('Noise', 1, 'Low', 'Too loud')

select * from complaints


--Query 1: Most common complaints
select category,frequency 
from complaints order by frequency desc 

-- Query 2: Best rated items
select item_name, positive_mentions 
from popular_items order by positive_mentions desc 

--Query 3: Sentiment breakdown
select sentiment, count(*) as total
from reviews
group by sentiment

-- Query 4: Worst rated items
select item_name,negative_mentions
from popular_items where negative_mentions>0
order by negative_mentions desc

-- Query 5: Average rating from reviews
select avg(cast(rating as float)) as avg_rating
from reviews

-- Query 6: Reviews by category
Select category,COUNT(*) as total
from reviews group by category
order by total DESC

-- Query 7: Competitor comparison
select name,rating,total_reviews 
from competitors 
order by rating desc

-- Query 8: High priority complaints
select category, frequency, example
from complaints
where severity = 'High'
order by frequency desc

-- Query 9: Positive reviews only
select review_text, item_mentioned
from reviews
where sentiment= 'Positive'

-- Query 10: Negative reviews only
select review_text, complaint
from reviews
where sentiment='Negative'