-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2021 at 08:53 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `last_modified` varchar(50) NOT NULL,
  `deletedBy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `title`, `deletedAt`, `last_modified`, `deletedBy`) VALUES
(1, 'Travel Planning', NULL, 'khalid', ''),
(2, 'Destination', NULL, 'khalid', ''),
(3, 'Travel Experience ', NULL, '', ''),
(4, 'Family Travel', NULL, '', ''),
(5, 'City Guides', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotel_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf32 DEFAULT NULL,
  `addedBy` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `hotel_desc` text DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `addedOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `deletedAt` timestamp NULL DEFAULT NULL,
  `last_modified` varchar(50) NOT NULL,
  `deletedBy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `title`, `addedBy`, `location`, `image`, `hotel_desc`, `owner`, `addedOn`, `deletedAt`, `last_modified`, `deletedBy`) VALUES
(2, 'Hotel Radisson &amp; Convention Center', 'khalid', 'Kigali, RWANDA', 'dist/img/cb10520e0b94d3b6297953bde026dc91RadissonRwanda.jpg', 'The Radisson Blu Hotel &amp; Convention Center in Kigali is just 5 kilometers from the bustling city center and Kigali International Airport (KGL).', 'dgatwist', '2018-08-12 07:14:51', NULL, 'cardin', NULL),
(3, 'Hotel Raddison', 'khalid', 'Dubai, UAE', 'dist/img/1e023ff6d0480d394117b95376f8b13eRadissonDubai1.jpeg', 'Situated along the gorgeous waters of the Ariaban Gulf, our hotel overlooks the beautiful coastine and spectacular architectural masterpeices of Dubai.', 'dgatwist', '2018-08-13 07:14:51', NULL, 'cardin', NULL),
(5, 'Hotel Belair', 'khalid', 'Bujumbura, BURUNDI', 'dist/img/18cc8c13abf875d820d036ee0e3ee69eBelair.jpg', 'Located in Bujumbura, 3.1 mi from Musee Vivant, Hôtel Belair Résidence provides accommodations with a restaurant, free private parking, an outdoor swimming pool and a fitness center. Among the various facilities are a bar, a shared lounge, as well as a garden. The accommodations offers a 24-hour front desk, a shared kitchen and currency exchange for guests.', '', '2018-08-14 07:14:51', NULL, 'cardin', NULL),
(6, 'Hotel Club du Lac Tanganyika', 'khalid', 'Bujumbura, BURUNDI', 'dist/img/c6f28b66db93039080d971c3a91dd606Clubdulac.webp', 'Hotel Club du Lac Tanganyika is located in a wide park that ends up on a marvelous beach on the banks of Lake Tanganyika. The hotel has an outdoor pool and views of the lake, and guests can enjoy a drink at the bar.', 'dgatwist', '2018-08-15 07:17:56', NULL, 'cardin', NULL),
(7, 'Hotel Sheraton', 'khalid', 'Dhaka, Bangladesh', 'dist/img/36485389.jpg', 'A small river named Duden flows by their place and supplies it with the necessary regelialia.', 'nashrif', '2018-08-17 01:39:07', '2021-04-06 15:17:08', 'nashrif', 'cardin');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_enquiry`
--

