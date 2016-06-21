-- phpMyAdmin SQL Dump
-- version 
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 21, 2016 at 07:11 PM
-- Server version: 5.6.29-percona-sure1-log
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stdesign_billsofhealth30`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `aboutus_id` int(11) NOT NULL,
  `aboutustype_id` int(11) DEFAULT NULL,
  `subsection` varchar(5000) DEFAULT NULL,
  `suborder` int(11) DEFAULT NULL,
  `aboutdisplay` int(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aboutustype`
--

CREATE TABLE `aboutustype` (
  `aboutustype_id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `orderoftype` int(11) NOT NULL,
  `typedisplay` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mid_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address_2` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `state` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `zipcode` int(50) DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `home_phone` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `cell_phone` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `uploadFile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` int(11) NOT NULL,
  `last_login_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_control`
--

CREATE TABLE `admin_control` (
  `admin_id` int(11) NOT NULL,
  `admin_panel` varchar(255) NOT NULL,
  `admin_link` varchar(255) NOT NULL,
  `admin_pic` varchar(255) NOT NULL,
  `visible` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `careers_id` int(11) NOT NULL,
  `careers_sub` varchar(255) NOT NULL,
  `careers_pg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cashpricing`
--

CREATE TABLE `cashpricing` (
  `cashpricing_id` int(11) NOT NULL,
  `low_cash` int(11) NOT NULL,
  `high_cash` int(11) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_prices`
--

CREATE TABLE `doctor_prices` (
  `doc_prices_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `Family` int(11) NOT NULL,
  `Cardiac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faq_id` int(11) NOT NULL,
  `faq_type_id` int(11) DEFAULT NULL,
  `question` varchar(5000) DEFAULT NULL,
  `answer` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `faqtype`
--

CREATE TABLE `faqtype` (
  `faq_type_id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT 'OTHER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `footer_menu`
--

CREATE TABLE `footer_menu` (
  `footer_id` int(11) NOT NULL,
  `foot_head` varchar(255) NOT NULL,
  `foot_link` varchar(255) NOT NULL,
  `foot_linkname` varchar(255) NOT NULL,
  `foot_visible` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fraud`
--

CREATE TABLE `fraud` (
  `fraud_id` int(11) NOT NULL,
  `fraud_sub` varchar(255) NOT NULL,
  `fraud_pg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `geoloc`
--

CREATE TABLE `geoloc` (
  `NPI` int(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `streetid` int(20) DEFAULT '0',
  `left_right` varchar(255) DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `healthquestions`
--

CREATE TABLE `healthquestions` (
  `healthq_id` int(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question1` varchar(255) NOT NULL,
  `answer1` varchar(255) NOT NULL,
  `question2` varchar(255) NOT NULL,
  `answer2` varchar(255) NOT NULL,
  `question3` varchar(255) NOT NULL,
  `answer3` varchar(255) NOT NULL,
  `question4` varchar(255) NOT NULL,
  `answer4` varchar(255) NOT NULL,
  `question5` varchar(255) NOT NULL,
  `answer5` varchar(255) NOT NULL,
  `question6` varchar(255) NOT NULL,
  `answer6` varchar(255) NOT NULL,
  `question7` varchar(255) NOT NULL,
  `answer7` varchar(255) NOT NULL,
  `question8` varchar(255) NOT NULL,
  `answer8` varchar(255) NOT NULL,
  `question9` varchar(255) NOT NULL,
  `answer9` varchar(255) NOT NULL,
  `question10` varchar(255) NOT NULL,
  `answer10` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `investor`
--

CREATE TABLE `investor` (
  `invest_id` int(11) NOT NULL,
  `invest_sub` varchar(255) NOT NULL,
  `invest_pg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `medical`
--

CREATE TABLE `medical` (
  `med_id` int(4) NOT NULL DEFAULT '0',
  `npi` int(10) DEFAULT NULL,
  `ind_pac_id` bigint(10) DEFAULT NULL,
  `ind_enrl_id` varchar(15) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `mid_name` varchar(15) DEFAULT NULL,
  `suffix` varchar(3) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `credential` varchar(3) DEFAULT NULL,
  `med_school` varchar(70) DEFAULT NULL,
  `grad_yr` varchar(4) DEFAULT NULL,
  `pri_spec` varchar(46) DEFAULT NULL,
  `sec_spec1` varchar(36) DEFAULT NULL,
  `sec_spec2` varchar(36) DEFAULT NULL,
  `sec_spec3` varchar(33) DEFAULT NULL,
  `sec_spec4` varchar(36) DEFAULT NULL,
  `sec_spec_all` varchar(103) DEFAULT NULL,
  `org_legal_name` varchar(70) DEFAULT NULL,
  `org_dba_name` varchar(53) DEFAULT NULL,
  `grp_prac_pac_id` varchar(10) DEFAULT NULL,
  `num_grp_prac_mem` int(4) DEFAULT NULL,
  `address_1` varchar(40) DEFAULT NULL,
  `address_2` varchar(50) DEFAULT NULL,
  `marker_add_2` varchar(1) DEFAULT NULL,
  `city` varchar(7) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` int(9) DEFAULT NULL,
  `hosp_aff_ccn_1` int(6) DEFAULT NULL,
  `hosp_aff_lbn_1` int(63) DEFAULT NULL,
  `hosp_aff_ccn_2` int(6) DEFAULT NULL,
  `hosp_aff_lbn_2` int(63) DEFAULT NULL,
  `hosp_aff_ccn_3` int(6) DEFAULT NULL,
  `hosp_aff_lbn_3` int(63) DEFAULT NULL,
  `hosp_aff_ccn_4` int(6) DEFAULT NULL,
  `hosp_aff_lbn_4` int(63) DEFAULT NULL,
  `hosp_aff_ccn_5` int(6) DEFAULT NULL,
  `hosp_aff_lbn_5` int(63) DEFAULT NULL,
  `medicare` varchar(1) DEFAULT NULL,
  `erx` varchar(1) DEFAULT NULL,
  `pqrs` varchar(1) DEFAULT NULL,
  `ehr` int(1) DEFAULT NULL,
  `pqrs_cert` varchar(1) DEFAULT NULL,
  `mil_hearts` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `med_spec`
--

CREATE TABLE `med_spec` (
  `medspec_id` int(7) NOT NULL,
  `special` varchar(38) DEFAULT NULL,
  `description` varchar(425) DEFAULT NULL,
  `display` int(11) NOT NULL DEFAULT '0',
  `scan1` varchar(255) DEFAULT NULL,
  `scan2` varchar(255) DEFAULT NULL,
  `scan3` varchar(255) DEFAULT NULL,
  `scan4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `npitable`
--

CREATE TABLE `npitable` (
  `NPI` varchar(255) NOT NULL DEFAULT '',
  `Entity_Type_Code` varchar(255) DEFAULT NULL,
  `Replacement_NPI` varchar(255) DEFAULT NULL,
  `EIN` varchar(255) DEFAULT NULL,
  `Legal_Business_Name` varchar(255) DEFAULT NULL,
  `Provider_Last_Name` varchar(255) DEFAULT NULL,
  `Provider_First_Name` varchar(255) DEFAULT NULL,
  `Provider_Middle_Name` varchar(255) DEFAULT NULL,
  `Provider_Name_Prefix` varchar(255) DEFAULT NULL,
  `Provider_Name_Suffix` varchar(255) DEFAULT NULL,
  `Provider_Credential` varchar(255) DEFAULT NULL,
  `Provider_Other_Organization_Name` varchar(255) DEFAULT NULL,
  `Provider_Other_Organization_Type_Code` varchar(255) DEFAULT NULL,
  `Provider_Other_Last_Name` varchar(255) DEFAULT NULL,
  `Provider_Other_First_Name` varchar(255) DEFAULT NULL,
  `Provider_Other_Middle_Name` varchar(255) DEFAULT NULL,
  `Provider_Other_Name_Prefix` varchar(255) DEFAULT NULL,
  `Provider_Other_Name_Suffix` varchar(255) DEFAULT NULL,
  `Provider_Other_Credential` varchar(255) DEFAULT NULL,
  `Provider_Other_Last_Name_Type_Code` varchar(255) DEFAULT NULL,
  `Provider_First_Line_Business_Mailing_Address` varchar(255) DEFAULT NULL,
  `Provider_Second_Line_Business_Mailing_Address` varchar(255) DEFAULT NULL,
  `Provider_Business_Mailing_Address_City_Name` varchar(255) DEFAULT NULL,
  `Provider_Business_Mailing_Address_State_Name` varchar(255) DEFAULT NULL,
  `Provider_Business_Mailing_Address_Postal_Code` varchar(255) DEFAULT NULL,
  `Provider_Business_Mailing_Address_Country_Code` varchar(255) DEFAULT NULL,
  `Provider_Business_Mailing_Address_Telephone_Number` varchar(255) DEFAULT NULL,
  `Provider_Business_Mailing_Address_Fax_Number` varchar(255) DEFAULT NULL,
  `Provider_First_Line_Business_Practice_Location_Address` varchar(255) DEFAULT NULL,
  `Provider_Second_Line_Business_Practice_Location_Address` varchar(255) DEFAULT NULL,
  `Provider_Business_Practice_Location_Address_City_Name` varchar(255) DEFAULT NULL,
  `Provider_Business_Practice_Location_Address_State_Name` varchar(255) DEFAULT NULL,
  `Provider_Business_Practice_Location_Address_Postal_Code` varchar(255) DEFAULT NULL,
  `Provider_Business_Practice_Location_Address_Country_Code` varchar(255) DEFAULT NULL,
  `Provider_Business_Practice_Location_Address_Telephone_Number` varchar(255) DEFAULT NULL,
  `Provider_Business_Practice_Location_Address_Fax_Number` varchar(255) DEFAULT NULL,
  `Provider_Enumeration_Date` varchar(255) DEFAULT NULL,
  `Last_Update_Date` varchar(15) DEFAULT NULL,
  `NPI_Deactivation_ReasonCode` varchar(15) DEFAULT NULL,
  `NPI_Deactivation_Date` varchar(15) DEFAULT NULL,
  `NPI_Reactivation_Date` varchar(15) DEFAULT NULL,
  `Provider_Gender_Code` varchar(15) DEFAULT NULL,
  `Authorized_Official_Last_Name` varchar(255) DEFAULT NULL,
  `Authorized_Official_First_Name` varchar(255) DEFAULT NULL,
  `Authorized_Official_Middle_Name` varchar(255) DEFAULT NULL,
  `Authorized_Official_Title_Position` varchar(255) DEFAULT NULL,
  `Authorized_Official_Telephone_Number` varchar(255) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Code_1` varchar(10) DEFAULT NULL,
  `Provider_License_Number_1` varchar(10) DEFAULT NULL,
  `Provider_License_Number_State_Code_1` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Primary_Taxonomy_Switch_1` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Code_2` varchar(10) DEFAULT NULL,
  `Provider_License_Number_2` varchar(10) DEFAULT NULL,
  `Provider_License_Number_State_Code_2` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Primary_Taxonomy_Switch_2` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Code_3` varchar(10) DEFAULT NULL,
  `Provider_License_Number_3` varchar(10) DEFAULT NULL,
  `Provider_License_Number_State_Code_3` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Primary_Taxonomy_Switch_3` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Code_4` varchar(10) DEFAULT NULL,
  `Provider_License_Number_4` varchar(10) DEFAULT NULL,
  `Provider_License_Number_State_Code_4` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Primary_Taxonomy_Switch_4` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Code_5` varchar(10) DEFAULT NULL,
  `Provider_License_Number_5` varchar(10) DEFAULT NULL,
  `Provider_License_Number_State_Code_5` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Primary_Taxonomy_Switch_5` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Code_6` varchar(10) DEFAULT NULL,
  `Provider_License_Number_6` varchar(10) DEFAULT NULL,
  `Provider_License_Number_State_Code_6` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Primary_Taxonomy_Switch_6` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Code_7` varchar(10) DEFAULT NULL,
  `Provider_License_Number_7` varchar(10) DEFAULT NULL,
  `Provider_License_Number_State_Code_7` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Primary_Taxonomy_Switch_7` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Code_8` varchar(10) DEFAULT NULL,
  `Provider_License_Number_8` varchar(10) DEFAULT NULL,
  `Provider_License_Number_State_Code_8` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Primary_Taxonomy_Switch_8` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Code_9` varchar(10) DEFAULT NULL,
  `Provider_License_Number_9` varchar(10) DEFAULT NULL,
  `Provider_License_Number_State_Code_9` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Primary_Taxonomy_Switch_9` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Code_10` varchar(10) DEFAULT NULL,
  `Provider_License_Number_10` varchar(10) DEFAULT NULL,
  `Provider_License_Number_State_Code_10` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Primary_Taxonomy_Switch_10` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Code_11` varchar(10) DEFAULT NULL,
  `Provider_License_Number_11` varchar(10) DEFAULT NULL,
  `Provider_License_Number_State_Code_11` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Primary_Taxonomy_Switch_11` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Code_12` varchar(10) DEFAULT NULL,
  `Provider_License_Number_12` varchar(10) DEFAULT NULL,
  `Provider_License_Number_State_Code_12` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Primary_Taxonomy_Switch_12` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Code_13` varchar(10) DEFAULT NULL,
  `Provider_License_Number_13` varchar(10) DEFAULT NULL,
  `Provider_License_Number_State_Code_13` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Primary_Taxonomy_Switch_13` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Code_14` varchar(10) DEFAULT NULL,
  `Provider_License_Number_14` varchar(10) DEFAULT NULL,
  `Provider_License_Number_State_Code_14` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Primary_Taxonomy_Switch_14` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Code_15` varchar(10) DEFAULT NULL,
  `Provider_License_Number_15` varchar(10) DEFAULT NULL,
  `Provider_License_Number_State_Code_15` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Primary_Taxonomy_Switch_15` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_1` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_1` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_1` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_1` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_2` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_2` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_2` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_2` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_3` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_3` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_3` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_3` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_4` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_4` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_4` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_4` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_5` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_5` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_5` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_5` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_6` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_6` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_6` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_6` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_7` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_7` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_7` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_7` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_8` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_8` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_8` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_8` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_9` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_9` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_9` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_9` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_10` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_10` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_10` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_10` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_11` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_11` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_11` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_11` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_12` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_12` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_12` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_12` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_13` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_13` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_13` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_13` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_14` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_14` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_14` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_14` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_15` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_15` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_15` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_15` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_16` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_16` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_16` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_16` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_17` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_17` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_17` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_17` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_18` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_18` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_18` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_18` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_19` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_19` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_19` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_19` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_20` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_20` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_20` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_20` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_21` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_21` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_21` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_21` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_22` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_22` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_22` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_22` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_23` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_23` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_23` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_23` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_24` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_24` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_24` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_24` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_25` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_25` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_25` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_25` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_26` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_26` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_26` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_26` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_27` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_27` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_27` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_27` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_28` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_28` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_28` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_28` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_29` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_29` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_29` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_29` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_30` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_30` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_30` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_30` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_31` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_31` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_31` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_31` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_32` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_32` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_32` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_32` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_33` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_33` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_33` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_33` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_34` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_34` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_34` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_34` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_35` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_35` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_35` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_35` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_36` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_36` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_36` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_36` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_37` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_37` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_37` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_37` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_38` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_38` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_38` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_38` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_39` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_39` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_39` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_39` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_40` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_40` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_40` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_40` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_41` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_41` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_41` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_41` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_42` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_42` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_42` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_42` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_43` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_43` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_43` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_43` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_44` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_44` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_44` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_44` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_45` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_45` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_45` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_45` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_46` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_46` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_46` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_46` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_47` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_47` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_47` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_47` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_48` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_48` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_48` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_48` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_49` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_49` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_49` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_49` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_50` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Type_Code_50` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_State_50` varchar(10) DEFAULT NULL,
  `Other_Provider_Identifier_Issuer_50` varchar(10) DEFAULT NULL,
  `Is_Sole_Proprietor` varchar(10) DEFAULT NULL,
  `Is_Organization_Subpart` varchar(10) DEFAULT NULL,
  `Parent_Organization_LBN` varchar(10) DEFAULT NULL,
  `Parent_Organization_TIN` varchar(10) DEFAULT NULL,
  `Authorized_Official_Name_Prefix` varchar(10) DEFAULT NULL,
  `Authorized_Official_Name_Suffix` varchar(10) DEFAULT NULL,
  `Authorized_Official_Credential` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Group_1` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Group_2` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Group_3` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Group_4` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Group_5` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Group_6` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Group_7` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Group_8` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Group_9` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Group_10` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Group_11` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Group_12` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Group_13` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Group_14` varchar(10) DEFAULT NULL,
  `Healthcare_Provider_Taxonomy_Group_15` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `press`
--

CREATE TABLE `press` (
  `press_id` int(11) NOT NULL,
  `press_sub` varchar(255) NOT NULL,
  `press_pg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `privacy`
--

CREATE TABLE `privacy` (
  `privacy_id` int(11) NOT NULL,
  `privacy_sub` varchar(255) NOT NULL,
  `privacy_pg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `procedures`
--

CREATE TABLE `procedures` (
  `procedures_id` int(11) NOT NULL,
  `procedure_type` varchar(255) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `special_1` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `uploadFile` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` int(11) NOT NULL,
  `last_login_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `provider_control`
--

CREATE TABLE `provider_control` (
  `pcontrol_id` int(11) NOT NULL,
  `prov_id` int(11) NOT NULL,
  `login` varchar(255) DEFAULT NULL,
  `login_pic` varchar(255) NOT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `business` varchar(255) DEFAULT NULL,
  `business_pic` varchar(255) NOT NULL,
  `prices` varchar(255) DEFAULT NULL,
  `prices_pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `refund`
--

CREATE TABLE `refund` (
  `refund_id` int(11) NOT NULL,
  `refund_sub` varchar(255) NOT NULL,
  `refund_pg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `sales_sub` varchar(255) NOT NULL,
  `sales_pg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `state_int` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `submenu_id` int(11) NOT NULL,
  `sub_name` varchar(255) DEFAULT NULL,
  `sub_link` varchar(255) DEFAULT NULL,
  `sub_pic` varchar(255) DEFAULT NULL,
  `sub_pic_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `taxonomy`
--

CREATE TABLE `taxonomy` (
  `tax_id` int(11) NOT NULL,
  `tax_code` varchar(50) NOT NULL,
  `tax_group` varchar(255) NOT NULL,
  `tax_class` varchar(255) NOT NULL,
  `tax_spec` varchar(255) NOT NULL,
  `tax_display` int(3) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `taxonomyold`
--

CREATE TABLE `taxonomyold` (
  `Tax_Id` int(3) NOT NULL DEFAULT '0',
  `Medicare_Specialty_Code` varchar(2) DEFAULT NULL,
  `Medicare_Provider_Supplier_Type` varchar(74) DEFAULT NULL,
  `Provider_Taxonomy_Code` varchar(11) DEFAULT NULL,
  `Provider_Taxonomy_Type` varchar(77) DEFAULT NULL,
  `Provider_Taxonomy_Class` varchar(82) DEFAULT NULL,
  `Provider_Taxonomy_Special` varchar(79) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `terms_id` int(11) NOT NULL,
  `terms_sub` varchar(255) NOT NULL,
  `terms_pg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mid_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_1` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address_2` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `state` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `zipcode` int(50) DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `home_phone` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `cell_phone` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `uploadFile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` int(11) NOT NULL,
  `last_login_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `where_hurts`
--

CREATE TABLE `where_hurts` (
  `hurts_id` int(11) NOT NULL,
  `hurts_type` varchar(255) NOT NULL,
  `hurts_link` varchar(255) NOT NULL DEFAULT 'where-hurts/results',
  `hurts_pic` varchar(255) NOT NULL,
  `display` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`aboutus_id`),
  ADD UNIQUE KEY `aboutus_id_2` (`aboutus_id`),
  ADD KEY `aboutus_id` (`aboutus_id`),
  ADD KEY `aboutus_id_3` (`aboutus_id`),
  ADD KEY `aboutustype_id` (`aboutustype_id`);

--
-- Indexes for table `aboutustype`
--
ALTER TABLE `aboutustype`
  ADD PRIMARY KEY (`aboutustype_id`),
  ADD UNIQUE KEY `aboutus_id_2` (`aboutustype_id`),
  ADD KEY `aboutus_id` (`aboutustype_id`),
  ADD KEY `aboutus_id_3` (`aboutustype_id`),
  ADD KEY `aboutustype_id` (`aboutustype_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `admin_control`
--
ALTER TABLE `admin_control`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`careers_id`);

--
-- Indexes for table `cashpricing`
--
ALTER TABLE `cashpricing`
  ADD PRIMARY KEY (`cashpricing_id`);

--
-- Indexes for table `doctor_prices`
--
ALTER TABLE `doctor_prices`
  ADD PRIMARY KEY (`doc_prices_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faq_id`),
  ADD KEY `faq_type_id` (`faq_type_id`);

--
-- Indexes for table `faqtype`
--
ALTER TABLE `faqtype`
  ADD PRIMARY KEY (`faq_type_id`);

--
-- Indexes for table `footer_menu`
--
ALTER TABLE `footer_menu`
  ADD PRIMARY KEY (`footer_id`);

--
-- Indexes for table `fraud`
--
ALTER TABLE `fraud`
  ADD PRIMARY KEY (`fraud_id`);

--
-- Indexes for table `geoloc`
--
ALTER TABLE `geoloc`
  ADD PRIMARY KEY (`NPI`),
  ADD KEY `med_id` (`NPI`),
  ADD KEY `geoloc_id` (`NPI`);

--
-- Indexes for table `healthquestions`
--
ALTER TABLE `healthquestions`
  ADD PRIMARY KEY (`healthq_id`);

--
-- Indexes for table `investor`
--
ALTER TABLE `investor`
  ADD PRIMARY KEY (`invest_id`);

--
-- Indexes for table `medical`
--
ALTER TABLE `medical`
  ADD PRIMARY KEY (`med_id`);

--
-- Indexes for table `med_spec`
--
ALTER TABLE `med_spec`
  ADD PRIMARY KEY (`medspec_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `npitable`
--
ALTER TABLE `npitable`
  ADD PRIMARY KEY (`NPI`);

--
-- Indexes for table `press`
--
ALTER TABLE `press`
  ADD PRIMARY KEY (`press_id`);

--
-- Indexes for table `privacy`
--
ALTER TABLE `privacy`
  ADD PRIMARY KEY (`privacy_id`);

--
-- Indexes for table `procedures`
--
ALTER TABLE `procedures`
  ADD PRIMARY KEY (`procedures_id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_control`
--
ALTER TABLE `provider_control`
  ADD PRIMARY KEY (`pcontrol_id`);

--
-- Indexes for table `refund`
--
ALTER TABLE `refund`
  ADD PRIMARY KEY (`refund_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`submenu_id`);

--
-- Indexes for table `taxonomy`
--
ALTER TABLE `taxonomy`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `taxonomyold`
--
ALTER TABLE `taxonomyold`
  ADD PRIMARY KEY (`Tax_Id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`terms_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `where_hurts`
--
ALTER TABLE `where_hurts`
  ADD PRIMARY KEY (`hurts_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `aboutus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `aboutustype`
--
ALTER TABLE `aboutustype`
  MODIFY `aboutustype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `admin_control`
--
ALTER TABLE `admin_control`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `careers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cashpricing`
--
ALTER TABLE `cashpricing`
  MODIFY `cashpricing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `doctor_prices`
--
ALTER TABLE `doctor_prices`
  MODIFY `doc_prices_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `faqtype`
--
ALTER TABLE `faqtype`
  MODIFY `faq_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `footer_menu`
--
ALTER TABLE `footer_menu`
  MODIFY `footer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `fraud`
--
ALTER TABLE `fraud`
  MODIFY `fraud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `healthquestions`
--
ALTER TABLE `healthquestions`
  MODIFY `healthq_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `investor`
--
ALTER TABLE `investor`
  MODIFY `invest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `med_spec`
--
ALTER TABLE `med_spec`
  MODIFY `medspec_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `press`
--
ALTER TABLE `press`
  MODIFY `press_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `privacy`
--
ALTER TABLE `privacy`
  MODIFY `privacy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `procedures`
--
ALTER TABLE `procedures`
  MODIFY `procedures_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;
--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `provider_control`
--
ALTER TABLE `provider_control`
  MODIFY `pcontrol_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `refund`
--
ALTER TABLE `refund`
  MODIFY `refund_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `submenu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `taxonomy`
--
ALTER TABLE `taxonomy`
  MODIFY `tax_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=846;
--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `terms_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `where_hurts`
--
ALTER TABLE `where_hurts`
  MODIFY `hurts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD CONSTRAINT `aboutus_ibfk_1` FOREIGN KEY (`aboutustype_id`) REFERENCES `aboutustype` (`aboutustype_id`);

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faq`
--
ALTER TABLE `faq`
  ADD CONSTRAINT `faq_ibfk_1` FOREIGN KEY (`faq_type_id`) REFERENCES `faqtype` (`faq_type_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
