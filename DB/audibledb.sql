-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema audibledb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `audibledb` ;

-- -----------------------------------------------------
-- Schema audibledb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `audibledb` DEFAULT CHARACTER SET utf8 ;
USE `audibledb` ;

-- -----------------------------------------------------
-- Table `Audible`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Audible` ;

CREATE TABLE IF NOT EXISTS `Audible` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(500) NULL,
  `author` VARCHAR(100) NOT NULL,
  `narrator` VARCHAR(100) NULL,
  `length` VARCHAR(100) NULL,
  `release_date` VARCHAR(100) NULL,
  `categories` VARCHAR(100) NULL,
  `description` VARCHAR(10000) NULL,
  `book_image` VARCHAR(200) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS audibleuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'audibleuser'@'localhost' IDENTIFIED BY 'audibleuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'audibleuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `Audible`
-- -----------------------------------------------------
START TRANSACTION;
USE `audibledb`;
INSERT INTO `Audible` (`id`, `name`, `author`, `narrator`, `length`, `release_date`, `categories`, `description`, `book_image`) VALUES (1, 'Can\'t Hurt Me: Master Your Mind and Defy the Odds', 'David Goggins', 'David Goggins, Adam Skolnick', '13:37', '2018-11-28', 'Bios & Memoirs, Personal Memoirs', 'For David Goggins, childhood was a nightmare—poverty, prejudice, and physical abuse colored his days and haunted his nights. But through self-discipline, mental toughness, and hard work, Goggins transformed himself from a depressed, overweight young man with no future into a US Armed Forces icon and one of the world\'s top endurance athletes. The only man in history to complete elite training as a Navy SEAL, Army Ranger, and Air Force Tactical Air Controller, he went on to set records in numerous endurance events, inspiring Outside magazine to name him The Fittest (Real) Man in America.\n\nIn Can\'t Hurt Me, he shares his astonishing life story and reveals that most of us tap into only 40 percent of our capabilities. Goggins calls this The 40% Rule, and his story illuminates a path that anyone can follow to push past pain, demolish fear, and reach their full potential.', 'https://m.media-amazon.com/images/I/51Ln2UdUzhL._SL500_.jpg');
INSERT INTO `Audible` (`id`, `name`, `author`, `narrator`, `length`, `release_date`, `categories`, `description`, `book_image`) VALUES (2, 'Born a Crime\nStories from a South African Childhood', 'Trevor Noah', 'Trevor Noah', '8:44', '2016-11-15', ' Bios & Memoirs, Celebrities', 'In this award-winning Audible Studios production, Trevor Noah tells his wild coming-of-age tale during the twilight of apartheid in South Africa. It’s a story that begins with his mother throwing him from a moving van to save him from a potentially fatal dispute with gangsters, then follows the budding comedian’s path to self-discovery through episodes both poignant and comical. Noah’s virtuoso embodiment of all the characters from his childhood, and his ability to perform accents and dialects effortlessly in English, Xhosa, and Zulu, garnered the Audie Award for Best Male Narrator in 2018. Nevertheless, Noah’s devoted and uncompromising mother—as voiced by her son—steals the show.', 'https://m.media-amazon.com/images/I/51Mc--F6zGL._SL500_.jpg');
INSERT INTO `Audible` (`id`, `name`, `author`, `narrator`, `length`, `release_date`, `categories`, `description`, `book_image`) VALUES (3, 'The Operator\nFiring the Shots That Killed Osama Bin Laden and My Years as a SEAL Team Warrior', 'Robert O\'Neill', 'Robert O\'Neill', '9:42', '2017-04-25', 'Bios & Memoirs, War', 'Stirringly evocative, thought provoking, and often jaw dropping, The Operator ranges across SEAL Team Operator Robert O\'Neill\'s awe-inspiring 400-mission career that included his involvement in attempts to rescue \"Lone Survivor\" Marcus Luttrell and abducted-by-Somali-pirates Captain Richard Phillips and culminated in those famous three shots that dispatched the world\'s most wanted terrorist, Osama bin Laden.\n\nIn this book O\'Neill describes his idyllic childhood in Butte, Montana; his impulsive decision to join the SEALs; the arduous evaluation and training process; and the even tougher gauntlet he had to run to join the SEALs\' most elite unit. After officially becoming a SEAL, O\'Neill would spend more than a decade in the most intense counterterror effort in US history. For extended periods, not a night passed without him and his small team recording multiple enemy kills - and though he was lucky enough to survive, several of the SEALs he\'d trained with and fought beside never made it home.\n\nThe Operator describes the nonstop action of O\'Neill\'s deployments in Iraq and Afghanistan, evokes the black humor of years-long combat, brings to vivid life the lethal efficiency of the military\'s Tier One units, and reveals firsthand details of the most celebrated terrorist takedown in history.', 'https://m.media-amazon.com/images/I/61jsqgBB+3L._SL500_.jpg');
INSERT INTO `Audible` (`id`, `name`, `author`, `narrator`, `length`, `release_date`, `categories`, `description`, `book_image`) VALUES (4, 'Modern Romance An Investigation', 'Aziz Ansari, Eric Klinenberg', 'Aziz Ansari, Eric Klinenberg', '6:14', '2015-06-15', 'Romance', 'A hilarious, thoughtful, and in-depth exploration of the pleasures and perils of modern romance from one of this generation\'s most popular and sharpest comedic voices.\n\nAt some point every one of us embarks on a journey to find love. We meet people, date, get into and out of relationships, all with the hope of finding someone with whom we share a deep connection. This seems standard now, but it\'s wildly different from what people did even just decades ago. Single people today have more romantic options than at any point in human history. With technology, our abilities to connect with and sort through these options are staggering. So why are so many people frustrated?\n\nSome of our problems are unique to our time. \"Why did this guy just text me an emoji of a pizza?\" \"Should I go out with this girl even though she listed Combos as one of her favorite snack foods? Combos?!\" \"My girlfriend just got a message from some dude named Nathan. Who\'s Nathan? Did he just send her a photo of his penis? Should I check just to be sure?\"\n\nBut the transformation of our romantic lives can\'t be explained by technology alone. In a short period of time, the whole culture of finding love has changed dramatically. A few decades ago, people would find a decent person who lived in their neighborhood. Their families would meet, and, after deciding neither party seemed like a murderer, they would get married and soon have a kid, all by the time they were 24. Today people marry later than ever and spend years of their lives on a quest to find the perfect person, a soul mate.\n\nFor years Aziz Ansari has been aiming his comic insight at modern romance, but for Modern Romance, the audiobook, he decided he needed to take things to another level. He teamed up with NYU sociologist Eric Klinenberg and designed a massive research project, including hundreds of interviews and focus groups conducted everywhere from Tokyo to Buenos Aires to Wichita.', 'https://m.media-amazon.com/images/I/41iQeiOBkzL._SL500_.jpg');

COMMIT;