CREATE TABLE `hotel_enquiry` (
  `enquiry_id` int(11) NOT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `total_room` int(11) DEFAULT NULL,
  `child` int(11) DEFAULT NULL,
  `adult` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `addedBy` varchar(50) DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `hotel_enquiry`
--

INSERT INTO `hotel_enquiry` (`enquiry_id`, `hotel_id`, `room_type_id`, `name`, `email`, `phone`, `checkin`, `checkout`, `total_room`, `child`, `adult`, `message`, `count`, `addedBy`, `deletedAt`) VALUES
(27, 7, 8, 'Khalid', 'khalid@gmail.com', '01825698512', '2018-08-24', '2018-08-25', 1, 1, 1, 'I want this room.', 0, 'khalid', '2018-08-25 21:44:59'),
(29, 2, 1, 'Walid', 'walid@gmail.com', '01742712141', '2018-08-23', '2018-08-25', 2, 2, 2, 'I want this room.', 0, 'khalid', '2021-04-01 16:26:03'),
(30, 3, 3, 'Noman', 'noman@gmail.com', '01856214896', '2018-08-21', '2018-08-25', 2, 2, 2, 'I want this room.', 0, 'khalid', '2018-08-25 21:49:24'),
(31, 5, 6, 'Nashrif', 'nashrif@gmail.com', '01541236987', '2018-08-23', '2018-08-25', 2, 2, 2, 'I want this room.', 0, 'Hasan', NULL),
(32, 3, 3, 'Tareq', 'tareq@gmail.com', '01825698512', '2018-08-25', '2018-08-26', 2, 2, 2, 'I want this room', 0, 'Hasan', NULL),
(33, 5, 5, 'Fariha', 'fariha@gmail.com', '01589621456', '2018-08-26', '2018-08-28', 1, 2, 2, 'I want this room. ', 0, 'khalid', NULL),
(34, 6, 7, 'Ishrak', 'ishrak@gmail.com', '01594532145', '2018-08-25', '2018-08-27', 1, 2, 2, 'I want this room. ', 0, 'khalid', '2018-08-25 22:02:14'),
(35, 5, 5, 'Imtiaz', 'imtiaz@gmail.com', '01569874123', '2018-08-27', '2018-08-29', 1, 1, 1, 'I want this package.', 0, 'Hasan', NULL),
(36, 2, 1, 'Shohan', 'shohan@gmail.com', '01820570771', '2018-08-18', '2018-08-24', 2, 2, 2, 'I want this room. ', 0, 'khalid', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `addedOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `addedBy` varchar(50) DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `last_modified` varchar(50) NOT NULL,
  `deletedBy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `cat_id`, `title`, `description`, `addedOn`, `addedBy`, `deletedAt`, `image`, `last_modified`, `deletedBy`) VALUES
(1, 3, 'A Definitive Guide to the Lac aux Oiseaux (Birds Lake)', '<p><img src=\"/cardin/Admin/dist/img/adbf6581ef0ef1cd1e1efeee7100e1bbBurundi2.jpg\" alt=\"\" width=\"653\" height=\"653\" /></p>\r\n<p>This tour leads you to a magic bird-watching haven, Lake Rwihinda. Together with the professional local guide, you will visit the most scenic lakesides with bird species. You will love Africa&rsquo;s Wetlands birdlife which you only experience in these lakes. What is the story of Lake Rweru? What bird species can you see at Lake Rwihinda? What is a must-eat in Bujumbura - Mukeke? You will enjoy your tour of the magical waters between the lakes with the potential for great photography. Fill your heart with the experience of nature&rsquo;s best in Kirundo. Test your photography skills as well with this perfect scene.</p>', '2021-04-05 23:07:53', 'khalid', NULL, 'dist/img/d7c41fc07d35516b67b87d96555c4ddeBurundi9.jpg', 'cardin', ''),
(2, 2, 'How These 4 People Found The Path to Their Dream Trip Activities', '<h3 style=\"box-sizing: border-box; font-family: \'Fjalla One\', sans-serif; font-weight: 400; line-height: 1.2; margin: 0px 0px 20px; font-size: 26px;\">Jianne</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\"><img class=\"\" style=\"box-sizing: border-box; border: 0px; max-width: 100%; height: auto;\" src=\"https://media.nomadicmatt.com/casestudy2update02.jpg\" alt=\"Jianne, a solo female traveler posing for a photo\" data-jpibfi-post-excerpt=\"Last year, I announced a case study program, in which I would work with a cross-section of readers and help them plan and execute their trips. Step-by-step, I walked them through all the stages of travel planning and helped them to create a roadmap toward their dream. Nearly a year later, here are their results. \" data-jpibfi-post-url=\"https://www.nomadicmatt.com/travel-blogs/four-people-who-found-their-path/\" data-jpibfi-post-title=\"How These 4 People Found the Path to Their Dream Trip\" data-jpibfi-src=\"https://media.nomadicmatt.com/casestudy2update02.jpg\" data-src=\"https://media.nomadicmatt.com/casestudy2update02.jpg\" data-jpibfi-indexer=\"1\" /><br style=\"box-sizing: border-box;\" />Jianne is a 27-year-old office worker from Manila striving to take a two-week vacation this year. Living in the&nbsp;<a style=\"box-sizing: border-box; transition: all 0.1s ease-in-out 0s; background-color: inherit; color: #2da1c4; font-weight: 600; text-decoration-line: none;\" href=\"https://www.nomadicmatt.com/travel-blogs/philippines-on-a-budget/\" target=\"_blank\" rel=\"noopener noreferrer\">Philippines</a>, she has no access to travel hacking resources, a plethora of visa restrictions, and a weak currency.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">When we started last year, Jianne was a spender. She liked to shop, eat out, and always had &ldquo;something that just came up!&rdquo; She was constantly spending more than she earned, so we needed to get her to only spend on her needs and reinforce the idea that any extra spending delayed her trip.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">I don&rsquo;t believe in going into debt for travel so we needed a path toward getting her finances in order.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">Since you can&rsquo;t know what to cut if you don&rsquo;t know where the money is going, I had Jianne track all her expenses so we could see where the low-hanging fruit was. Jianne had never tracked her expenses before and right away we saw there were a lot of little things she could trim back without changing her lifestyle too much.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">We cut down her eating out, taxis, shopping, and drinking, and had her create a change jar where she would put all her coins and small notes.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">Shifting spending habits is a hard process. Half-way through working together, Jianne stopped tracking her expenses, went out a bit more, and overall, fell off the wagon. She was still spending more than her salary each month.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">But perfection is not the goal, and she realized her mistakes.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">While working together, Jianne never got to go on a trip. We were simply starting too far behind to get her on a trip during the program. However, by the end of our program, Jianne was no longer spending more than she earned and she&rsquo;s been able to pay off a lot of her debt and start to develop a savings account.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">She is still far from taking that vacation, but the first step in taking your dream trip is starting down the monetary path toward financial freedom. I&rsquo;m super excited and pleased that she did that. No matter what, less debt and more careful spending is always something that improves your life.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">Here&rsquo;s what Jianne has to say, in her own words:</p>\r\n<blockquote style=\"box-sizing: border-box; color: #888888; margin: 40px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px;\">Matt and I started tracking expenses and identifying areas where I should cut down my expenses. It was very difficult at first, and there were times I felt disappointed at myself for not being consistent. I was a shopaholic a year ago &mdash; it&rsquo;s not easy to switch it off.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px;\">After a while, Matt taught me another approach: to have a daily cap of expenses instead. This was more effective for me. If there&rsquo;s something I need to spend on, I would compensate by cutting the budget on other days. It was easier if I had a separate wallet for &ldquo;my money&ldquo; for the day. I didn&rsquo;t feel deprived or disappointed, but more responsible and in control.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px;\">With the help of Matt, I learned that there are different ways that may work for each individual effectively. You just have to try as much as you can until you find what works for you. Now, I feel that I have achieved a huge thing and that I&rsquo;m halfway done on my journey to that special trip.</p>\r\n</blockquote>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">&nbsp;</p>\r\n<h3 style=\"box-sizing: border-box; font-family: \'Fjalla One\', sans-serif; font-weight: 400; line-height: 1.2; margin: 0px 0px 20px; font-size: 26px;\">Diane</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\"><img class=\"\" style=\"box-sizing: border-box; border: 0px; max-width: 100%; height: auto;\" src=\"https://media.nomadicmatt.com/casestudy2update03.jpg\" alt=\"Diane, a senior traveler from Canada\" data-jpibfi-post-excerpt=\"Last year, I announced a case study program, in which I would work with a cross-section of readers and help them plan and execute their trips. Step-by-step, I walked them through all the stages of travel planning and helped them to create a roadmap toward their dream. Nearly a year later, here are their results. \" data-jpibfi-post-url=\"https://www.nomadicmatt.com/travel-blogs/four-people-who-found-their-path/\" data-jpibfi-post-title=\"How These 4 People Found the Path to Their Dream Trip\" data-jpibfi-src=\"https://media.nomadicmatt.com/casestudy2update03.jpg\" data-src=\"https://media.nomadicmatt.com/casestudy2update03.jpg\" data-jpibfi-indexer=\"2\" /><br style=\"box-sizing: border-box;\" />Diane, a 59-year-old from&nbsp;<a style=\"box-sizing: border-box; transition: all 0.1s ease-in-out 0s; background-color: inherit; color: #2da1c4; font-weight: 600; text-decoration-line: none;\" href=\"https://www.nomadicmatt.com/travel-guides/canada-travel-tips/\" target=\"_blank\" rel=\"noopener noreferrer\">Canada</a>, has always dreamed about going to&nbsp;<a style=\"box-sizing: border-box; transition: all 0.1s ease-in-out 0s; background-color: inherit; color: #2da1c4; font-weight: 600; text-decoration-line: none;\" href=\"https://www.nomadicmatt.com/travel-guides/australia-travel-tips/\" target=\"_blank\" rel=\"noopener noreferrer\">Australia</a>&nbsp;and&nbsp;<a style=\"box-sizing: border-box; transition: all 0.1s ease-in-out 0s; background-color: inherit; color: #2da1c4; font-weight: 600; text-decoration-line: none;\" href=\"https://www.nomadicmatt.com/travel-guides/new-zealand-travel-tips/\" target=\"_blank\" rel=\"noopener noreferrer\">New Zealand</a>.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">She and her husband live in the countryside on their fixed income pension. There&rsquo;s no way for her to increase her income or take lots of advantage of&nbsp;<a style=\"box-sizing: border-box; transition: all 0.1s ease-in-out 0s; background-color: inherit; color: #2da1c4; font-weight: 600; text-decoration-line: none;\" href=\"https://www.nomadicmatt.com/travel-blogs/sharing-economy-travel-cheap/\" target=\"_blank\" rel=\"noopener noreferrer\">the sharing economy</a>, like&nbsp;<a style=\"box-sizing: border-box; transition: all 0.1s ease-in-out 0s; background-color: inherit; color: #2da1c4; font-weight: 600; text-decoration-line: none;\" href=\"https://www.nomadicmatt.com/travel-blogs/guide-renting-apartments/\" target=\"_blank\" rel=\"noopener noreferrer\">Airbnb</a>.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">Her income might have been fixed, but her expenses weren&rsquo;t &mdash; and, as a Canadian,&nbsp;<a style=\"box-sizing: border-box; transition: all 0.1s ease-in-out 0s; background-color: inherit; color: #2da1c4; font-weight: 600; text-decoration-line: none;\" href=\"https://www.nomadicmatt.com/travel-blogs/how-to-be-a-travel-hacker-in-canada/\" target=\"_blank\" rel=\"noopener noreferrer\">she has access to rewards cards that could help her get free flights</a>.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">Diane has dreamed of traveling for years but never really thought it was within her grasp. Travel was for the rich, she thought! I set out to prove her wrong. Like Jianne, Diane had to&nbsp;<a style=\"box-sizing: border-box; transition: all 0.1s ease-in-out 0s; background-color: inherit; color: #2da1c4; font-weight: 600; text-decoration-line: none;\" href=\"https://www.nomadicmatt.com/travel-blogs/cut-your-expenses/\" target=\"_blank\" rel=\"noopener noreferrer\">find a way to reduce expenses</a>&nbsp;so she could save most of her limited income. While she and her husband have a small retirement account, we want to avoid tapping into that as much as possible, since that has to last many years to come!</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">As with Jianne, we started tracking her expenses and we found lots of ways to cut her spending. She switched to a cheaper phone plan, stopped eating out, began planning her meals to avoid buying unneeded food, and stopped making unnecessary purchases from the dollar store (she was an addict).</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">Diane went from saving $20-50 CAD a month to saving over $500 CAD! She has learned to reframe her spending and think of objects as &ldquo;things that take away from my trip.&rdquo;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">Additionally, she got her husband to cut back on smoking &mdash; which not only added years to his life but also money to her travel fund.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">Since she is on a fixed income, she&rsquo;s been able to save the same amount of money each month and now has over $6,500 CAD saved toward her trip!</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">The biggest thing we&rsquo;ve done is to&nbsp;<a style=\"box-sizing: border-box; transition: all 0.1s ease-in-out 0s; background-color: inherit; color: #2da1c4; font-weight: 600; text-decoration-line: none;\" href=\"https://www.nomadicmatt.com/product/guide-to-travel-hacking/\" target=\"_blank\" rel=\"noopener noreferrer\">get her on the travel hacking train</a>. She signed up for the American Express and TD Bank Aeroplan credit cards, met the low minimum spending requirements, and &mdash; combined with her old points balance &mdash; has a total of 90,000 Aeroplan points as well as 17,000 Air Miles (an account that she can use for flights, too).</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">This will cover her entire flight to Australia and give her some extra points for any regional flights she might take. With discipline, the support of her family, and travel hacking, she&rsquo;s made this long-term dream a reality, all while on a fixed income. It took time but she did it.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">Now, she is going to Australia, New Zealand, and the&nbsp;<a style=\"box-sizing: border-box; transition: all 0.1s ease-in-out 0s; background-color: inherit; color: #2da1c4; font-weight: 600; text-decoration-line: none;\" href=\"https://www.nomadicmatt.com/travel-guides/cook-islands/\" target=\"_blank\" rel=\"noopener noreferrer\">Cook Islands</a>&nbsp;with her sister in August for six weeks. She&rsquo;s excited to finally visit some friends she hasn&rsquo;t seen in decades because she never could afford to do it before!</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">As Diane says:</p>\r\n<blockquote style=\"box-sizing: border-box; color: #888888; margin: 40px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px;\">I am so excited to be so far along in my planning. I had been wanting to travel to Australia to visit friends for over ten years but never seemed able to overcome many obstacles. Some of them were that I couldn&rsquo;t seem to save money for this trip, decide when to go, and I didn&rsquo;t know how to utilize air miles.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px;\">Fortunately for me, Matt was able to take me step-by-step through the planning process so I was no longer overwhelmed. He showed me how to get and maximize Aeroplan miles to fully cover the price of airfare, he showed me where I could cut some costs to save up for spending money, and most important to me, he showed me how to feel good when I was no longer wasting money on mindless shopping since I now had goal I wanted to achieve. The money in my separate &ldquo;travel account&rdquo; brings a smile to my face at the rate it is increasing.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px;\">But one of the most important things I learned from Matt was how to deal with anxiety. I suffer from claustrophobia and anxiety, so just getting on an airplane is stressful to me. But knowing that Matt also had issues but overcame them and keeps traveling makes me realize I too could travel and enjoy it. I am so ready to go!</p>\r\n</blockquote>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\">&nbsp;</p>\r\n<h3 style=\"box-sizing: border-box; font-family: \'Fjalla One\', sans-serif; font-weight: 400; line-height: 1.2; margin: 0px 0px 20px; font-size: 26px;\">Sander and Jolien</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 26px; padding: 0px; font-family: \'Gotham A\', \'Gotham B\', sans-serif; font-size: 18px;\"><img style=\"box-sizing: border-box; border: 0px; max-width: 100%; height: auto;\" ', '2021-04-06 15:23:26', 'khalid', NULL, 'dist/img/sajek.jpg', 'cardin', ''),
(3, 2, 'Our Secret Island Boat Tour Is just for You', '<header class=\"entry-header\" style=\"box-sizing: inherit; max-width: 1120px; margin-left: auto; margin-right: auto; text-align: center; padding-bottom: 3.125rem; margin-bottom: 3.75rem; border-bottom: 1px solid #ededed; color: #3b4249; font-family: Montserrat, sans-serif; font-size: 16px;\">\r\n<h1 class=\"entry-title\" style=\"box-sizing: inherit; font-size: 2.4375rem; margin: 0px auto 1.5rem; clear: both; line-height: 1.48; color: #17181a; letter-spacing: -0.03em; overflow-wrap: break-word; max-width: 768px;\"><img class=\"attachment-booklium-large size-booklium-large wp-post-image\" style=\"color: #3b4249; font-size: 16px; box-sizing: inherit; border-style: none; height: auto; max-width: 100%; margin: 0px auto; display: block; border-radius: 3px;\" src=\"https://www.primalodging.com/wp-content/uploads/2019/09/Blog-1.jpg\" sizes=\"(max-width: 1350px) 100vw, 1350px\" srcset=\"https://www.primalodging.com/wp-content/uploads/2019/09/Blog-1.jpg 1350w, https://www.primalodging.com/wp-content/uploads/2019/09/Blog-1-300x200.jpg 300w, https://www.primalodging.com/wp-content/uploads/2019/09/Blog-1-1024x682.jpg 1024w, https://www.primalodging.com/wp-content/uploads/2019/09/Blog-1-768x511.jpg 768w, https://www.primalodging.com/wp-content/uploads/2019/09/Blog-1-892x594.jpg 892w\" alt=\"\" width=\"1350\" height=\"899\" /></h1>\r\n</header>\r\n<div class=\"entry-content\" style=\"box-sizing: inherit; color: #3b4249; font-family: Montserrat, sans-serif; font-size: 16px;\">\r\n<p style=\"box-sizing: inherit; margin: 0px auto 1.5em; max-width: 664px;\">You&rsquo;ve probably already seen our extra amenities and activities? There are a lot of them and you can enjoy any. But today we want to make a special accent on the Island boat tours. Remember a book about Robinson Crusoe? You have a chance to experience a piece of his life on your own!</p>\r\n<span id=\"more-37\" style=\"box-sizing: inherit; max-width: 664px; margin-left: auto; margin-right: auto; margin-bottom: 1.5em;\"></span>\r\n<h4 style=\"box-sizing: inherit; clear: both; margin: 1.5em auto 0.5em; line-height: 1.48; color: #17181a; letter-spacing: -0.03em; font-size: 1rem; max-width: 664px;\">Let&rsquo;s ride with us to the secret island!</h4>\r\n<p style=\"box-sizing: inherit; margin: 0px auto 1.5em; max-width: 664px;\">Our boat ride package includes: round-trip to the secret island, island chic accommodations only few steps from the beach and the bay, complimentary hot breakfast and evening wine &amp; cheese reception, access to beautiful nature lakes and forests, bell service and dockside luggage service.</p>\r\n<h3 style=\"box-sizing: inherit; clear: both; margin: 1.5em auto 0.5em; line-height: 1.48; color: #17181a; letter-spacing: -0.03em; font-size: 1.25rem; max-width: 664px;\">It is the perfect place for the family rest!</h3>\r\n<ul class=\"wp-block-gallery columns-3 is-cropped\" style=\"box-sizing: inherit; margin: 1.875em auto 1.25em; padding: 0px; list-style: none; display: flex; flex-wrap: wrap; max-width: 664px;\">\r\n<li class=\"blocks-gallery-item\" style=\"box-sizing: inherit; margin: 0px 1em 1em 0px; display: flex; flex-grow: 1; flex-direction: column; justify-content: center; position: relative; width: calc(33.3333% - 0.66667em); border-radius: 3px; overflow: hidden;\">\r\n<figure style=\"box-sizing: inherit; margin: 0px; height: 150.422px; display: flex; align-items: flex-end; justify-content: flex-start;\"><img class=\"wp-image-191\" style=\"box-sizing: inherit; border-style: none; height: 150.422px; max-width: 100%; display: block; width: 210.672px; flex: 1 1 0%; object-fit: cover;\" src=\"https://primalodging.com/wp-content/uploads/2019/09/Blog-9.jpg\" sizes=\"(max-width: 1350px) 100vw, 1350px\" srcset=\"https://www.primalodging.com/wp-content/uploads/2019/09/Blog-9.jpg 1350w, https://www.primalodging.com/wp-content/uploads/2019/09/Blog-9-300x200.jpg 300w, https://www.primalodging.com/wp-content/uploads/2019/09/Blog-9-1024x683.jpg 1024w, https://www.primalodging.com/wp-content/uploads/2019/09/Blog-9-768x512.jpg 768w, https://www.primalodging.com/wp-content/uploads/2019/09/Blog-9-892x595.jpg 892w\" alt=\"\" width=\"1350\" height=\"900\" data-id=\"191\" data-link=\"https://themes.getmotopress.com/booklium-apartment/blog-9/\" /></figure>\r\n</li>\r\n<li class=\"blocks-gallery-item\" style=\"box-sizing: inherit; margin: 0px 1em 1em 0px; display: flex; flex-grow: 1; flex-direction: column; justify-content: center; position: relative; width: calc(33.3333% - 0.66667em); border-radius: 3px; overflow: hidden;\">\r\n<figure style=\"box-sizing: inherit; margin: 0px; height: 150.422px; display: flex; align-items: flex-end; justify-content: flex-start;\"><img class=\"wp-image-192\" style=\"box-sizing: inherit; border-style: none; height: 150.422px; max-width: 100%; display: block; width: 210.672px; flex: 1 1 0%; object-fit: cover;\" src=\"https://primalodging.com/wp-content/uploads/2019/09/Blog-10.jpg\" sizes=\"(max-width: 1350px) 100vw, 1350px\" srcset=\"https://www.primalodging.com/wp-content/uploads/2019/09/Blog-10.jpg 1350w, https://www.primalodging.com/wp-content/uploads/2019/09/Blog-10-300x214.jpg 300w, https://www.primalodging.com/wp-content/uploads/2019/09/Blog-10-1024x731.jpg 1024w, https://www.primalodging.com/wp-content/uploads/2019/09/Blog-10-768x548.jpg 768w, https://www.primalodging.com/wp-content/uploads/2019/09/Blog-10-892x637.jpg 892w\" alt=\"\" width=\"1350\" height=\"964\" data-id=\"192\" data-link=\"https://themes.getmotopress.com/booklium-apartment/blog-10/\" /></figure>\r\n</li>\r\n<li class=\"blocks-gallery-item\" style=\"box-sizing: inherit; margin: 0px 0px 1em; display: flex; flex-grow: 1; flex-direction: column; justify-content: center; position: relative; width: calc(33.3333% - 0.66667em); border-radius: 3px; overflow: hidden;\">\r\n<figure style=\"box-sizing: inherit; margin: 0px; height: 150.422px; display: flex; align-items: flex-end; justify-content: flex-start;\"><img class=\"wp-image-190\" style=\"box-sizing: inherit; border-style: none; height: 150.422px; max-width: 100%; display: block; width: 210.672px; flex: 1 1 0%; object-fit: cover;\" src=\"https://primalodging.com/wp-content/uploads/2019/09/Blog-8.jpg\" sizes=\"(max-width: 1350px) 100vw, 1350px\" srcset=\"https://www.primalodging.com/wp-content/uploads/2019/09/Blog-8.jpg 1350w, https://www.primalodging.com/wp-content/uploads/2019/09/Blog-8-300x200.jpg 300w, https://www.primalodging.com/wp-content/uploads/2019/09/Blog-8-1024x683.jpg 1024w, https://www.primalodging.com/wp-content/uploads/2019/09/Blog-8-768x513.jpg 768w, https://www.primalodging.com/wp-content/uploads/2019/09/Blog-8-892x595.jpg 892w\" alt=\"\" width=\"1350\" height=\"901\" data-id=\"190\" data-link=\"https://themes.getmotopress.com/booklium-apartment/blog-8/\" /></figure>\r\n</li>\r\n</ul>\r\n<p style=\"box-sizing: inherit; margin: 0px auto 1.5em; max-width: 664px;\">Take your children along with you and discover together the unique world of the underwater life. Kids will be astonished with new discoveries that await them. Put camera or phone into your bag to capture charming landscapes of the bays!</p>\r\n</div>', '2021-04-06 15:28:53', 'khalid', NULL, 'dist/img/giant_26168.jpg', 'cardin', ''),
(4, 3, 'The Ultimate Packing List For  Travelers', '<ul class=\"i8Z77e\" style=\"margin: 0px; padding: 0px; color: #202124; font-family: arial, sans-serif; font-size: 16px;\">\r\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style-type: disc;\">Toothbrush, Toothpaste, Toothbrush Cover &amp; Dental Floss.</li>\r\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style-type: disc;\">Deodorant.</li>\r\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style-type: disc;\">Hand Sanitizer.</li>\r\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style-type: disc;\">Sunscreen &amp; Aftersun.</li>\r\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style-type: disc;\">Shampoo &amp; Conditioner (if you\'re not likely to be staying in fancy hotels where this is provided)</li>\r\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style-type: disc;\">Wet Wipes/Make Up Remover Wipes/Face wash.</li>\r\n<li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style-type: disc;\">Tweezers + Mini Mirror.</li>\r\n</ul>', '2021-04-06 15:42:00', 'khalid', NULL, 'dist/img/nua_hero.jpg', 'cardin', ''),
(5, 4, 'Planning your Sundarbans adventure', '<h2 class=\"content__feature\" style=\"border: 0px solid #e2e7ea; box-sizing: border-box; margin: 0px 0px 5rem; font-size: 28px; font-weight: 300; line-height: 1.5; color: #2c3543; font-family: \'Benton Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif;\">The largest mangrove forest in the world is a mist-shrouded, river-riddled swamp region of shifting tides, man-eating tigers and off-the-beaten-track adventure. It\'s surrounded on three sides by two of the most densely populated countries on earth &ndash;&nbsp;<span style=\"border: 0px solid #e2e7ea; box-sizing: border-box;\"><a style=\"border: 0px solid #e2e7ea; box-sizing: border-box; background-color: transparent; color: #277bba; text-decoration: inherit; transition-duration: 0.3s; transition-property: color;\" href=\"https://www.lonelyplanet.com/india\" data-testid=\"article-link\">India</a></span>&nbsp;and&nbsp;<span style=\"border: 0px solid #e2e7ea; box-sizing: border-box;\"><a style=\"border: 0px solid #e2e7ea; box-sizing: border-box; background-color: transparent; color: #277bba; text-decoration: inherit; transition-duration: 0.3s; transition-property: color;\" href=\"https://www.lonelyplanet.com/bangladesh\" data-testid=\"article-link\">Bangladesh</a></span>&nbsp;&ndash; yet it remains remote, inhospitable and largely uninhabited by people. This is truly wild terrain, and chug-chugging along its river channels into its swampy heart of darkness is as thrilling as it is serene.</h2>\r\n<h3 style=\"border: 0px solid #e2e7ea; box-sizing: border-box; margin: 0px; font-size: 4rem; line-height: 1.375; color: #2c3543; font-family: \'Benton Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif;\"><span style=\"border: 0px solid #e2e7ea; box-sizing: border-box; font-weight: bolder;\">Why go?</span></h3>\r\n<div style=\"border: 0px solid #e2e7ea; box-sizing: border-box; color: #2c3543; font-family: \'Benton Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 20px;\">\r\n<p style=\"border: 0px solid #e2e7ea; box-sizing: border-box; margin: 0px 0px 4rem; font-family: \'Miller Daily\', Georgia, Times, \'Times New Roman\', serif;\">The star attraction is the Royal Bengal tiger. Around 400 of these magnificent creatures call the&nbsp;<span style=\"border: 0px solid #e2e7ea; box-sizing: border-box;\"><a style=\"border: 0px solid #e2e7ea; box-sizing: border-box; background-color: transparent; color: #277bba; text-decoration: inherit; transition-duration: 0.3s; transition-property: color;\" href=\"https://www.lonelyplanet.com/bangladesh/khulna-division/sundarbans-national-park\" data-testid=\"article-link\">Sundarbans</a></span>&nbsp;home, making this the largest single population of tigers on earth. Despite their reputation as man-eaters, they are extremely difficult to spot, but the thrill of trying to track one down is hard to overstate. And even if you see none, simply sitting on the deck of your boat as you float through thick mangrove forests is an unforgettably dreamy experience.</p>\r\n</div>\r\n<h3 style=\"border: 0px solid #e2e7ea; box-sizing: border-box; margin: 0px; font-size: 4rem; line-height: 1.375; color: #2c3543; font-family: \'Benton Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif;\"><span style=\"border: 0px solid #e2e7ea; box-sizing: border-box; font-weight: bolder;\">How to see the Sundarbans</span></h3>\r\n<div style=\"border: 0px solid #e2e7ea; box-sizing: border-box; color: #2c3543; font-family: \'Benton Sans\', -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 20px;\">\r\n<p style=\"border: 0px solid #e2e7ea; box-sizing: border-box; margin: 0px 0px 4rem; font-family: \'Miller Daily\', Georgia, Times, \'Times New Roman\', serif;\">The Sundarbans is shared roughly 60-40 between Bangladesh and India and you can visit it from either country. The India side is more easily accessible, but Bangladesh offers the chance to explore the forests in more depth.</p>\r\n</div>', '2021-04-06 15:46:31', 'khalid', NULL, 'dist/img/sundarbans_deer.jpg', 'cardin', ''),
(6, 3, 'Bangladesh: A country with contrasts and diversity', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/travel/Admin/dist/img/sundarban.jpg\" alt=\"\" width=\"800\" height=\"450\" /></p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ullamcorper, elit ac pharetra vulputate, libero elit tincidunt odio, et sollicitudin lorem lacus sed tellus. Sed tortor purus, ultricies ultrices feugiat in, rhoncus eget magna. Etiam placerat purus felis, in euismod mauris varius ac. Morbi malesuada efficitur arcu ut facilisis. Sed vulputate lectus vitae nulla luctus, et maximus felis pharetra. Duis eu lacus semper, sodales risus eu, bibendum mauris. Fusce efficitur massa ut enim interdum tincidunt vitae elementum risus. Ut id mauris in nibh mattis eleifend in ut lacus. Vestibulum sit amet ipsum eu lectus sodales fringilla sit amet in tellus. Mauris id tincidunt mauris, vitae gravida diam. Etiam odio libero, posuere ut venenatis non, malesuada ut orci. Proin id eleifend quam.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Sed scelerisque nibh sit amet nibh consectetur imperdiet imperdiet ut felis. Ut vel turpis laoreet, interdum dolor at, tristique ligula. Pellentesque placerat dui vestibulum volutpat viverra. Fusce elementum ante tortor, vel mattis ipsum maximus ac. Pellentesque in egestas justo. Duis egestas fringilla nibh, at varius risus ultrices egestas. Praesent congue dolor est, sit amet lacinia purus efficitur in. Mauris fermentum mi et sem facilisis sollicitudin non ac erat. Morbi pretium sem leo, nec imperdiet justo malesuada id. Praesent molestie velit ligula, sit amet mollis neque vulputate sit amet. Quisque maximus, ex sit amet sollicitudin fermentum, dolor magna finibus lacus, sit amet hendrerit metus nisi scelerisque ligula. Mauris non consectetur enim. Aliquam metus neque, scelerisque sodales odio sit amet, euismod varius quam. Suspendisse justo mi, molestie id ornare sed, consectetur eget quam. Integer at odio in nibh tristique finibus ac et justo. Aliquam erat volutpat.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Maecenas facilisis sagittis augue at scelerisque. In ut blandit ex. Ut consequat gravida sem sit amet egestas. Pellentesque dignissim varius lorem, vel cursus lectus commodo eget. Suspendisse pellentesque ligula purus, semper finibus ipsum iaculis vitae. Sed pulvinar tristique tincidunt. Integer ullamcorper tincidunt facilisis. Proin a consequat ante. Nunc ipsum ipsum, iaculis mollis eleifend eget, tempor non elit. Nunc iaculis consectetur diam, at pulvinar justo. Donec elementum lorem pharetra magna tempus placerat. Sed maximus aliquam ornare. Nulla tellus lacus, egestas a rutrum vitae, malesuada eu leo.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Pellentesque non neque eget turpis elementum pharetra at placerat sapien. Mauris malesuada, dolor a rutrum euismod, dui massa ullamcorper est, ut sollicitudin tellus elit at diam. Vestibulum at quam et augue mattis consequat. Curabitur maximus libero a sapien tempor lobortis. Donec quis luctus tortor. Pellentesque pharetra volutpat libero, non commodo ex vehicula at. Nunc accumsan consequat sollicitudin. Suspendisse viverra imperdiet scelerisque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam porttitor nisi nec metus mollis vulputate. Quisque vestibulum at tortor quis efficitur. Donec dapibus quam ligula, vel tristique ex fringilla eu. Ut non sollicitudin ipsum..</p>', '2021-04-06 15:48:40', 'Hasan', '2021-04-06 15:48:40', 'dist/img/bd.jpg', 'khalid', 'cardin'),
(7, 2, 'Twist', '', '2021-03-31 17:02:16', 'dgatwist', '2021-03-31 17:02:16', 'dist/img/07942e9a9ac1ce0cbb683317cc5cc340', '', 'dgatwist'),
(8, 2, 'Twist', '<p>I love you</p>', '2021-04-05 23:14:17', 'nashrif', '2021-04-05 23:14:17', 'dist/img/3ffd231d47df532a6bb24186448da5a2chocolate.jpg', '', 'cardin'),
(9, 3, 'Burundi', '<p>kjbgfdkjhgkfdsjhngfdjk</p>', '2021-04-05 23:14:13', 'nashrif', '2021-04-05 23:14:13', 'dist/img/9df284582ed27a12f9c5abe725379cb7Aymard.jpg', '', 'cardin');

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int(11) NOT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `room_name` varchar(50) DEFAULT NULL,
  `room_desc` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `last_modified` varchar(50) NOT NULL,
  `deletedBy` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `hotel_id`, `room_name`, `room_desc`, `price`, `image`, `capacity`, `available`, `deletedAt`, `last_modified`, `deletedBy`) VALUES
(1, 2, 'Single', '', 300, 'dist/img/test_room.jpg', 5, 7, NULL, 'cardin', ''),
(2, 2, 'Double', '', 300, 'dist/img/402ee4a6712baee81f19b3e7efcba934hotel-room-view.jpg', 3, 3, NULL, 'cardin', ''),
(3, 3, 'Single', '', 400, 'dist/img/room-3.jpg', 5, 5, NULL, 'cardin', ''),
(4, 3, 'Quad', '', 750, 'dist/img/room-4.jpg', 2, 2, NULL, 'cardin', ''),
(5, 5, 'Family', '', 1000, 'dist/img/room-4.jpg', 4, 3, NULL, 'cardin', ''),
(6, 5, 'Family', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.', 1000, 'dist/imgroom-5.jpg', 4, 4, '2018-08-25 08:16:50', '', ''),
(7, 6, 'Presidential', '', 2000, 'dist/img/Meridien-Mina-Seyahi.gif', 1, 1, NULL, 'cardin', ''),
(8, 7, 'Triple', '', 900, 'dist/img/room-5.jpg', 3, 3, NULL, 'cardin', ''),
(18, 2, 'Triple', '', 700, 'dist/img/507faaa3e58d44a2ab8997d75c6f8e5broom-1.jpg', 10, 10, NULL, 'cardin', '');

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `tour_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `addedOn` timestamp NOT NULL DEFAULT current_timestamp(),
  `addedBy` varchar(50) DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `last_modified` varchar(50) NOT NULL,
  `deletedBy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`tour_id`, `title`, `price`, `days`, `location`, `description`, `image`, `capacity`, `available`, `owner`, `addedOn`, `addedBy`, `deletedAt`, `last_modified`, `deletedBy`) VALUES
(1, 'Bujumbura', 100, 1, 'Bujumbura, BURUNDI', '<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"img/Burundi8.jpg\" alt=\"\" width=\"800\" height=\"533\" /></span></p>\r\n<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\">Description</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Quicksand, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin: 0px 0px 20px; font-size: 20px; text-transform: uppercase;\">BUJUMBURA, BURUNDI</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">\r\nExperience the warmth of the beach, Sand, Enjoying the beautiful view of Lake Tanganyika<BR><BR>\r\n\r\n \r\n\r\n*Pick up & Place de l’independance<BR>\r\n\r\n*Hotel Tanganyika Resort<BR>\r\n\r\n*Musee Vivant<BR>\r\n\r\n*Tanganyika Beach<BR>\r\n\r\n*257 Arts<BR>\r\n\r\n*Monument de l’Unite Nationale and Drop-off<BR>\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\"><strong>THIS PACKAGE INCLUDES:</strong><br /><br />*Pick up and Drop off to your hotel/ selected location in Bujumbura<br />*Clean and Air-Conditioned Modern Vehicle<br />*Professional Licensed Tour Guide of Your Selected Language<br />*Cold Mineral Water/juices During transportation<br />*Entrance tickets Fees<br /><br /><br /><strong>THIS PACKAGE DOES NOT INCLUDES:</strong><br /><br />*Tipping (not Mandatory)<br />*Any extra Service or Expense not mentioned Above<br /><br /><br /><strong>GOOD TO KNOW BEFORE YOU BOOK.</strong><br /><br />*Tour Duration is Fixed for All tours/activities, but it may vary depending on the city traffic<br />*The duration of the tour includes the pickup and drop off time<br />*This tour is not wheelchair accessible, but if anyone in your group has any physical disabilities, please get in touch and we can customize you a private Trip.<br />*Prices may vary based on the number of people and Fair Discounts May apply<br /> </p>\r\n<p></p>', 'dist/img/1e011e582533b06f2f467dfeb61f2943Burundi4.jpg', 2, 8, 'dgatwist', '2018-08-08 07:15:18', 'Hasan', NULL, 'cardin', ''),
(2, 'Kigali', 100, 1, 'Kigali, RWANDA', '<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"img/Rwanda2.jpg\" alt=\"\" width=\"800\" height=\"533\" /></span></p>\r\n<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\">Description</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Quicksand, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin: 0px 0px 20px; font-size: 20px; text-transform: uppercase;\">KIGALI, RWANDA</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">\r\n*Pick-up & Kigali Genocide Memorial<br>\r\n\r\n*Parliament Museum<br>\r\n\r\n*Kigali Convention Center<br>\r\n\r\n*Inema Arts<br>\r\n\r\n*Kimironko market & Drop off<br>\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\"><strong>THIS PACKAGE INCLUDES:</strong><br /><br />*Pick up and Drop off to your hotel/ selected location in Bujumbura<br />*Clean and Air-Conditioned Modern Vehicle<br />*Professional Licensed Tour Guide of Your Selected Language<br />*Cold Mineral Water/juices During transportation<br />*Entrance tickets Fees<br /><br /><br /><strong>THIS PACKAGE DOES NOT INCLUDES:</strong><br /><br />*Tipping (not Mandatory)<br />*Any extra Service or Expense not mentioned Above<br /><br /><br /><strong>GOOD TO KNOW BEFORE YOU BOOK.</strong><br /><br />*Tour Duration is Fixed for All tours/activities, but it may vary depending on the city traffic<br />*The duration of the tour includes the pickup and drop off time<br />*This tour is not wheelchair accessible, but if anyone in your group has any physical disabilities, please get in touch and we can customize you a private Trip.<br />*Prices may vary based on the number of people and Fair Discounts May apply<br /> </p>\r\n<p></p>', 'dist/img/ae9646d83beaa6d7450694a34517151cRwanda1.jpg', 2, 30, 'dgatwist', '2018-08-09 07:15:18', 'Hasan', NULL, 'cardin', ''),
(3, 'Rwanda Tour', 1500, 5, 'Rwanda', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/travel/Admin/dist/imagestour-4-1.jpg\" alt=\"\" width=\"800\" height=\"533\" /></p>\r\n<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\">Day 1</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Quicksand, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin: 0px 0px 20px; font-size: 20px; text-transform: uppercase;\">ATHENS, GREECE</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>\r\n<p>&nbsp;</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/travel/Admin/dist/imagestour-3-1.jpg\" alt=\"\" width=\"800\" height=\"533\" /></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\">Day 2</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Quicksand, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin: 0px 0px 20px; font-size: 20px; text-transform: uppercase;\">THAILAND</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar..</p>', 'dist/imgtour-6.jpg', 5, 30, 'dgatwist', '2018-08-10 07:15:18', 'khalid', '2021-04-02 14:16:28', 'khalid', 'dgatwist'),
(4, 'Mombasa', 1000, 7, 'Mombasa, KENYA', '<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/cardin/Admin/img/Mombasa2.jpg\" alt=\"\" width=\"800\" height=\"533\" /></span></p>\r\n<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\">Description</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Quicksand, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin: 0px 0px 20px; font-size: 20px; text-transform: uppercase;\">MOMBASA, KENYA</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">*Haller Park<br />*Fort Jesus Museum<br />*Nyali Beach and BAMBURI Beach<br />*Mombasa Marine National Park<br />*Mombasa Old town<br />*Mamba village Center</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\"><strong>THIS PACKAGE INCLUDES:</strong><br /><br />*Pick up and Drop off to your hotel/ selected location in Bujumbura<br />*Clean and Air-Conditioned Modern Vehicle<br />*Professional Licensed Tour Guide of Your Selected Language<br />*Cold Mineral Water/juices During transportation<br />*Entrance tickets Fees<br /><br /><br /><strong>THIS PACKAGE DOES NOT INCLUDES:</strong><br /><br />*Tipping (not Mandatory)<br />*Any extra Service or Expense not mentioned Above<br /><br /><br /><strong>GOOD TO KNOW BEFORE YOU BOOK.</strong><br /><br />*Tour Duration is Fixed for All tours/activities, but it may vary depending on the city traffic<br />*The duration of the tour includes the pickup and drop off time<br />*This tour is not wheelchair accessible, but if anyone in your group has any physical disabilities, please get in touch and we can customize you a private Trip.<br />*Prices may vary based on the number of people and Fair Discounts May apply<br />&nbsp;</p>\r\n<p>\"&gt;</p>', 'dist/img/1cc4b2eba180c761e847f9e454ec64fcMombasa1.jpg', 2, 40, 'dgatwist', '2018-08-11 07:15:18', 'khalid', NULL, 'cardin', ''),
(5, 'Dubai City', 1000, 7, 'Dubai, UAE', '<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"img/Dubai3.jpg\" alt=\"\" width=\"800\" height=\"533\" /></span></p>\r\n<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\">Description</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Quicksand, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin: 0px 0px 20px; font-size: 20px; text-transform: uppercase;\">DUBAI, UAE</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">\r\n*Premium Red Dunes & Camel Safari with BBQ at AL Khayma<br>\r\n*Dubai Marina Yacht Tour with Breakfast or BBQ<br>\r\n*Red Dune Bashing in Dubai with Desert Camp & BBQ Dinner<br>\r\n*BURJ KHALIFA <br>\r\n*Dubai Fountain<br>\r\n*Dubai Miracle Garden<br>\r\n*Atlantis Aqua Venture Water Park<br>\r\n*Dubai Aquarium and Underwater ZOO<br>\r\n\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">\r\n<b>THIS PACKAGE INCLUDES:</b><br><br>\r\n*Pick up and Drop off to your hotel/ selected location in Bujumbura<br>\r\n*Clean and Air-Conditioned Modern Vehicle<br>\r\n*Professional Licensed Tour Guide of Your Selected Language<br>\r\n*Cold Mineral Water/juices During transportation<br>\r\n*Entrance tickets Fees<br><br><br>\r\n\r\n<b>THIS PACKAGE DOES NOT INCLUDES:</b><br><br>\r\n*Tipping (not Mandatory)<br>\r\n*Any extra Service or Expense not mentioned Above<br><br><br>\r\n\r\n<b>GOOD TO KNOW BEFORE YOU BOOK.</b><br><br>\r\n*Tour Duration is Fixed for All tours/activities, but it may vary depending on the city traffic<br>\r\n*The duration of the tour includes the pickup and drop off time<br>\r\n*This tour is not wheelchair accessible, but if anyone in your group has any physical disabilities, please get in touch and we can customize you a private Trip.<br>\r\n*Prices may vary based on the number of people and Fair Discounts May apply<br>\r\n\r\n </p>', 'dist/img/9cfd7d8214299646dad6851346886e8bDubai1.jpg', 2, 40, 'dgatwist', '2018-08-12 07:15:18', 'khalid', NULL, 'cardin', ''),
(6, 'Zanzibar', 1000, 7, 'Zanzibar, TANZANIA', '<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"img/Zanzibar2.jpg\" alt=\"\" width=\"800\" height=\"533\" /></span></p>\r\n<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\">Description</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Quicksand, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin: 0px 0px 20px; font-size: 20px; text-transform: uppercase;\">ZANZIBAR, TANZANIA</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">\r\n*Premium Red Dunes & Camel Safari with BBQ at AL Khayma<br>\r\n*Cheetah’s rock<br>\r\n*Nungwi Beach<br>\r\n*Nakupenda Beach<br>\r\n*Forodhani Gardens<br>\r\n\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">\r\n<b>THIS PACKAGE INCLUDES:</b><br><br>\r\n*Pick up and Drop off to your hotel/ selected location in Bujumbura<br>\r\n*Clean and Air-Conditioned Modern Vehicle<br>\r\n*Professional Licensed Tour Guide of Your Selected Language<br>\r\n*Cold Mineral Water/juices During transportation<br>\r\n*Entrance tickets Fees<br><br><br>\r\n\r\n<b>THIS PACKAGE DOES NOT INCLUDES:</b><br><br>\r\n*Tipping (not Mandatory)<br>\r\n*Any extra Service or Expense not mentioned Above<br><br><br>\r\n\r\n<b>GOOD TO KNOW BEFORE YOU BOOK.</b><br><br>\r\n*Tour Duration is Fixed for All tours/activities, but it may vary depending on the city traffic<br>\r\n*The duration of the tour includes the pickup and drop off time<br>\r\n*This tour is not wheelchair accessible, but if anyone in your group has any physical disabilities, please get in touch and we can customize you a private Trip.<br>\r\n*Prices may vary based on the number of people and Fair Discounts May apply<br>\r\n\r\n </p>', 'dist/img/b1e66592c875f8c042ada982c3394fdfZanzibar1.jpg', 3, 40, 'dgatwist', '2018-08-13 07:15:18', 'khalid', NULL, 'cardin', ''),
(7, 'Bali', 1500, 3, 'Bali, INDONESIA', '<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"img/Bali2.jpg\" alt=\"\" width=\"800\" height=\"533\" /></span></p>\r\n<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\">Description</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Quicksand, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin: 0px 0px 20px; font-size: 20px; text-transform: uppercase;\">BALI, INDONESIA</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">\r\n*Day trips and excursions<BR> \r\n*walking & biking Tours<BR> \r\n*Weddings and Honey Moons<BR> \r\n*Waterbom Bali<BR> \r\n*Sacred Monkey Forest Sanctuary<BR> \r\n\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">\r\n<b>THIS PACKAGE INCLUDES:</b><br><br>\r\n*Pick up and Drop off to your hotel/ selected location in Bujumbura<br>\r\n*Clean and Air-Conditioned Modern Vehicle<br>\r\n*Professional Licensed Tour Guide of Your Selected Language<br>\r\n*Cold Mineral Water/juices During transportation<br>\r\n*Entrance tickets Fees<br><br><br>\r\n\r\n<b>THIS PACKAGE DOES NOT INCLUDES:</b><br><br>\r\n*Tipping (not Mandatory)<br>\r\n*Any extra Service or Expense not mentioned Above<br><br><br>\r\n\r\n<b>GOOD TO KNOW BEFORE YOU BOOK.</b><br><br>\r\n*Tour Duration is Fixed for All tours / activities, but it may vary depending on the city traffic<br>\r\n*The duration of the tour includes the pick up and drop off time<br>\r\n*This tour is not wheelchair accessible, but if anyone in your group has any physical disabilities, please get in touch and we can customize you a private Trip.<br>\r\n*Prices may vary based on number of people and Fair Discounts May apply<br>\r\n\r\n </p>\">\">', 'dist/img/5659fc88deb7c4f599c5f3e55cfe4e21Bali1.jpg', 2, 46, 'dgatwist', '2018-08-14 07:15:18', 'khalid', NULL, 'cardin', ''),
(8, 'Punta Cana', 1400, 7, 'Punta Cana, DOMINICAN REPUBLIC', '<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"img/Puntacana2.jpg\" alt=\"\" width=\"800\" height=\"533\" /></span></p>\r\n<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\">Description</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Quicksand, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin: 0px 0px 20px; font-size: 20px; text-transform: uppercase;\">PUNTA CANA, DOMINICAN REPUBLIC</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">\r\n*Weddings and Honey Moons<br>\r\n*Day trips and Excursions<br>\r\n*Water Sports<br>\r\n*Bavaro Beach<br>\r\n*Blue Mall Punta Cana<br>\r\n*Dolphin Explorer<br>\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">\r\n<b>THIS PACKAGE INCLUDES:</b><br><br>\r\n*Pick up and Drop off to your hotel/ selected location in Bujumbura<br>\r\n*Clean and Air-Conditioned Modern Vehicle<br>\r\n*Professional Licensed Tour Guide of Your Selected Language<br>\r\n*Cold Mineral Water/juices During transportation<br>\r\n*Entrance tickets Fees<br><br><br>\r\n\r\n<b>THIS PACKAGE DOES NOT INCLUDES:</b><br><br>\r\n*Tipping (not Mandatory)<br>\r\n*Any extra Service or Expense not mentioned Above<br><br><br>\r\n\r\n<b>GOOD TO KNOW BEFORE YOU BOOK.</b><br><br>\r\n*Tour Duration is Fixed for All tours/activities, but it may vary depending on the city traffic<br>\r\n*The duration of the tour includes the pickup and drop off time<br>\r\n*This tour is not wheelchair accessible, but if anyone in your group has any physical disabilities, please get in touch and we can customize you a private Trip.<br>\r\n*Prices may vary based on the number of people and Fair Discounts May apply<br>\r\n\r\n </p>', 'dist/img/c3a1506d30e60e0202c1b384300cc91ePuntacana1.jpg', 2, 50, 'dgatwist', '2018-08-15 13:06:22', 'khalid', NULL, 'cardin', ''),
(9, 'Cancun', 1600, 7, 'Cancun, MEXICO', '<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"img/Cancun2.jpg\" alt=\"\" width=\"800\" height=\"533\" /></span></p>\r\n<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\">Description</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Quicksand, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin: 0px 0px 20px; font-size: 20px; text-transform: uppercase;\">CANCUN, MEXICO</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">\r\n*Day trips and excursions<br> \r\n*Cruises, sailing and water Tours<br>\r\n*Playa Delfines<br>\r\n*La Isla Shopping Village<br>\r\n*Xoximilco Cancun By XCaret<br>\r\n*Mayan Museum of Cancun<br>\r\n\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">\r\n<b>THIS PACKAGE INCLUDES:</b><br><br>\r\n*Pick up and Drop off to your hotel/ selected location in Bujumbura<br>\r\n*Clean and Air-Conditioned Modern Vehicle<br>\r\n*Professional Licensed Tour Guide of Your Selected Language<br>\r\n*Cold Mineral Water/juices During transportation<br>\r\n*Entrance tickets Fees<br><br><br>\r\n\r\n<b>THIS PACKAGE DOES NOT INCLUDES:</b><br><br>\r\n*Tipping (not Mandatory)<br>\r\n*Any extra Service or Expense not mentioned Above<br><br><br>\r\n\r\n<b>GOOD TO KNOW BEFORE YOU BOOK.</b><br><br>\r\n*Tour Duration is Fixed for All tours/activities, but it may vary depending on the city traffic<br>\r\n*The duration of the tour includes the pickup and drop off time<br>\r\n*This tour is not wheelchair accessible, but if anyone in your group has any physical disabilities, please get in touch and we can customize you a private Trip.<br>\r\n*Prices may vary based on the number of people and Fair Discounts May apply<br>\r\n\r\n </p>', 'dist/img/36f01495fff584c7e5ac6ef1d64fdd1eCancun1.jpg', 2, 50, 'dgatwist', '2018-08-15 07:44:32', 'khalid', NULL, 'cardin', ''),
(10, 'Santorini', 2500, 5, 'Santorini, SPAIN', '<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"img/Santorini1.jpg\" alt=\"\" width=\"800\" height=\"533\" /></span></p>\r\n<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\">Description</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Quicksand, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin: 0px 0px 20px; font-size: 20px; text-transform: uppercase;\">SANTORINI, SPAIN</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">\r\n*Day trips and excursions <br>\r\n*Helicopter and balloon tours<br>\r\n*Amoudi Bay<br>\r\n*Hiking Trail Fira – Oia<br>\r\n*Sunset in Oia<br>\r\n*Gaia winery<br>\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">\r\n<b>THIS PACKAGE INCLUDES:</b><br><br>\r\n*Pickup and Drop off to your hotel/ selected location in Bujumbura<br>\r\n*Clean and Air-Conditioned Modern Vehicle<br>\r\n*Professional Licensed Tour Guide of Your Selected Language<br>\r\n*Cold Mineral Water/juices During transportation<br>\r\n*Entrance tickets Fees<br><br><br>\r\n\r\n<b>THIS PACKAGE DOES NOT INCLUDES:</b><br><br>\r\n*Tipping (not Mandatory)<br>\r\n*Any extra Service or Expense not mentioned Above<br><br><br>\r\n\r\n<b>GOOD TO KNOW BEFORE YOU BOOK.</b><br><br>\r\n*Tour Duration is Fixed for All tours/activities, but it may vary depending on the city traffic<br>\r\n*The duration of the tour includes the pickup and drop off time<br>\r\n*This tour is not wheelchair accessible, but if anyone in your group has any physical disabilities, please get in touch and we can customize you a private Trip.<br>\r\n*Prices may vary based on the number of people and Fair Discounts May apply<br>\r\n\r\n </p>', 'dist/img/9bf4c9b3ce18893d1fa3d4348eb291eaSantorini1.jpg', 2, -4, 'dgatwist', '2018-08-26 05:10:10', 'khalid', NULL, 'cardin', ''),
(11, 'Maldives', 2000, 5, 'Male, Maldives', '<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"img/MALDIVES1.jpg\" alt=\"\" width=\"800\" height=\"533\" /></span></p>\r\n<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\">Description</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Quicksand, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin: 0px 0px 20px; font-size: 20px; text-transform: uppercase;\">MALE, MALDIVES</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">\r\n*Private and custom Tours<br>\r\n*Weddings and Honey Moons<br>\r\n\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">\r\n<b>THIS PACKAGE INCLUDES:</b><br><br>\r\n*Pick up and Drop off to your hotel/ selected location in Bujumbura<br>\r\n*Clean and Air-Conditioned Modern Vehicle<br>\r\n*Professional Licensed Tour Guide of Your Selected Language<br>\r\n*Cold Mineral Water/juices During transportation<br>\r\n*Entrance tickets Fees<br><br><br>\r\n\r\n<b>THIS PACKAGE DOES NOT INCLUDES:</b><br><br>\r\n*Tipping (not Mandatory)<br>\r\n*Any extra Service or Expense not mentioned Above<br><br><br>\r\n\r\n<b>GOOD TO KNOW BEFORE YOU BOOK.</b><br><br>\r\n*Tour Duration is Fixed for All tours/activities, but it may vary depending on the city traffic<br>\r\n*The duration of the tour includes the pickup and drop off time<br>\r\n*This tour is not wheelchair accessible, but if anyone in your group has any physical disabilities, please get in touch and we can customize you a private Trip.<br>\r\n*Prices may vary based on the number of people and Fair Discounts May apply<br>\r\n\r\n </p>', 'dist/img/e9bd6fca9677582792222fcc6d23859eMALDIVES1.jpg', 2, NULL, 'dgatwist', '2018-08-27 18:09:14', 'khalid', NULL, 'cardin', ''),
(12, 'BURUNDI Luxury Tour', 1200, 5, 'Burundi', '<p>jkhsdkahgbahsjdb</p>', 'dist/img/10183b06182bc2125a7bce0a5f69be9bWIN_20190730_11_54_06_Pro.jpg', 4, NULL, 'dgatwist', '2021-04-02 11:51:03', 'khalid', '2021-04-02 14:16:12', 'khalid', 'dgatwist'),
(13, 'Seychelles', 1500, 7, 'Victoria, Seychelles', '<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"img/Seychelles2.jpg\" alt=\"\" width=\"800\" height=\"533\" /></span></p>\r\n<p><span class=\"day-tour\" style=\"box-sizing: border-box; display: block; margin-bottom: 20px; color: #b3b3b3; font-family: Quicksand, Arial, sans-serif;\">Description</span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Quicksand, Arial, sans-serif; font-weight: 400; line-height: 1.1; margin: 0px 0px 20px; font-size: 20px; text-transform: uppercase;\">VICTORIA, SEYCHELLES</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">\r\n*Haller Park<br>\r\n*Fort Jesus Museum<br> \r\n*Nyali Beach and BAMBURI Beach<br>\r\n*Mombasa Marine National Park<br>\r\n*Mombasa Old town<br>\r\n*Mamba village Center<br>\r\n</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 20px; color: #595959; font-family: Quicksand, Arial, sans-serif;\">\r\n<b>THIS PACKAGE INCLUDES:</b><br><br>\r\n*Pick up and Drop off to your hotel/ selected location in Bujumbura<br>\r\n*Clean and Air-Conditioned Modern Vehicle<br>\r\n*Professional Licensed Tour Guide of Your Selected Language<br>\r\n*Cold Mineral Water/juices During transportation<br>\r\n*Entrance tickets Fees<br><br><br>\r\n\r\n<b>THIS PACKAGE DOES NOT INCLUDES:</b><br><br>\r\n*Tipping (not Mandatory)<br>\r\n*Any extra Service or Expense not mentioned Above<br><br><br>\r\n\r\n<b>GOOD TO KNOW BEFORE YOU BOOK.</b><br><br>\r\n*Tour Duration is Fixed for All tours/activities, but it may vary depending on the city traffic<br>\r\n*The duration of the tour includes the pickup and drop off time<br>\r\n*This tour is not wheelchair accessible, but if anyone in your group has any physical disabilities, please get in touch and we can customize you a private Trip.<br>\r\n*Prices may vary based on the number of people and Fair Discounts May apply<br>\r\n\r\n </p>', 'dist/img/f5edab3b5f9853b047d5777f132ebf39Seychelles1.jpg', 2, NULL, 'dgatwist', '2021-04-04 14:22:24', 'cardin', NULL, 'cardin', '');

-- --------------------------------------------------------

--
-- Table structure for table `tour_enquiry`
--

CREATE TABLE `tour_enquiry` (
  `enquiry_id` int(11) NOT NULL,
  `tour_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `child` int(11) DEFAULT NULL,
  `adult` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `addedBy` varchar(50) DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `tour_enquiry`
--

INSERT INTO `tour_enquiry` (`enquiry_id`, `tour_id`, `name`, `email`, `phone`, `days`, `child`, `adult`, `message`, `addedBy`, `deletedAt`) VALUES
(1, 1, 'Fardin', 'fardin@gmail.com', '01786423154', 3, 2, 2, 'We want this package. ', 'khalid', '2018-08-25 21:56:47'),
(2, 1, 'Chris', 'chris@yahoo.com', '01658974123', 5, 0, 3, 'We want this package.', 'khalid', '2021-04-03 12:42:38'),
(3, 1, 'Jenia', 'jenia@gmail.com', '0175898451', 3, 1, 2, 'We want this package.', 'Hasan', NULL),
(4, 2, 'Mustafa', 'mustafa@gmail.com', '01896541235', 6, 0, 5, 'We want this package.', 'Hasan', NULL),
(5, 1, 'Fardin', 'fardin@gmail.com', '01856321478', 5, 2, 3, 'I want to book this package. ', 'khalid', NULL),
(6, 1, 'Fariha', 'fariha@gmail.com', '01745623156', 3, 2, 2, 'I want this package. ', 'khalid', NULL),
(7, 2, 'Sumaiya', 'sumaiya@gmail.com', '01485623145', 2, 2, 2, 'I want this package. ', 'Hasan', NULL),
(8, 10, 'Tasnim', 'tasnim@gmail.com', '01985621456', 2, 2, 2, 'I want this package. ', 'khalid', NULL),
(9, 7, 'Tanjima', 'tanjima@gmail.com', '01856321489', 2, 2, 2, 'I want this package. ', 'khalid', NULL),
(10, 2, 'Afiqur', 'afiqur@gmail.com', '0185621456', 2, 5, 10, 'I want this package.', 'khalid', '2021-04-01 16:26:21'),
(11, 1, 'Ibne', 'ibne@gmail', '01820570', 2, 2, 4, 'I want this package.', 'khalid', NULL),
(12, 1, 'Ibne', 'ibne@gmail', '01820570', 2, 2, 4, 'I want this package.', 'khalid', NULL),
(13, 1, 'Saif', 'saif@gmail.com', '01820547896', 2, 2, 4, 'Blah blhah', 'khalid', NULL),
(15, 2, 'Twist', 'dgatwist@gmail.com', '0025775776378', 2, 2, 2, 'I want a ferrari', 'dgatwist', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `user_role` varchar(50) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL,
  `addedOn` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_modified` varchar(50) NOT NULL,
  `deletedBy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `name`, `password`, `email`, `phone`, `user_role`, `image`, `deletedAt`, `addedOn`, `last_modified`, `deletedBy`) VALUES
('aristide', 'Aristide Inkindi', 'aristide', 'aristideinkindi@gmail.com', '002507826552656', 'Subscriber', 'dist/img/4a0c3fdf4d2a4d904b4034869db5692dAymard.jpg', NULL, '2021-04-02 10:36:46', '', ''),
('cardin', 'Cardin Dushime', 'cardin', 'axelcardindushime7@gmail.com', '0025078648533', 'Admin', 'dist/img/cardin.png', '2021-04-02 14:07:22', '2021-04-06 15:50:15', 'cardin', 'khalid'),
('dgatwist', 'Andy Nyenimigabo', '@ndY1996', 'dgatwist@gmail.com', '01820570771', 'Owner', 'dist/img/khalid.jpg', NULL, '2021-04-02 14:15:50', 'khalid', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotel_id`),
  ADD KEY `hotels_users_username_fk` (`addedBy`);

--
-- Indexes for table `hotel_enquiry`
--
ALTER TABLE `hotel_enquiry`
  ADD PRIMARY KEY (`enquiry_id`),
  ADD KEY `hotel-enquiry_hotels_hotel_id_fk` (`hotel_id`),
  ADD KEY `hotel-enquiry_room_type_room_type_id_fk` (`room_type_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `posts_categories_cat_id_fk` (`cat_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`),
  ADD KEY `room_type_hotels_hotel_id_fk` (`hotel_id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`tour_id`),
  ADD KEY `tours_users_username_fk` (`addedBy`);

--
-- Indexes for table `tour_enquiry`
--
ALTER TABLE `tour_enquiry`
  ADD PRIMARY KEY (`enquiry_id`),
  ADD KEY `tour_enquiry_tours_tour_id_fk` (`tour_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hotel_enquiry`
--
ALTER TABLE `hotel_enquiry`
  MODIFY `enquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tour_enquiry`
--
ALTER TABLE `tour_enquiry`
  MODIFY `enquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hotel_enquiry`
--
ALTER TABLE `hotel_enquiry`
  ADD CONSTRAINT `hotel-enquiry_hotels_hotel_id_fk` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`),
  ADD CONSTRAINT `hotel-enquiry_room_type_room_type_id_fk` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_categories_cat_id_fk` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`);

--
-- Constraints for table `room_type`
--
ALTER TABLE `room_type`
  ADD CONSTRAINT `room_type_hotels_hotel_id_fk` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`);

--
-- Constraints for table `tour_enquiry`
--
ALTER TABLE `tour_enquiry`
  ADD CONSTRAINT `tour_enquiry_tours_tour_id_fk` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`tour_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
