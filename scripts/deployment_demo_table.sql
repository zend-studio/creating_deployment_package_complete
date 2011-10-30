-- phpMyAdmin SQL Dump
-- version 2.11.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 13, 2010 at 11:23 PM
-- Server version: 5.0.41
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Table structure for table `TABLE_PLACEHOLDER`
--

DROP TABLE IF EXISTS `TABLE_PLACEHOLDER`;

CREATE TABLE `TABLE_PLACEHOLDER` (
  `id` int(11) NOT NULL auto_increment,
  `firstname` varchar(50) default NULL,
  `lastname` varchar(50) default NULL,
  `title` varchar(50) default NULL,
  `departmentid` int(11) default NULL,
  `officephone` varchar(20) default NULL,
  `cellphone` varchar(20) default NULL,
  `email` varchar(50) default NULL,
  `street` varchar(50) default NULL,
  `city` varchar(20) default NULL,
  `state` char(2) default NULL,
  `zipcode` varchar(10) default NULL,
  `office` varchar(20) default NULL,
  `photofile` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
);

--
-- Dumping data for table `employee`
--

INSERT INTO `TABLE_PLACEHOLDER` VALUES(1, 'Bob', 'Smith', 'User Research Specialist', 1, '(415)555-1111', '(415)444-2222', 'bsmith@adobe.com', '601 Townsend St', 'San Francisco', 'CA', '94103', 'Cube 1234', 'bsmith.jpg');
INSERT INTO `TABLE_PLACEHOLDER` VALUES(2, 'John', 'Doe', 'Senior Computer Scientist', 2, '(408)555-2222', '(408)444-1111', 'jdoe@adobe.com', '345 Park Ave', 'San Jose', 'CA', '95110', 'E12-123', 'jdoe.jpg');
INSERT INTO `TABLE_PLACEHOLDER` VALUES(3, 'Elizabeth', 'Roe', 'Senior Experience Designer', 1, '(408)324-6432', '(408)234-3453', 'eroe@adobe.com', '345 Park Ave', 'San Jose', 'CA', '95110', 'E11-123', 'eroe.jpg');
INSERT INTO `TABLE_PLACEHOLDER` VALUES(4, 'Jane', 'Riley', 'Quality Engineer', 2, '(415)123-1234', '(415)123-4567', 'jriley@adobe.com', '601 Townsend St', 'San Francisco', 'CA', '94103', 'Cube 4567', 'jriley.jpg');
INSERT INTO `TABLE_PLACEHOLDER` VALUES(5, 'Joe', 'Johnson', 'Computer Scientist', 3, 'None', '(415)324-9870', 'jjohnson@adobe.com', 'Unseated', 'San Francisco', 'CA', '94103', 'Unseated', 'jjohnson.jpg');
INSERT INTO `TABLE_PLACEHOLDER` VALUES(6, 'Bruce', 'Andrews', 'Chief Executive Officer', 4, '(408)234-1253', '(408)324-3464', 'bandrews@adobe.com', '345 Park Ave', 'San Jose', 'CA', '95110', 'W18-502', 'bandrews.jpg');
INSERT INTO `TABLE_PLACEHOLDER` VALUES(7, 'David', 'Jackson', 'Chief Technology Officer', 5, '(408)321-3332', '(408)893-9808', 'djackson@adobe.com', '345 Park Ave', 'San Jose', 'CA', '95110', 'W6-211', 'djackson.jpg');
INSERT INTO `TABLE_PLACEHOLDER` VALUES(8, 'Albert', 'Jones', 'Principal Scientist', 5, '(408)234-5234', '(408)342-5345', 'ajones@adobe.com', '345 Park Ave', 'San Jose', 'CA', '95110', 'W6-321', 'ajones.jpg');
INSERT INTO `TABLE_PLACEHOLDER` VALUES(9, 'Terry', 'Eastman', 'Food Services Manager', 6, 'None', 'None', 'teastman@adobe.com', '345 Park Ave', 'San Jose', 'CA', '95110', 'Unseated', 'teastman.jpg');
INSERT INTO `TABLE_PLACEHOLDER` VALUES(10, 'Jane', 'Smith', 'Principal Scientist', 2, '(408)125-6534', '(408)758-4512', 'jasmith@adobe.com', '345 Park Ave', 'San Jose', 'CA', '95110', 'W3-459', 'jasmith.jpg');
INSERT INTO `TABLE_PLACEHOLDER` VALUES(11, 'Samantha', 'Smith', 'Product Marketing Manager', 7, '(408)155-5893', '(408)452-5555', 'ssmith@adobe.com', '345 Park Ave', 'San Jose', 'CA', '95110', 'E12-234', 'ssmith.jpg');
INSERT INTO `TABLE_PLACEHOLDER` VALUES(12, 'Jane', 'Doe', 'Human Resources Manager', 7, '(408)485-9856', '(408)451-4774', 'jadoe@adobe.com', '345 Park Ave', 'San Jose', 'CA', '95110', 'E5-321', 'jadoe.jpg');
