CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `unique` (`title`);

ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `explaination` text,
  `answer` text NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `example` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


CREATE TABLE IF NOT EXISTS `example` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `explaination` text NOT NULL,
  `refrence` varchar(255) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `example`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `example`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;