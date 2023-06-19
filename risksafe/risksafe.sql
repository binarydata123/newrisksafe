-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 19, 2023 at 03:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `risksafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `aml_cat`
--

CREATE TABLE `aml_cat` (
  `id` int(11) NOT NULL,
  `ri_type` int(11) DEFAULT NULL,
  `aml_cat_name` varchar(100) DEFAULT NULL,
  `aml_sub_cat_descript` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `aml_cat`
--

INSERT INTO `aml_cat` (`id`, `ri_type`, `aml_cat_name`, `aml_sub_cat_descript`) VALUES
(1, 1, 'Formation/Founding team', NULL),
(2, 1, 'Market', NULL),
(3, 1, 'Legal Risks', NULL),
(4, 1, 'Privacy and Information Risks', NULL),
(5, 1, 'Economic', NULL),
(6, 1, 'Strategic', NULL),
(7, 1, 'Political', NULL),
(8, 1, 'People', NULL),
(9, 1, 'Process', NULL),
(10, 1, 'Tehcnology', NULL),
(11, 1, 'Financial', NULL),
(12, 1, 'Health and Safety', NULL),
(13, 1, 'Environmental', NULL),
(14, 1, 'Reputation', NULL),
(15, 1, 'Equipment', NULL),
(16, 1, 'Governance & Stakeholder Management', NULL),
(17, 2, 'Manual Handling/Ergonomics', NULL),
(18, 2, 'Energy Systems', NULL),
(19, 2, 'Machinery, Plant and equipment', NULL),
(20, 2, 'Chemicals', NULL),
(21, 2, 'Facilities/Built Environment', NULL),
(22, 2, 'Biological', NULL),
(23, 2, 'People hazards', NULL),
(24, 2, 'Emergency Incidents', NULL),
(25, 2, 'Food & Drink', NULL),
(26, 2, 'Physical Hazard Identification', NULL),
(27, 3, 'Internal Fraud', NULL),
(28, 3, 'External Fraud', NULL),
(29, 3, 'Clients, Products ad Business Practices', NULL),
(30, 3, 'Damage to Physical Assets', NULL),
(31, 3, 'Business Disruption', NULL),
(32, 3, 'Execution, Delivery and Process Mangement', NULL),
(33, 4, 'Financial', NULL),
(34, 4, 'Physical', NULL),
(35, 4, 'Legal Risks', NULL),
(36, 4, 'Technology, Privacy and Information Risks', NULL),
(37, 4, 'Volunteers & Members', NULL),
(38, 4, 'Political', NULL),
(39, 4, 'People', NULL),
(40, 4, 'Process', NULL),
(41, 4, 'Health and Safety', NULL),
(42, 4, 'Environmental', NULL),
(43, 4, 'External Risks', NULL),
(44, 4, 'Governance & Stakeholder Management', NULL),
(45, 2, 'Environment', NULL),
(46, 3, 'Employment Practices and Workplace Safety', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aml_details`
--

CREATE TABLE `aml_details` (
  `iddetail` int(11) NOT NULL,
  `as_assessment` int(11) DEFAULT NULL,
  `aml_cat` int(11) DEFAULT NULL,
  `aml_subcat` int(11) DEFAULT NULL,
  `aml_descript` text DEFAULT NULL,
  `as_like` int(11) DEFAULT NULL,
  `as_consequence` int(11) DEFAULT NULL,
  `as_rating` int(11) DEFAULT NULL,
  `as_effect` text DEFAULT NULL,
  `as_action` int(11) DEFAULT NULL,
  `as_duedate` date DEFAULT NULL,
  `as_owner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `aml_details`
--

INSERT INTO `aml_details` (`iddetail`, `as_assessment`, `aml_cat`, `aml_subcat`, `aml_descript`, `as_like`, `as_consequence`, `as_rating`, `as_effect`, `as_action`, `as_duedate`, `as_owner`) VALUES
(2, 7, 35, 387, 'Obcaecati doloremque', 2, 1, 2, 'Incididunt placeat ', 1, '2023-06-19', 'Ut commodo ut delectus voluptate veritatis rerum sit quam tempore dolores culpa incidunt exerci'),
(3, 8, 18, 320, 'Repellendus Digniss', 1, 1, 2, 'Accusantium iste eiu', 1, '2023-06-19', 'Non soluta excepturi earum vitae itaque labore velit');

-- --------------------------------------------------------

--
-- Table structure for table `aml_subcat`
--

CREATE TABLE `aml_subcat` (
  `idcat` int(11) NOT NULL,
  `aml_cat` int(11) DEFAULT NULL,
  `aml_sub_name` varchar(255) DEFAULT NULL,
  `aml_sub_cat_descript` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `aml_subcat`
--

INSERT INTO `aml_subcat` (`idcat`, `aml_cat`, `aml_sub_name`, `aml_sub_cat_descript`) VALUES
(173, 1, 'Incorporation - equity allocation,  vesting, share buy back', NULL),
(174, 1, 'Fund Raising - raising money, dilution, personal expenses & company expenses ', NULL),
(175, 1, 'IP Agreement', NULL),
(176, 1, 'Hiring - founder employment, Hiring, Termination ', NULL),
(177, 1, 'Founder skills & experience ', NULL),
(178, 2, 'Product market fit', NULL),
(179, 2, 'Customer segments ', NULL),
(180, 2, 'Barriers to entry ', NULL),
(181, 2, 'Market adoption', NULL),
(182, 2, 'Exit strategy ', NULL),
(183, 2, 'Customer demand', NULL),
(184, 2, 'Increased competition', NULL),
(185, 2, 'Adoption of new Technology or Service', NULL),
(186, 2, 'New Business Opportunity', NULL),
(187, 3, 'Non-compliance with regulations ', NULL),
(188, 3, 'Insurance coverage', NULL),
(189, 3, 'Workers Compensation', NULL),
(190, 3, 'Policies, procedures or expectations, which may be set by contracts, customers', NULL),
(191, 3, 'Negligence', NULL),
(192, 3, 'Codes of Practice', NULL),
(193, 3, 'Lack of licence or permits', NULL),
(194, 3, 'Police checks and background checks for employees and contractors', NULL),
(195, 4, 'Non-compliance with state and national privacy laws on recording, storing and disposing of customer information', NULL),
(196, 4, 'Records Management', NULL),
(197, 4, 'Cyber Security breaches due to Weak passwords that are used repeatedly, Phishing, System vulnerabilities', NULL),
(198, 5, 'Financial Markets', NULL),
(199, 5, 'Unemployment', NULL),
(200, 5, 'Mergers and Acquistion', NULL),
(201, 5, 'Competition', NULL),
(202, 6, 'Financial Viability', NULL),
(203, 6, 'Lack of Sales & Marketing', NULL),
(204, 6, 'Planning & Scoping', NULL),
(205, 6, 'Qualiy of execution', NULL),
(206, 6, 'Resourcing', NULL),
(207, 6, 'Customer interaction and after-sales service', NULL),
(208, 6, 'Service level agreements', NULL),
(209, 6, 'Non existent contracts', NULL),
(210, 7, 'Government/Policy changes', NULL),
(211, 7, 'Laws & Regulations', NULL),
(212, 8, 'Employee capability', NULL),
(213, 8, 'Harrassment & Unfair Dismissal', NULL),
(214, 8, 'Fraudulent acivity (Internal & External)', NULL),
(215, 8, 'Staff Absence ', NULL),
(216, 8, 'Illness or retirement of key staff', NULL),
(217, 8, 'Sucession planning', NULL),
(218, 9, 'Capacity', NULL),
(219, 9, 'Design', NULL),
(220, 9, 'Execution', NULL),
(221, 9, 'Suppliers & Dependancies', NULL),
(222, 10, 'Data Integrity', NULL),
(223, 10, 'Data & systems availabiliy', NULL),
(224, 10, 'Development & Deployment', NULL),
(225, 10, 'Maintenance', NULL),
(226, 10, 'Availability of assets', NULL),
(227, 10, 'Capability of assets', NULL),
(228, 10, 'Access to capital', NULL),
(229, 10, 'Complexity', NULL),
(230, 11, 'Cash flow & budgetary requirements', NULL),
(231, 11, 'Ad hoc income', NULL),
(232, 11, 'Tax  & GST obligations', NULL),
(233, 11, 'Creditor and debtor management', NULL),
(234, 11, 'Remuneration', NULL),
(235, 11, 'Customers defaulting on payments', NULL),
(236, 11, 'Depreciation of assets', NULL),
(237, 11, 'Accounting and Financial Management ', NULL),
(238, 12, 'Individual safety', NULL),
(239, 12, 'Workplace safety', NULL),
(240, 12, 'Public safety', NULL),
(241, 12, 'Dangerous objects & Substances', NULL),
(242, 12, 'First Aid', NULL),
(243, 12, 'Safety and appropriateness of products or services delivered', NULL),
(244, 13, 'Loss or damage due to accidents ', NULL),
(245, 13, 'Natural disasters such as fire, flood, hail or storms', NULL),
(246, 13, 'Property damage caused by burst water pipes', NULL),
(247, 13, 'Power failure', NULL),
(248, 13, 'Security of the business premises, assets and people', NULL),
(249, 14, 'Conduct of the entity', NULL),
(250, 14, 'Complaints Management', NULL),
(251, 14, 'Quality and appropriateness of service ', NULL),
(252, 14, 'Customer interaction and ', NULL),
(253, 14, 'Conduct of employees or other individuals ', NULL),
(254, 15, 'Equipment used for operations ', NULL),
(255, 15, 'Maintenance', NULL),
(256, 15, 'Depreciation', NULL),
(257, 15, 'Upgrade', NULL),
(258, 16, 'Inappropriate organisational structure ', NULL),
(259, 16, 'Management of external stakeholders', NULL),
(260, 16, 'Identifying, establishing and maintaining appropriate relationships', NULL),
(316, 17, 'Manual tasks', NULL),
(317, 17, 'Gravity', NULL),
(318, 17, 'Restricted Space', NULL),
(319, 17, 'Other', NULL),
(320, 18, 'Electricity', NULL),
(321, 18, 'LPG Gas', NULL),
(322, 18, 'Pressurised containsers', NULL),
(323, 18, 'Other', NULL),
(324, 19, 'Machinery (fixed)', NULL),
(325, 19, 'Machinery (portable)', NULL),
(326, 19, 'Hand Tools', NULL),
(327, 19, 'Vehicles/ trailers', NULL),
(328, 19, 'Other', NULL),
(329, 20, 'Non Hazardous Chemicals', NULL),
(330, 20, 'Hazardous Chemical', NULL),
(331, 20, 'Radiation', NULL),
(332, 20, 'Fumes, Vapours or Dust', NULL),
(333, 20, 'Other', NULL),
(334, 21, 'Buildings and fixtures', NULL),
(335, 21, 'Driveways and Paths', NULL),
(336, 21, 'Workshops and work  rooms', NULL),
(337, 21, 'Playground equipment', NULL),
(338, 21, 'Furniture', NULL),
(339, 21, 'Swimming Pool', NULL),
(340, 21, 'Slips and Trips', NULL),
(341, 21, 'Other', NULL),
(342, 45, 'Noise', NULL),
(343, 45, 'Sun Exposure', NULL),
(344, 45, 'Water', NULL),
(345, 45, 'Animals/Insects', NULL),
(346, 45, 'Storms/weather', NULL),
(347, 45, 'Temparature', NULL),
(348, 45, 'Inadequate Light', NULL),
(349, 45, 'Other', NULL),
(350, 22, 'Bodily Fluid', NULL),
(351, 22, 'Viruses/Disease', NULL),
(352, 22, 'Blood/Cuts ', NULL),
(353, 22, 'Other', NULL),
(354, 23, 'Apprentices and students', NULL),
(355, 23, 'Staff', NULL),
(356, 23, 'Parents/Others', NULL),
(357, 23, 'Physical', NULL),
(358, 23, 'Physchological/stress', NULL),
(359, 23, 'Other', NULL),
(360, 24, 'Fire', NULL),
(361, 24, 'Asbestos', NULL),
(362, 25, 'Contamination or deteriarations', NULL),
(363, 25, 'Cleanliness', NULL),
(364, 25, 'Regulatory requirements', NULL),
(365, 25, 'Labelling & Allergies', NULL),
(366, 25, 'Alcohol & Intoxication', NULL),
(367, 26, 'Being Cut or Stabbed', NULL),
(368, 26, 'Shearing or friction', NULL),
(369, 26, 'Vibration', NULL),
(370, 26, 'Struck, Crushed or Entangled', NULL),
(371, 33, 'Budgeting', NULL),
(372, 33, 'Sponsorship', NULL),
(373, 33, 'Lack of financial viability', NULL),
(374, 33, 'Discretion limits on expenses', NULL),
(375, 33, 'Lack of Audits', NULL),
(376, 33, 'Fraud (Internal & External)', NULL),
(377, 33, 'Inaccurate and/or insufficient financial information ', NULL),
(378, 33, 'Tax management ', NULL),
(379, 33, 'Debtor & Creditor management', NULL),
(380, 34, 'Animals', NULL),
(381, 34, 'Festivals/Events', NULL),
(382, 34, 'Fire', NULL),
(383, 34, 'Food & Drink', NULL),
(384, 34, 'Machines', NULL),
(385, 34, 'Vehicles', NULL),
(386, 34, 'Damage to property', NULL),
(387, 35, 'Acting in breach of trust ', NULL),
(388, 35, 'Incorporation', NULL),
(389, 35, 'Non-compliance with regulations (such as changes to workplace health and safety standards)', NULL),
(390, 35, 'Insurance coverage', NULL),
(391, 35, 'Workers Compensation', NULL),
(392, 35, 'Policies, procedures or expectations, which may be set by contracts, customers', NULL),
(393, 35, 'Negligence', NULL),
(394, 35, 'Codes of Practice', NULL),
(395, 35, 'Lack of licence or permits', NULL),
(396, 36, 'Non-compliance with state and national privacy laws on recording, storing and disposing of customer information.', NULL),
(397, 36, 'Availability of Systems ', NULL),
(398, 36, 'Integrity of systems', NULL),
(399, 36, 'Records Management', NULL),
(400, 36, 'Cyber Security breaches due to; Weak passwords that are used repeatedly, Phishing, System vulnerabilities', NULL),
(401, 37, 'Supervision of Volunteers', NULL),
(402, 37, 'Code of Conduct', NULL),
(403, 37, 'Training', NULL),
(404, 37, 'Member protection policy', NULL),
(405, 37, 'Police checks and background checks for employees and contractors', NULL),
(406, 38, 'Government/Policy changes', NULL),
(407, 38, 'Laws & Regulations', NULL),
(408, 39, 'Employee capability', NULL),
(409, 39, 'Poor staff recruitment and training ', NULL),
(410, 39, 'Lack of beneficiary welfare or safety ', NULL),
(411, 39, 'Harrassment & Unfair Dismissal', NULL),
(412, 39, 'Staff Absence ', NULL),
(413, 39, 'Illness of key staff', NULL),
(414, 39, 'Sucession planning', NULL),
(415, 40, 'Capacity planning ', NULL),
(416, 40, 'Design', NULL),
(417, 40, 'Execution', NULL),
(418, 40, 'Suppliers & Dependancies', NULL),
(419, 41, 'Individual safety ', NULL),
(420, 41, 'Workplace safety', NULL),
(421, 41, 'Public safety', NULL),
(422, 41, 'Dangerous Objects & Substances', NULL),
(423, 41, 'First Aid', NULL),
(424, 41, 'Safety and appropriateness of products or services delivered', NULL),
(425, 42, 'Loss or damage due to accidents ', NULL),
(426, 42, 'Natural disasters such as fire, flood, hail or storms', NULL),
(427, 42, 'Power failure', NULL),
(428, 42, 'Security of the business premises, assets and people', NULL),
(429, 43, 'Demographic changes such as an increase in the size of beneficiary group ', NULL),
(430, 43, 'Poor public perception and reputation', NULL),
(431, 43, 'Viability of product or service associated ', NULL),
(432, 43, 'Conduct of employees or members', NULL),
(433, 44, 'Management of external stakeholders', NULL),
(434, 44, 'Identifying, establishing and maintaining an appropriate relationship', NULL),
(435, 44, 'Inappropriate organisational structure ', NULL),
(436, 44, 'Trustee body lacks relevant skills or commitment', NULL),
(437, 44, 'Conflicts of interest', NULL),
(438, 27, 'Unauthorised activity - Rogue trading involving staff', NULL),
(439, 27, 'Theft & Fraud - Inernal Fraud invovling staff', NULL),
(440, 27, 'Theft & Fraud - Intentional theft and malicious damage, destruction or sabotage of assets involving ANZ staff', NULL),
(441, 27, 'Theft & Fraud - Unethical or corrupt activities (smullging, tax evasion, bribes, kick backs)', NULL),
(442, 27, 'Theft & Fraud - Insider trading', NULL),
(443, 28, 'Theft & Fraud - Theft or robbery by an external party', NULL),
(444, 28, 'Theft & Fraud - Fraud by an external party', NULL),
(445, 28, 'Systems security - Damage to systems due to external hacking or malware', NULL),
(446, 28, 'Systems security - Theft and or unauthorised access to information held within systems by an external party', NULL),
(447, 46, 'Employee relations - Inappropriate employee terminatin, redundancy and or retrenchment', NULL),
(448, 46, 'Employee relations - Employee remuneration/benefits/conditions are not in accordance with employment agreement or law', NULL),
(449, 46, 'Employee relations - Inability to attract, retain or effectively deploy/train capable staff or required skill or experience', NULL),
(450, 46, 'Safe environment - Inadequate workplace health, safety or wellbeing provided to staff or the public', NULL),
(451, 46, 'Diversity & discrimination - Inadequate diversity and or anit discrimination practices within the workplace', NULL),
(452, 29, 'Suitability, disclosure and fiduciary - Management of client/customer/member funds entrusted ', NULL),
(453, 29, 'Suitability, disclosure and fiduciary - Inadequate identification of client/customers and their needs in order to provide suitable products or services', NULL),
(454, 29, 'Suitability, disclosure and fiduciary - Inadequate disclosure of required information to clients/customers', NULL),
(455, 29, 'Suitability, disclosure and fiduciary - Inadequate protection of client/customer/employee data, including misuse of restricted/confidential or commericially sensitive information', NULL),
(456, 29, 'Suitability, disclosure and fiduciary - Inappropriate sales practices to maximise sales rather than in client/customers best interests', NULL),
(457, 29, 'Suitability, disclosure and fiduciary - Inappropriate client/customer lending practices', NULL),
(458, 29, 'Improper business or market practices - Anti competitive practices/behaviours and ir market manipulation', NULL),
(459, 29, 'Improper business or market practices - Unethical, improper business or unconscionable trade/mrket practices', NULL),
(460, 29, 'Improper business or market practices - Insder trading activities (on internal accounts) ', NULL),
(461, 29, 'Improper business or market practices - Activities are undertaken outside of relevant banking or regulatory licenses', NULL),
(462, 29, 'Improper business or market practices - Involvement in money laundering/terrorist financing activities', NULL),
(463, 29, 'Improper business or market practices - Dealing in a manner that contravenes global economic and trade sanctions', NULL),
(464, 29, 'Improper business or market practices - Failure to establish mandated governance and/or prudential arrangements', NULL),
(465, 29, 'Improper business or market practices - Inadequate customer/client/member complaints management', NULL),
(466, 29, 'Improper business or market practices - Failure to actively identify/manage a conflict of interest', NULL),
(467, 29, 'Advisory activities - Incorrect advisory process provided to client/customer', NULL),
(468, 29, 'Product flaws - Product defects due to inadequate product design, delivery or maintenance', NULL),
(469, 29, 'Product flaws - Model error due to inadequate modeldesign, delivery or operation', NULL),
(470, 29, 'Selection, sponsorship and exppsure - Exceeding customer/client exposure limits', NULL),
(471, 30, 'Disasters and othe events - Damage to physical assets due to natural disaster or disruption event', NULL),
(472, 30, 'Disasters and othe events - Business disruption due to natural disaster or disruption event', NULL),
(473, 31, 'Systems - Business disruption due to hardware or software failure', NULL),
(474, 31, 'Systems - Business disruption due to external telecommunications or utility failure', NULL),
(475, 32, 'Transaction capture, execution and maintenance - Transaction error due to human processing error', NULL),
(476, 32, 'Transaction capture, execution and maintenance - Transaction errors due to system development, proramming or logical error', NULL),
(477, 32, 'Transaction capture, execution and maintenance - Inadequate maintenance of transaction and/or product reference data', NULL),
(478, 32, 'Transaction capture, execution and maintenance - Inadequate management of collateral/ security ', NULL),
(479, 32, 'Customer intake and documentation - Inadequate preparation, collection or maintenance of clien/customer and legal documentation', NULL),
(480, 32, 'Customer intake and documentation - Inadequate onboarding of client/customer', NULL),
(481, 32, 'Customer / client account management - Unauthorised access granted to client/custmer accounts', NULL),
(482, 32, 'Customer / client account management - Inadequate maintenance of client/customer electronic records', NULL),
(483, 32, 'Customer / client account management - Negligent loss or damage of client/custoer assets', NULL),
(484, 32, 'Trade counterparties - Trade counterparty misperformance or disputes', NULL),
(485, 32, 'Outsourcing & 3rd Party Failures - Vendor / supplier / outsource provider dispute', NULL),
(486, 32, 'Outsourcing & 3rd Party Failures - Vendor / supplier / oursourced provider misperformance or permanent loss', NULL),
(487, 32, 'Regulatory reporting failures - Failure to meet external mandatory reporting, disclosure and approval obligations', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `as_actiontype`
--

CREATE TABLE `as_actiontype` (
  `idaction` int(11) NOT NULL,
  `ac_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `as_actiontype`
--

INSERT INTO `as_actiontype` (`idaction`, `ac_type`) VALUES
(1, 'Avoid (Discontinue risky activity)'),
(2, 'Accept (Retain by informed decision)'),
(3, 'Remove (Remove risky activity)'),
(4, 'Take on Risk to increase opportunity'),
(5, 'Change Likelihood'),
(6, 'Change Consequence'),
(7, 'Share risk with 3rd party (Insurence or Joint Venture)');

-- --------------------------------------------------------

--
-- Table structure for table `as_aml`
--

CREATE TABLE `as_aml` (
  `id` int(11) NOT NULL,
  `as_user` int(11) DEFAULT NULL,
  `as_type` int(11) DEFAULT NULL,
  `as_team` varchar(255) DEFAULT NULL,
  `as_task` varchar(255) DEFAULT NULL,
  `as_descript` text DEFAULT NULL,
  `as_number` int(11) DEFAULT 0,
  `as_owner` varchar(255) DEFAULT NULL,
  `as_next` date DEFAULT NULL,
  `as_assessor` varchar(255) DEFAULT NULL,
  `as_approval` varchar(255) DEFAULT NULL,
  `as_completed` tinyint(4) DEFAULT NULL,
  `as_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `as_aml`
--

INSERT INTO `as_aml` (`id`, `as_user`, `as_type`, `as_team`, `as_task`, `as_descript`, `as_number`, `as_owner`, `as_next`, `as_assessor`, `as_approval`, `as_completed`, `as_date`) VALUES
(5, 117, 2, 'BINARY DATA', 'its a good comapny risk', 'this task is very good for my life', 4, 'Amet consequatur consectetur amet nulla sint adipisci laboriosam dolorem culpa ipsum minim qui ', '2023-06-19', 'Odit consequatur rerum esse qui minus voluptate ut qui amet nostrum nulla dolore voluptatem', '2', 0, '2023-06-19'),
(6, 117, 1, 'Adipisci ut officiis do provident esse enim veritatis necessitatibus', 'Qui excepteur porro vel voluptatem atque ea exercitationem fugiat sint minima voluptatum labore', 'Exercitationem error', 5, 'Nam ad quasi accusamus sint debitis est in nobis voluptatem quia in', '2023-06-19', 'Est voluptatem et ullam tenetur ut nulla quasi maiores sed sunt obcaecati nihil perspiciatis quis ', '1', 0, '2023-06-19'),
(7, 117, 4, 'Sit quis porro officia omnis sunt ut cupidatat dicta quos hic et Nam voluptatum', 'Aperiam Nam ipsam sit aut autem est ut quisquam eos at quibusdam consequuntur sunt rerum', 'Aperiam cumque id nu', 6, 'Mollit excepturi quas at et laudantium doloribus tenetur esse sapiente dolor dolorum quos molestiae', '2023-06-19', 'Nostrum do quia esse tenetur quia aut laborum et nisi duis', '3', 0, '2023-06-19'),
(8, 54, 2, 'Veritatis molestiae cupiditate sit qui porro velit tempore ex aut ut', 'Amet est aut qui fuga Distinctio Sint nobis earum dolorem laboris', 'Ex sed similique nul', 1, 'In nisi possimus veritatis sequi architecto totam consequat Iusto at nisi iusto dolore quo eveniet', '2023-06-19', 'Ut incidunt dolore quis nemo porro modi nobis odio officia est', '1', 0, '2023-06-19');

-- --------------------------------------------------------

--
-- Table structure for table `as_ascontrols`
--

CREATE TABLE `as_ascontrols` (
  `idcontrol` int(11) NOT NULL,
  `ct_det` int(11) DEFAULT NULL,
  `ct_descript` varchar(255) DEFAULT NULL,
  `ct_tmpid` int(11) DEFAULT NULL,
  `ct_assessment` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `as_ascontrols`
--

INSERT INTO `as_ascontrols` (`idcontrol`, `ct_det`, `ct_descript`, `ct_tmpid`, `ct_assessment`) VALUES
(7, 0, 'fdsfsdf', -1, NULL),
(16, 4, 'asdasdasd', -1, NULL),
(17, 8, 'adasd', -1, 8),
(18, 8, 'asdasdas', -1, 8),
(24, 10, 'asdasd', -1, 9),
(25, 11, 'sdfsdf', -1, 9),
(28, 9, 'asdasd', -1, 9),
(29, -1, 'Errors in text', -1, 9),
(30, -1, 'Errors in text', -1, 9),
(31, -1, 'Errors in text', -1, 9),
(32, -1, 'Errors in text', -1, 9),
(33, -1, 'Errors in text', -1, 9),
(34, -1, 'Errors in text', -1, 9),
(36, -1, 'Errors in text', -1, 9),
(37, -1, 'Errors in text', -1, 9),
(38, -1, 'Errors in text', -1, 9),
(39, 9, 'Errors in text', -1, 9),
(40, 9, 'Errors in text', -1, 9),
(41, -1, 'Errors in text', -1, 9),
(42, 12, 'desciption', -1, 10),
(45, 14, 'desciption', -1, 16),
(46, 15, 'desciption', -1, 12),
(47, 16, 'desciption', -1, 10),
(49, 17, 'desciption', -1, 10),
(51, 18, 'desciption', -1, 17),
(52, 19, 'desciption', -1, 17),
(60, 34, 'Training for volunteers', -1, 49),
(61, 39, 'Supervisory skills', -1, 56),
(62, 44, 'asdsad', -1, 65),
(64, 48, 'khkh', -1, 75),
(65, 48, 'kk kkj kl', -1, 75),
(67, 0, '', -1, 7),
(71, 3, '-1', -1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `as_assessment`
--

CREATE TABLE `as_assessment` (
  `idassessment` int(11) NOT NULL,
  `as_user` int(11) DEFAULT NULL,
  `as_type` int(11) DEFAULT NULL,
  `as_team` varchar(255) DEFAULT NULL,
  `as_task` varchar(255) DEFAULT NULL,
  `as_descript` text DEFAULT NULL,
  `as_number` int(11) DEFAULT 0,
  `as_owner` varchar(255) DEFAULT NULL,
  `as_next` date DEFAULT NULL,
  `as_assessor` varchar(255) DEFAULT NULL,
  `as_approval` varchar(255) DEFAULT NULL,
  `as_completed` tinyint(4) DEFAULT NULL,
  `as_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `as_assessment`
--

INSERT INTO `as_assessment` (`idassessment`, `as_user`, `as_type`, `as_team`, `as_task`, `as_descript`, `as_number`, `as_owner`, `as_next`, `as_assessor`, `as_approval`, `as_completed`, `as_date`) VALUES
(1, 1, 1, 'Matej Drabik', 'Development', '', 555, 'Me', '2015-11-10', 'Me', '1', 0, '2015-11-16'),
(3, 1, 1, 'sdfsd', 'fsdf', '', 0, 'fsdf', '2015-11-18', 'sdfsdf', '1', 0, '2015-11-16'),
(4, 999, 1, 'sdfsdf', 'dfsdf', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(6, 1, 2, 'Matej 2', 'Tako je', 'sdasdasd', 0, 'sdfsdfsdfsdfsdf', '2015-11-17', 'sdfsdfsdf', '1', 0, '2015-11-17'),
(7, 1, 1, 'dasd', 'asdas', 'dasd', 1, 'asdasd', '2015-11-17', 'asdasd', '1', 0, '2015-11-17'),
(8, 1, 2, 'Test 111', 'dsdasd', 'asdasd', 1, 'asdasd', '2015-11-17', 'asd', '1', 0, '2015-11-17'),
(9, 1, 3, 'test2222', 'dsdasd', 'asdasd', 1, 'asdasd', '2015-11-17', 'asdasd', '1', 0, '2015-11-17'),
(10, 4, 1, 'team', 'task', 'description', 1, 'Pushkar', '2016-01-07', 'test', '1', 0, '2016-01-07'),
(11, 4, 1, 'team', 'task', 'description', 1, 'owner', '2016-01-08', 'assessor', '1', 0, '2016-01-07'),
(12, 4, 2, 'company', 'task', 'description', 1, 'owner', '2016-01-08', 'accessor', '1', 0, '2016-01-08'),
(13, 4, 1, 'company', 'task', 'description', 1, 'owner', '2016-01-11', 'assessor', '1', 0, '2016-01-11'),
(14, 4, 1, 'company', 'task', 'description', 1, 'process owner', '2016-01-12', 'name', '1', 0, '2016-01-12'),
(15, 4, 1, 'team', 'rwar', 'awr', 2, 'awr', '2016-01-14', 'awr', '1', 0, '2016-01-14'),
(16, 4, 1, 'team', 'task', 'description', 3, 'process', '2016-01-15', 'assessor', '1', 0, '2016-01-15'),
(17, 4, 1, 'teat', 'task', 'descrption', 4, 'owner', '2016-01-27', 'name', '1', 0, '2016-01-27'),
(18, 4, 1, 'teat', 'te', 'es', 5, 'set', '2016-01-27', 'es', '1', 0, '2016-01-27'),
(19, 5, 2, 'ChapterUp', 'Payments', 'Payments safety ', 1, 'Jay', '2023-02-25', 'Arun', '2', 0, '2023-02-25'),
(20, 6, 1, 'dsfsddsfs', 'sdfdsf', 'fsd dsfds fsds fs', 1, 'sdf dsf', '2023-03-14', 'sdf sdfsdf ds', '1', 0, '2023-03-01'),
(21, 7, 2, 'ABC', 'Emergency exit ', 'Workers accessing emergency exit ', 1, 'Jay', '2023-03-23', 'Warren ', '1', 0, '2023-03-06'),
(22, 9, 2, 'ABC', 'Chemical handling', 'Handling chemicals ', 1, 'Jay', '2023-03-08', 'Warren', '1', 0, '2023-03-08'),
(23, 11, 2, 'hiReprehenderit voluptas quos incididunt corrupti quia fuga Sint anim id et dolor sed eaque recusand', 'hi1Ut error quo laboris nulla dolor sunt molestias hic anim et nemo ipsa', 'Autem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderitAutem reprehenderit', 1, 'Magnam deleniti in doloremque nihil sapiente odio voluptas consequuntur omnis dolore omnis elit', '2023-03-13', 'Vitae in a ullam exercitationem corporis dolore quia debitis quo et aut enim', '2', 0, '2023-03-13'),
(25, 11, 1, 'Porro magnam itaque odio magnam molestias voluptatum ut repellendus Veritatis esse', 'Non facilis optio fugiat voluptatibus et ut tempora', 'Illum laboriosam q', 2, 'Eligendi at excepteur earum minim laborum distinctio Quis fugiat doloribus do iure voluptatem et d', '2023-03-13', 'Sint temporibus voluptatibus explicabo Veniam alias debitis ut duis sint distinctio Quo beatae s', '3', 0, '2023-03-13'),
(32, 14, 3, 'Error in cupiditate aut qui minus ut', 'Suscipit vitae autem incididunt quibusdam ad quisquam ut maxime vel unde dignissimos ut elit voluptatibus architecto vero ex', 'Nisi beatae aut aper', 1, 'Consequatur sit natus dolorem rerum neque quod amet quos quibusdam corrupti illum repudiandae qu', '2023-03-13', 'Atque quia voluptas enim neque tempora aliquid est duis quis', '1', 0, '2023-03-13'),
(33, 19, 4, 'Error accusantium non debitis laboris quidem veritatis nemo ipsam numquam quia', 'Aute sed error et voluptates numquam debitis praesentium', 'Blanditiis error rer', 1, 'Ut deserunt quia molestiae eu itaque est omnis explicabo Magna inventore odit quod veniam fugit d', '2023-03-13', 'Veritatis praesentium natus rerum eos ullamco eum dolor numquam aut ut', '3', 0, '2023-03-13'),
(34, 17, 3, 'Labore et nostrum aute nisi voluptate autem qui culpa natus', 'Aut corrupti non culpa reprehenderit vitae reprehenderit', 'Sed non totam optio', 1, 'Pariatur Ea numquam qui eu doloribus ex', '2023-03-13', 'Ipsam totam est non aliquip repudiandae', '2', 0, '2023-03-13'),
(35, 17, 1, 'Nostrum enim repudiandae eos eaque', 'Dolore et ipsam id quam do tempore officia obcaecati', 'Vel molestiae quia v', 2, 'At earum quia dolor asperiores sint ea accusantium ex a ut consequatur', '2023-03-13', 'Debitis earum impedit est a voluptate sit vitae et similique incidunt architecto nisi consequat', '2', 0, '2023-03-13'),
(36, 20, 2, 'Ab voluptatibus eius laboriosam nulla nulla accusamus officia eaque doloremque voluptate magna et l', 'Nemo et quod accusamus velit impedit', 'Sunt dolor eos lore', 1, 'Occaecat excepturi veniam quos ipsum totam accusantium assumenda dolor quod lorem blanditiis', '2023-03-13', 'Aute quis rem magna cillum similique accusamus est obcaecati enim eos quaerat ipsum quod perferendi', '2', 0, '2023-03-13'),
(37, 21, 2, 'Ea commodi sit et nisi aliquid sunt Nam sit et', 'Optio qui quibusdam iste esse ut iure omnis provident consectetur est aut libero pariatur Et nisi incididunt dicta facere labore', 'Rerum optio nostrud', 1, 'Nihil iusto labore dolore autem recusandae Ab a eu rerum aut dolor quos nisi et sequi quibusdam dig', '2023-03-13', 'Consequatur commodi labore harum id eius eos ea voluptatem similique ut cumque labore tempor sunt e', '3', 0, '2023-03-13'),
(39, 20, 4, 'Odio aut in cupidatat tenetur inventore sunt quisquam aliqua Et eum exercitationem aliquid quia', 'Qui id rerum in sed commodi molestias harum veniam et veniam in doloribus in ex dolorem necessitatibus culpa', 'Qui debitis consequa', 3, 'At quibusdam cumque perspiciatis quia omnis facilis qui iusto labore eum anim elit laudantium nih', '2023-03-13', 'Iure proident nostrum voluptatibus illo aliqua', '2', 0, '2023-03-13'),
(40, 20, 4, 'Consequatur nihil eligendi laudantium nobis nostrud proident nisi', 'Sit ex tempora aliqua At ipsa quaerat doloremque debitis est ullam dolorem omnis', 'Laborum architecto u', 4, 'Sunt autem corporis autem et facere modi omnis aut', '2023-03-13', 'Quod suscipit odio aut blanditiis', '2', 0, '2023-03-13'),
(41, 23, 4, 'Et sequi blanditiis et in sint vitae ut dolores inventore ut atque', 'Velit quaerat voluptates veniam minima dolor tempor et quis ut est', 'Molestiae sequi sit ', 1, 'Deserunt quis aliquid ea accusamus quis rerum lorem quas qui velit expedita irure sit deleniti et', '2023-03-14', 'Est quae voluptatum eum ea', '1', 0, '2023-03-14'),
(42, 30, 4, 'Do veniam id officiis odio expedita sit', 'Quo ex et temporibus tempore quia', 'Accusamus dolore lau', 1, 'Animi incididunt ea laborum deserunt natus quas in laboriosam ad vero quibusdam animi sint labor', '2023-03-14', 'Et aut labore nisi ipsa aliqua Incidunt eaque id sunt', '2', 0, '2023-03-14'),
(43, 30, 4, 'Optio enim natus ut est', 'Id exercitationem ea voluptatem occaecat eaque aut rerum aliquid magnam', 'Provident autem qua', 2, 'Autem repellendus Ut est totam reiciendis ad autem dolorem ut et adipisicing in proident beatae in', '2023-03-14', 'Dignissimos sit aperiam expedita maxime mollitia sint commodo ullam consequatur', '1', 0, '2023-03-14'),
(44, 34, 3, 'Sequi culpa Nam voluptate sint aut duis unde omnis dolore in culpa aut reprehenderit unde fuga ', 'Veniam odit dolores tempor laborum Est quasi dolore eiusmod cupiditate qui sit nulla eaque ut', 'Minima molestias ut ', 1, 'Minima aut dolorum sint incididunt itaque ullamco ipsam qui minus aut nihil laborum Non occaecat ad', '2023-03-15', 'Proident iusto eius doloremque voluptates eum suscipit quibusdam', '2', 0, '2023-03-15'),
(45, 34, 2, 'Et est eligendi iste facere quis maiores sit dicta maxime sed non commodi', 'Tempore laborum Et minima voluptatem impedit aliqua Labore numquam reprehenderit saepe rem ut', 'Et voluptas voluptat', 2, 'Ipsa perspiciatis lorem nulla consequuntur sed tenetur', '2023-03-15', 'Sit nulla dolores fugit dignissimos delectus qui atque corporis est', '2', 0, '2023-03-15'),
(46, 35, 3, 'Quia non ad distinctio Dolores', 'Dolorem quo nostrud cupiditate reprehenderit laudantium voluptatem qui', 'Eligendi possimus a', 1, 'Est dolor voluptas adipisci ea autem adipisci aliquip consequatur aut', '2023-03-15', 'Incidunt odit consequatur voluptates quod do sit totam et ea in dolores culpa at blanditiis', '1', 0, '2023-03-15'),
(47, 32, 2, 'Similique adipisci sed saepe illo in non debitis deserunt sit modi exercitationem', 'Sequi ut animi maiores in odit laborum Laborum', 'Asperiores dolore ausqwe21323', 1, 'Ut quasi et hic voluptas officiis et lorem nobis ut hic distinctio Amet tempore dolore et maiores', '2023-03-16', 'Voluptas architecto voluptatem nihil facere iste', '3', 0, '2023-03-16'),
(48, 24, 2, 'Corporis amet sed quia sunt animi aut sequi amet suscipit voluptatibus eos placeat laboriosam ', 'Eveniet sint illo dolores corrupti assumenda velit quod eum sint quo non praesentium eveniet', 'Vero quibusdam conse', 1, 'Consequatur in excepturi maiores molestias architecto qui dolorem', '2023-03-18', 'Aut ullamco perspiciatis consequatur est facere quis sint', '1', 0, '2023-03-18'),
(49, 43, 2, 'ADHD', 'Loading boxes', 'Volunteers loaded boxes in the factory ', 1, 'Marcus ', '2023-03-19', 'John ', '1', 0, '2023-03-19'),
(50, 52, 2, 'Public Library ', 'Patron foot traffic ', 'patrons trips and falls ', 1, 'Max ', '2023-03-24', 'Jay ', '1', 0, '2023-03-24'),
(51, 50, 4, 'ABC', 'Slips and Trips ', 'When patrons fall over ', 1, 'Max ', '2023-03-29', 'Jay', '2', 0, '2023-03-26'),
(52, 50, 4, 'Charity group ', 'Donations ', 'Donations made being stolen', 2, 'Mag', '2023-04-20', 'Jay', '2', 0, '2023-03-26'),
(53, 32, 2, 'Consequuntur occaecat dolor nobis eaque non ipsum', 'Nobis id sunt cillum quis harum adipisicing ipsa Nam sint praesentium', 'Perspiciatis cum re', 2, 'Fugiat odit suscipit necessitatibus maiores', '2023-03-27', 'Nostrud voluptate ab ad reiciendis quis pariatur Dignissimos tempora aliquip neque do aliquid et', '3', 0, '2023-03-27'),
(54, 32, 2, 'Distinctio Nesciunt aut ex Nam quia voluptates similique dolor maxime id voluptatem Et', 'Totam alias necessitatibus velit lorem tempora sit aliquam quisquam delectus error nihil beatae nihil', 'Delectus quo corpor', 3, 'Ex perferendis et odit natus itaque aut pariatur Commodo quos nisi quo ut', '2023-08-31', 'Et excepturi in sint reprehenderit sit cumque officiis at quibusdam et similique maiores quis archi', '3', 0, '2023-03-27'),
(55, 32, 1, 'Ipsum placeat quas pariatur Dolores illo rerum eiusmod cillum culpa vitae', 'Sequi commodo molestiae quo sit corrupti dolore quisquam dolorem rerum ut sunt elit nostrud magni eum aut est provident vitae', 'Sed explicabo Provi', 4, 'Commodi perferendis mollit illum iste esse ut voluptatem Expedita provident et', '2024-03-14', 'Culpa quod labore nulla qui ipsum fugiat ut nulla velit non', '1', 0, '2024-03-14'),
(56, 50, 2, 'ABC', 'Fire', 'Fire exits', 3, 'Marcus', '2023-03-31', 'Max', '1', 0, '2023-03-31'),
(57, 50, 2, 'ABC', 'Fire escape ', 'Fire drills ', 4, 'Dom', '2023-03-31', 'Jay', '2', 0, '2023-03-31'),
(59, 55, 2, 'Logistics', 'Palletising orders for wholesale', 'Cartons of product and down stacked from pallets on racking or floor level. Cartons transferred to new pallet as per pick sheets. Cartons range between 18-25kg.', 1, 'Logistics Manager', '2023-04-06', 'WHS', '1', 0, '2023-04-06'),
(61, 57, 4, 'Tenetur libero officia modi sed assumenda labore quis similique eos rerum qui sunt est deleniti vo', 'Dolorem impedit ipsam quia reprehenderit proident sunt facere eum ex accusantium voluptatem In fugiat incidunt doloribus eiusmod similique', 'Eum qui quaerat accu', 1, 'Sunt voluptate nihil repellendus Ex enim aut', '2023-04-11', 'Deleniti omnis optio fugiat ratione explicabo Officiis enim', '3', 0, '2023-04-11'),
(62, 56, 2, 'sadasd', 'sadsad', 'sdsadsa', 1, 'sadsad', '2023-04-14', 'asdasdas', '1', 0, '2023-04-14'),
(63, 56, 1, 'test 2', 'test 3', 'asdf', 2, 'asdasda', '2023-04-18', 'asdasdas', '1', 0, '2023-04-18'),
(64, 56, 3, 'sdasdsa', 'sdasd', 'sadsad', 3, 'sadsad', '2023-04-18', 'sdsad', '1', 0, '2023-04-18'),
(65, 56, 1, 'sdasd', 'sadasdasd', 'asdsadsa', 4, 'dsadasdsa', '2023-04-20', 'dsadasdas', '1', 0, '2023-04-20'),
(66, 56, 3, 'sgsgf', 'fgdfgdf', 'gfdgfdgfd', 5, 'fdgfdgdf', '2023-04-23', 'gfdgdfgfd', '1', 0, '2023-04-23'),
(67, 56, 1, 'klnkln', 'kl', 'nkln', 6, 'kln', '2023-04-23', 'klnlk', '1', 0, '2023-04-23'),
(68, 56, 2, 'dsadsad', 'adsad', 'sadsadsadsadsa', 7, 'dsadasdsa', '2023-04-24', 'dsadasdsadas', '1', 0, '2023-04-24'),
(69, 56, 2, 'dasfa', 'fdsafasf', 'asfasfas', 8, 'asfasfsa', '2023-04-25', 'fasfsafdasfsafa', '1', 0, '2023-04-25'),
(72, 58, 2, 'Quis ipsum voluptatem exercitationem pariatur Ullamco', 'Ratione error elit nihil ullam minima', 'Iure deserunt est ve', 1, 'Fugiat et eveniet delectus non possimus at mollitia explicabo Dolor ab enim proident', '2023-05-05', 'Labore sit sed est et in minus consectetur tempora non', '3', 0, '2023-05-05'),
(73, 58, 3, 'Rem omnis nulla est ut ipsum autem dolor non qui ut quasi exercitation voluptates quae', 'Ut deleniti nisi eu id vel quidem eos quia in minus', 'Voluptate facere non', 2, 'Omnis minima pariatur Sed officia laborum Nesciunt fugit ut voluptate', '2023-05-05', 'Unde iusto do ex ad nobis rem veniam optio dolor proident necessitatib', '2', 0, '2023-05-05'),
(74, 58, 2, 'Voluptatem rem est sit accusamus expedita', 'Unde quam obcaecati magnam totam asperiores voluptatum unde ', 'Est repellendus Mo', 3, 'Odio amet dolore ipsa ullam dolor in incididunt rem temporibus ab omnis', '2023-05-08', 'Et ducimus blanditiis sit qui quos', '3', 0, '2023-05-08'),
(75, 62, 1, 'dev', 'kjh', 'jhk', 1, 'lkj', '2023-05-16', 'jnjj', '1', 0, '2023-05-16'),
(76, 65, 3, 'Vitae qui deserunt inventore nisi perspiciatis consectetur alias ut numquam excepteur', 'Porro accusantium est minima vel et cupidatat nihil quas ea sit adipisci consequuntur dignissimos iusto voluptatem rerum tempora', 'Nostrum voluptas qui', 1, 'Voluptates vero officiis quisquam ea aut reiciendis dolore neque dolor dolores', '2023-06-06', 'Consequat Laboriosam in sequi et ea', '1', 0, '2023-06-06'),
(77, 68, 1, 'Animi harum voluptatibus eveniet molestiae quae', 'Quod magni molestiae quaerat recusandae Rerum nisi ut', 'Animi magni sunt ea', 1, 'Quia voluptas cillum sit saepe elit quasi nobis officiis itaque', '2023-06-07', 'Neque in enim nostrum dolor tempora consequatur', '2', 0, '2023-06-07'),
(86, 117, 1, 'Dolor nostrum recusandae Adipisci in molestiae deserunt explicabo Perferendis adipisci esse moles', 'Hic sunt voluptate laborum est provident necessitatibus non quos repudiandae', 'At enim quas labore ', 1, 'Sint et et omnis modi consequatur Nam qui esse non laudantium dolores quibusdam labore fugiat sae', '2023-06-19', 'Dolor rerum quia proident est a quis accusantium dolor non perspiciatis voluptas iure harum sequi ', '1', 0, '2023-06-19'),
(87, 117, 3, 'Adipisicing porro fugit laborum cum aut id aut unde cillum facere voluptate', 'Possimus error impedit occaecat earum nulla est quaerat adipisci eaque at similique Nam similique', 'Et dolore exercitati', 2, 'Vero excepturi atque ipsum tempore maiores aliquip et voluptatem similique dolor nisi eum dolor vo', '2023-06-19', 'Officia quia maiores dolores occaecat quasi ea inventore consectetur provident facere explicabo O', '1', 0, '2023-06-19');

-- --------------------------------------------------------

--
-- Table structure for table `as_astreat`
--

CREATE TABLE `as_astreat` (
  `idtreat` int(11) NOT NULL,
  `tr_det` int(11) DEFAULT NULL,
  `tr_descript` varchar(255) DEFAULT NULL,
  `tr_tmpid` int(11) DEFAULT NULL,
  `tr_assessment` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `as_astreat`
--

INSERT INTO `as_astreat` (`idtreat`, `tr_det`, `tr_descript`, `tr_tmpid`, `tr_assessment`) VALUES
(13, 4, 'adsad', -1, NULL),
(16, 9, 'asdasd', -1, 9),
(17, 10, 'asdasd', -1, 9),
(18, 11, 'sdfsdf', -1, 9),
(20, 9, 'asdasdasd', -1, 9),
(21, 9, 'test', -1, 9),
(23, -1, 'Treatment 2', -1, 9),
(24, -1, 'Treatment 2', -1, 9),
(25, -1, 'Treatment 2', -1, 9),
(26, -1, 'Treatment 2', -1, 9),
(33, 9, 'Treatment 2', -1, 9),
(35, -1, 'Treatment 2', -1, 9),
(36, 12, 'tes', -1, 10),
(38, 12, 'treatment', -1, 10),
(39, 14, 'treatment', -1, 16),
(40, 15, 'tes', -1, 12),
(41, 16, 'tes', -1, 10),
(43, 17, 'tes', -1, 10),
(45, 18, 'tes', -1, 17),
(46, 19, 'tes', -1, 17),
(56, 34, 'Start a training program for volunteers', -1, 49),
(57, 39, 'Create training program ', -1, 56),
(58, 44, 'dsadas', -1, 65),
(60, 0, '', -1, 7),
(63, 3, '', -1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `as_auditcontrols`
--

CREATE TABLE `as_auditcontrols` (
  `idcontrol` int(11) NOT NULL,
  `con_user` int(11) DEFAULT NULL,
  `con_company` varchar(255) DEFAULT NULL,
  `con_industry` varchar(255) DEFAULT NULL,
  `con_team` varchar(255) DEFAULT NULL,
  `con_task` varchar(255) DEFAULT NULL,
  `con_assessor` varchar(255) DEFAULT NULL,
  `con_site` varchar(255) DEFAULT NULL,
  `con_date` date DEFAULT NULL,
  `con_time` varchar(45) DEFAULT NULL,
  `con_street` varchar(255) DEFAULT NULL,
  `con_building` varchar(255) DEFAULT NULL,
  `con_zipcode` varchar(45) DEFAULT NULL,
  `con_state` varchar(255) DEFAULT NULL,
  `con_country` varchar(255) DEFAULT NULL,
  `con_control` varchar(255) DEFAULT NULL,
  `aud_treatment` varchar(255) DEFAULT NULL,
  `con_effect` int(11) DEFAULT NULL,
  `con_observation` varchar(255) DEFAULT NULL,
  `con_rootcause` varchar(255) DEFAULT NULL,
  `con_treatment` varchar(255) DEFAULT NULL,
  `con_frequency` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `as_auditcontrols`
--

INSERT INTO `as_auditcontrols` (`idcontrol`, `con_user`, `con_company`, `con_industry`, `con_team`, `con_task`, `con_assessor`, `con_site`, `con_date`, `con_time`, `con_street`, `con_building`, `con_zipcode`, `con_state`, `con_country`, `con_control`, `aud_treatment`, `con_effect`, `con_observation`, `con_rootcause`, `con_treatment`, `con_frequency`) VALUES
(4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dfsdfsdf', NULL, 0, 'sdfsdf', NULL, 'sdfsdf', 2),
(10, 1, 'Specto d.o.o.', 'Graphich industry', 'Prepress', 'Backup', 'Matej Drabik', 'Hall 2', '2015-11-28', '12:30pm', 'Široka 3, Batrina', 'Building 1', '35410', 'Brodsko-posavska', 'Croatia', 'Errors in text', NULL, 2, 'Control not in place', NULL, 'Place control', 7),
(11, 4, 'pushkar', 'ndustry', 'team', 'task', 'test', 'site', '2016-01-11', '12:00pm', 'test', 'test', '645', 'test', 'est', 'desciption', NULL, 1, 'test', NULL, 'test', 1),
(12, 4, 'company', 'tyoe', 'team', 'task', 'test', 'site', '2016-01-12', '11:30am', 'address', 'building', 'asddsa', 'asd', 'asd', 'desciption', NULL, 0, 'observation', NULL, 'tretement', 1),
(13, 4, 'test', 'test', 'team', 'task', 'test', 'test', '2016-01-14', '11:00am', 'test', 'test', 'test', 'test', 'est', 'desciption', NULL, 1, 'nv', NULL, 'vn', 7),
(14, 5, 'ANZ', 'Chemical ', 'Baz', 'Pouring chemicals ', 'James', 'Dandy ', '2023-02-25', '12:00pm', '55 toowomba ', 'Big B', '5467', 'QLD', 'Aus', 'QC Program ', NULL, 1, 'Human error ', NULL, 'Remediation program ', 30),
(15, 6, 'd gdsf', 'g dfgfd', 's gdsf ', 'g fdg df', ' gdfs gds', ' gfdsg', '2023-03-01', '9:00am', ' gdsfg d', 'g sdf', 'dsfg fdgdsf', 'd gfdg df', 'dg', 'dfgds g f', NULL, 0, '', NULL, '', 0),
(16, 7, 'ABC', 'Biology ', 'Z', 'Testing blood ', 'Warren', 'Home ', '2023-03-06', '10:30pm', '500 Smith Street ', 'A', '50001', 'New york', 'USA', 'Blood testing ', NULL, 0, '', NULL, '', 0),
(17, 9, 'ABC', 'XYZ', 'Operations', 'Fire drill', 'Jay', 'Building a', '2023-03-08', '10:30pm', '150 smith st', 'A', '10001', 'Singapore', 'Singapore', 'Training Program New', NULL, 1, 'pass', NULL, 'NA', 30),
(19, 14, 'resgtedg', 'dfgdg', 'dgdxgxdr', 'xgrxdg', 'xdrgrxdg', 'dxrgr', '2023-03-13', '3:30pm', 'dgxrdg', 'xdrgxrdg', '34534', 'rfgegr', 'India', 'demo controller name ', NULL, 1, 'Officia aspernatur dolor excepteur natus labore veniam consectetur consequuntur sit mollit provident et', NULL, 'Voluptatem mollit reiciendis ex duis', 30),
(20, 16, 'Hyde and Moss Co', 'Molestias fuga Dignissimos ipsum doloremque dolor maiores consequat Molestiae eveniet omnis culpa delectus incidunt sint illo ut alias minus ratione', 'c', 'Aut tempora deserunt fugiat molestiae dolorem possimus in quo molestiae exercitation adipisci laboris rem hic necessitatibus', 'Dolor esse obcaecati est rerum velit dolor veritatis quia non consequatur sunt voluptatem expedita ', 'Totam non et non elit deserunt sed enim voluptatem quis dolore ipsa iure rem sapiente', '2023-03-13', '4:00pm', 'Aute perspiciatis quam incidunt in ratione aut est facere autem hic molestias et fuga Enim rerum', 'Consequatur id pariatur Non repudiandae occaecat voluptatum iure molestias eveniet accusantium unde', '50665', 'Sed velit voluptas molestiae qui ut', 'Ullamco voluptas autem enim esse autem placeat u', 'c', NULL, 0, '', NULL, '', 0),
(21, 17, 'ervge', 'dfv', 'ergergrev', 'ervgerg', 'ergerg', 'ergerg', '2023-03-13', '4:00pm', 'erfgerg', 'ergerg', '234234', 'fgvdg', 'rgerg', 'jhscs', NULL, 0, '', NULL, '', 0),
(22, 20, 'Petersen and Hyde Trading', 'Nisi laboriosam nemo eius et ducimus ipsum possimus minus consectetur qui ex sed eligendi delectus enim eum aute animi', 'Petersen and Hyde Trading', 'uuju', 'testing', 'hgbvjhvgj', '2023-03-13', '11:00pm', 'Bean and Ruiz Trading', ' beatae fugiat omnis aut voluptatem quia aecati cumque consectetur ea officiis debitis', '54564', 'Libero repellendus Saepe dolo', 'India', 'demo controller name ', NULL, 0, 'controll effectiveness', NULL, 'controll effectiveness', 30),
(24, 24, 'Ochoa and Floyd Associates', 'In ut et eos necessitatibus', 'rgggrthy', 'Aut tempora deserunt fugiat molestt', 'asdsad', 'Elit aute laborum optio aut tempora est dolor enim et voluptates ut', '2023-03-18', '1:30pm', 'Deserunt reprehenderit qui in exercitation aute aliquid similiq', 'Reprehenderit sed sed velit rerum qui qui', '11857', 'Et vitae voluptas reprehenderit laborum Ullam et', 'Labore tempora quia ipsum quibusdam culpa aut', 'Debitis accusamus nisi dolor cupidatat recusandae', NULL, 2, 'Dolore laboris ratione necessitatibus culpa incidunt quae voluptas sint nulla velit minus culpa ipsa', 'Earum eos aut molestiae reprehenderit commodi est quod veniam hic repellendus', 'Quis dolor maxime aut adipisicing fugiat rerum velit tempor minim vero id quia in eius veritatis', 1),
(25, 24, 'Trevino and Fleming Inc', 'Dicta ea et repudiandae debitis dolor', 'qwqwrqrwetrt', 'Totam asperiores sunt eiusmod aliquam', 'Dolor quos ', 'Aut Nam doloremque placeat labore ipsa ', '2023-03-18', 'Qui voluptas dicta deleniti ipsum nihil est', 'Eos molestias et suscipit nostrud odit repellendus', 'Reiciendis necessitatibus nobis facere dolore ', '35654', 'Debitis dolor eu repudiandae voluptas maiores repe', 'Fugit voluptas nobis sed aliquam', 'Unde ducimus non consequatu', NULL, 0, '', '', '', 0),
(26, 43, 'ADJD', 'Manufacturing ', 'Volunteering ', 'Volunteers loading boxes', 'Jimmy', 'Footscray ', '2023-03-19', '1:00pm', '50 Smith Street Footscray', 'A', '3028', 'VIC', 'Australia', 'Buddy program for volunteers', NULL, 0, '', '', '', 0),
(27, 24, 'Rasmussen and Kane Inc', 'Accusantium molestiae aliquid voluptates dolor dolor', 'liquid voluptates dolor dolor', 'Totam asperiores sunt eiusmod aliquam', 'asdsad', 'Eius quasi quasi nostrum rerum qui voluptatem', '2023-03-24', '1:00pm', 'Officiis dignissimos ipsum voluptatem aut ', 'Enim atque rem velit facere odio aut corrupti repelle', '80547', 'Dolore quam iusto do maiores iste id sapiente dele', 'Maiores quia ad fugiat repellendus', 'Debitis accusamus nisi dolor cupidatat recusandae', NULL, 0, '', '', '', 0),
(28, 24, 'Skinner and Turner Plc', 'Molestiae aperiam voluptate consequatur consectetur exercitation nostrum', 'ptate consequatur consectptate consequatur consectptate consequatur consectptate ', 'ptate consequatur consect', 'ptate consequatur consect', 'Voluptatem dolore veritatis illum accusamus reiciendis omnis dolore ex', '2023-03-24', '1:00pm', 'Consequat Non eaque Nam omnis beatae consequuntur saepe', 'Debitis quia dolor et eum illo ea ex enim possimus eum expedita', '81747', 'Aut voluptate lorem libero recusandae Dolor error', 'A dignissimos sunt voluptatum qui facere rerum ill', 'Debitis accusamus nisi dolor cupidatat recusandae', NULL, 0, '', '', '', 0),
(29, 24, 'Caldwell Hinton Associates', 'Totam dignissimos minus molestiae aliqua Nam', 'Debitis accusamus nisi dolor cupidatat recusandae', ' perferendis ut voluptatum perspiciatis sed autem sed aut nulla id esse itaque sit', 'Dolor esse obcaecati est rerum velit dolor veritatis quia non consequatur sunt voluptatem expedita ', 'Optio necessitatibus nihil reprehenderit dolor consectetur est', '2023-03-24', '1:30pm', 'Soluta vero esse eius tenetur atque voluptas esse velit quia sit ', 'Non obcaecati excepturi officiis omnis id aspernatur accusamus est quis et dolorem u', '72206', 'Qui rerum qui error illum officiis ex velit', 'Sit quis ea tenetur nisi ut voluptatibus possimus', 'Debitis accusamus nisi dolor cupidatat recusandae', NULL, 0, '', '', '', 0),
(30, 50, 'ABZ ', 'Volunteering ', 'ABC', 'Funding ', 'Jay', 'A', '2023-03-26', '2:00pm', '15 Maruc drive ', 'A', '10001', 'Victoria ', 'Australia ', 'Supervisory skills', NULL, 1, 'Test questions', 'Capability ', 'Train more ', 182),
(31, 32, 'Diaz Ashley Plc', 'Expedita voluptas est architecto eaque obcaecati adipisci aut ', 'cumque et cillum lorem consequat Sit et earum irure', 'Aute esse dolore aut mollit incididunt ea facilis voluptates excepteur', 'Dicta ut odio omnis rerum culpa dolores accusantium et vitae ipsum voluptatem', 'Dolorem sed expedita nulla esse eu quia quo quo ab culpa id veniam aut', '2023-03-27', '11:30am', 'Consectetur exercitation rem vel ut laboriosam', 'Quasi dolores alias qui est ipsum quis voluptatum laboris fuga', '30997', 'Ipsum modi duis qui eaque consectetur magna est o', 'Quas dolorem magna quo unde autem autem anim non i', 'Debitis accusamus nisi dolor cupidatat recusandae', NULL, 0, '', '', '', 0),
(32, 32, 'Cobb Newton LLC', 'Sed nisi est molestiae voluptatem nesciunt voluptatem Sed quia minima', 'Sed nisi est molestiae voluptatem', 'Dolores cupidatat et sequi aliquid', 'Dicta ut odio omnis rerum culpa dolores accusantium et vitae ipsum voluptatem', 'At dolore qui anim repudiandae totam', '2023-03-27', '3:00pm', 'Qui commodi tempora at Nam nisi voluptatem iusto a', 'Dolor sunt voluptas autem labore sequi sit cupidatat iste', '59740', 'Labore quae aperiam voluptatibus amet vitae amet', 'Dolores sed deleniti laboris repudiandae ipsum ips', 'Debitis accusamus nisi dolor cupidatat recusandae', NULL, 0, '', '', '', 0),
(33, 32, 'Kirkland and Bray LLC', 'Voluptatem Quas voluptatem qui quos dicta non qui', 'm qui quos dicta non qui', 'Aute esse dolore aut mollit incididunt ea facilis voluptates excepteur', 'Dicta ut odio omnis rerum culpa dolores accusantium et vitae ipsum voluptatem', 'Dolor corrupti labore aut culpa at qui totam minim', '2023-03-27', '4:00pm', 'Sint sunt quas consectetur ex et cupidatat ut ', 'Eligendi ipsum esse vitae amet vel', '89120', 'Irure cillum cumque et perspiciatis error magni v', 'Sed veniam officia suscipit dolorum atque dolorum', 'Debitis accusamus nisi dolor cupidatat recusandae', NULL, 0, '', '', '', 0),
(34, 50, 'ABC', 'Manufacturing ', 'ABC', 'Fire', 'Max', 'A', '2023-03-31', '7:00am', '10 Smith St', 'ABC', '10001', 'New York ', 'USA', 'Supervisory skills', NULL, 0, '', '', '', 0),
(35, 54, 'ABC', 'Manufacturing ', 'A', 'Machine ', 'Jay ', 'A', '2023-04-06', '4:30pm', '11 Smith ', 'A', '10001', 'NY', 'USA', 'Fire drill training ', NULL, 2, 'Control operator aware ', 'N/A', 'N/A', 1),
(36, 57, 'Snow and Williams Traders', 'Consectetur proident et aute sed incididunt qui ipsa saepe et sunt molestiae quae non assumenda assumenda', 'lorem dicta ut minima modi quibusdam accusantium', 'Totam asperiores sunt eiusmod aliquam', 'Dolor esse obcaecati est ', 'Fuga Non maxime iure dignissimos assumenda cupiditate dolores unde dolorem ratione alias sed ea', '2023-04-11', '11:00am', 'Quis id ipsam rerum aut ex rerum anim quis facilis ea', 'Quod iure ratione tempore autem recusandae Nulla ut quo debitis ipsum', '78313', 'Voluptates odit soluta id quod ratione ducimus et', 'In maiores culpa architecto qui eum culpa ipsa ', 'Laboris ut illo fuga Dolor qui libero excepturi adipisicing illum necessitatibus neque vel ', NULL, 0, '', '', '', 0),
(37, 56, 'das', 'adsa', 'asfaf', 'adfafa', 'dafadf', 'adfadf', '2023-04-19', '10:00am', 'sadasd', 'adsdas', '13232', 'sfdafd', 'sdfddf', 'asdsad', NULL, 2, 'daf', 'dafadsf', 'dfgsdgds', 1),
(38, 54, 'ANZ', 'Petroleum ', 'C', 'Chemical storge', 'Mike', 'Dandenong', '2023-05-04', '10:00pm', '11 Marcus st Pakenham', 'C', '3001', 'Vic', 'Aus', 'Chemical labels', NULL, 0, '', '', '', 0),
(39, 58, 'Flores and Alford Traders', 'Eiusmod elit commodi labore quas beatae ut laboriosam et ipsum maiores', 'https://www.binarydata.in/', 'Aut tempora deserunt fugiat molestiae dolorem possimus in quo molestiae exe', 'Sunt duis sapiente est omnis quos dolores exercitationem necessitatibus aut dolore nesciunt minus ', 'Deserunt voluptatem repellendus Cupidatat alias', '2023-05-05', '10:00am', 'Floor Plot No. C184, 3rd, Sector 75, Industrial Area Phase 1, Punjab 160071 Mohali (Punjab)', 'Quod in illum maxime ducimus nisi nesciunt nobis debitis', '160071', 'Punjab', 'India', 'Debitis accusamus nisi dolor cupidatat recusandae', NULL, 1, 'sgdsfggggg', 'sdghgggdsgds', 'Laboris nemo est unde velit id quibt', 7),
(40, 58, 'Roach Bush Plc', 'Ab necessitatibus et blanditiis perspiciatis voluptatem quae et repudiandae', ' laboriosam minus', 'Aut tempora deserunt fugiat molestiae dolorem possimus in ', 'Sunt duis sapiente est omnis quos dolores exercitationem necessitatibus aut dolore nesciunt minus ', 'https://dealmih.com/', '2023-05-05', '10:30am', 'In distinctio Illum aut officiis', 'Aliquid numquam aliqua Ea nulla sint voluptatum nisi ipsa occaecat est sunt pariatur Labore veniam', '86982', 'Atque facere ducimus officiis esse voluptate dict', 'Nulla debitis doloremque eveniet enim cupidatat o', 'Debitis accusamus nisi dolor cupidatat recusandae', NULL, 2, 'sgdsfggggg', 'sdghgggdsgds', 'Ex veritatis quia quia amet fugiat', 7),
(41, 58, 'Mccormick Walters LLC', 'Laudantium porro nulla officia incidunt occaecat accusamus ve', 'Laudantium porro nulla o', 'Aute esse dolore aut mollit incididunt ea facilis voluptates excepteur', 'ptate consequatur consect', 'https://dealmih.com/', '2023-05-08', '10:30am', 'Quia itaque ad dolorem aut consectetur magnam ex rerum earum i', 'Ad maxime ad velit pariatur Aspernatur nulla', '34405', 'Labore omnis sed cupidatat saepe ducimus', 'Dolore velit officiis minima consequatur placeat', 'Debitis accusamus nisi dolor cupidatat recusandae', NULL, 2, 'sgdsfggggg', 'sdghgggdsgds', 'Ex veritatis quia quia amet fugiat', 7),
(42, 54, 'Matil', 'Hardware', 'People', 'Finance', 'Rod', 'Melbourne', '2023-05-09', '11:00pm', '5o Dunn st', '305', '20005', 'Vic', 'Aus', 'Reconciliation of suspense accounts ', NULL, 2, 'Passed all questions ', 'N/A', 'N/A', 30),
(43, 54, 'Shelton and Stevens Trading', 'Eum magna corporis sint corrupti quibusdam quidem quam voluptatum ipsam consequatur Aliquid eiusmod deserunt', 'Vitae qui deserunt inventore nisi perspiciatis consectetur alias ut numquam excepteur', 'Porro accusantium est minima vel et cupidatat nihil quas ea sit adipisci consequuntur dignissimos iusto voluptatem rerum tempora', 'Consequat Laboriosam in sequi et ea', 'Consectetur cum aspernatur est officia eius illum nisi impedit minima exercitationem consequuntur', '2023-06-07', '10:30am', 'Expedita sint quasi velit vel ut deserunt', 'Occaecat quaerat rerum dolor voluptas dolore sint quam qui unde voluptatem', '45639', 'Tempore asperiores veniam nulla reprehenderit ad', 'Consectetur cupidatat corporis qui vel', 'sdgdfsh', NULL, 2, 'fn', 'dxfh', 'gfdhxfghdfh', 1),
(44, 54, 'Britt and Bender LLC', 'Vel do ipsum incidunt id soluta quibusdam dolor iste et vel dolorum enim deserunt fuga Rerum irure veniam', 'Vitae qui deserunt inventore nisi perspiciatis consectetur alias ut numquam excepteur', 'a vel et cupidatat nihil quas ea sit adipisci consequuntur dignissimos iusto voluptatem rerum tempora', 'Consequat Laboriosam in sequ', 'Quidem aut voluptates et consequatur nostrum corporis veniam commodi', '2023-06-07', '11:00am', 'Iste aut nostrud repellendus Dolore quam id repudiandae in anim non voluptate id quis', 'Aut voluptate sunt animi volupt', '63385', 'Cum aliquid esse et asperiores aperiam praesentium', 'Maiores aliquid architecto pariatur Quasi in dese', 'demo', 'Nemo laboru', 1, 'dgf', 'dfsf', 'dfg', 1),
(45, 54, 'Potts Avery LLC', 'Aut molestias et odio est velit est vitae corporis cum ipsam in', 'ventore nisi perspiciatis consectetu', 'minima vel et cupidatat nihil quas ea sit adipisci consequuntur', 'Consequat Laboriosam in sequi et ea', 'Quia sed dolorem ex velit irure', '2023-06-07', '12:00pm', 'Repudiandae voluptatem dis', 'Deserunt sit tempore sit neque ex minima eligendi illum vel nobis', '79675', 'Aliqua Et proident reprehenderit enim officia do', 'Do eos mollitia sunt molestiae magna', 'asfd', 'demo treatment', 0, '', '', '', 0),
(46, 54, 'Delacruz Copeland LLC', 'Odit iure exercitationem Nam nisi cumque magna qui quod ipsam expedita voluptatem', 'Vitae qui deserunt in', 'Porro accusantium est minima ', 'Consequat Laboriosam in sequi et ea', 'Minim aperiam nisi autem id velit atque et voluptatibus', '2023-06-07', '1:00pm', 'Quaerat voluptatem Eos ex consequat', 'Voluptate voluptates minima qui minim dicta temporibus doloribus', '38932', 'Ea voluptas omnis non voluptates possimus magnam ', 'Et in aperiam voluptate aut sunt architecto tempor', 'dsgdfh', 'Commodo ', 0, '', '', '', 0),
(47, 54, 'Riley and Cantrell Associates', 'Reiciendis ut non aut repellendus Consequat Dolore libero velit dolorem nostrum rem qui quos ratione', 'Vitae qui deserunt inve', 'minima vel et cupidatat nihil quas ea sit adipisci consequuntur', 'cvdh', 'Dolore reprehenderit vitae est hic blanditiis soluta et dolore sed', '2023-06-07', '3:30pm', 'Dolores in et est mollitia eveniet aliquid in ex', 'Quae fugiat laboris ni', '66064', 'Fugiat voluptate commodi mollit ullamco voluptatem', 'Laudantium odit eos minim accusamus labore facere', '', 'Enim incidunt vel consequatur Quos vero praesentium ut consequat Consequuntur deleniti aliquam voluptatum', 0, '', '', '', 0),
(48, 69, 'Kaufman and Neal Associates', 'Error ad omnis et ex', 'drtdrt', 'rtrtr', 'trtrt', 'Esse excepteur aute', '2023-06-07', '4:00pm', 'Non delectus ', 'Eum maiore', '76204', 'Ab anim au', 'Sed neque i', 'asdasdsasd', 'Aspernatu', 0, '', '', '', 0),
(49, 69, 'Rocha Melton Associatesf', 'Repudiandae est iste est ', 'fghfgh', 'fghfgh', 'fghfgh', 'Sint culpa nulla repudiandae illum explicabo In quos quo', '2023-06-07', '5:00pm', 'ghjgj', 'Totam quia m', '50410', 'Voluptas enim ', 'Exercitationem est maiores ', '', 'Quas beatae s', 0, '', '', '', 0),
(50, 54, 'Harrington and Morse Inc', 'Ea aut fuga Corporis pariatur Delen', 'xgxfh', 'zghfh', 'zdgfh', 'Voluptas sint numquam labore dolor non omnis', '2023-06-07', '4:30pm', 'Placeat ab soluta recus', 'Odit sint deserunt molestiae et adipisicing', '40563', 'Et ipsa sed sint in iure atque qui et hic dolores', 'Cumque proident optio consectetur repudiandae si', 'sfsfsgg', 'Quia qui eiusmod dolore laudantium non', 0, '', '', '', 0),
(55, 54, 'Pollard Compton Traders', 'Dolorum error explicabo Qui at harum quis incidunt exercitation in veritatis delectus', 'sdfgdsfg', 'sgg', 'sgh', 'Odit distinctio Vel non incidid', '2023-06-07', '6:00pm', 'Iste asperiores incididunt nemo consectetur', 'Aut ducimus rerum hic', '74435', 'Optio corporis do voluptas laborum Est cupidita', 'Deleniti ut excepteur perspiciatis doloribus offi', '5', 'Voluptatum facere sed ', 0, '', '', '', 0),
(56, 54, 'Mcfadden and Kirkland LLC', 'Ad aliquam ipsam quae enim eu conse', 'sdgfh', 'dfh', 'dh', 'Dolor dolorem in beatae tempor sequi et v', '2023-06-07', '6:00pm', 'Neque commodi sed corrupti pariatur In magnam', 'Est dolorem et odit quas sint expedita', '45424', 'Consectetur repellendus Quia est ratione aliqua', 'Numquam qui ea totam enim qui id et minus culpa ', '2', 'Esse sunt quae voluptatem q', 0, '', '', '', 0),
(57, 54, 'Underwood Bryant Traders', 'Autem architecto laboriosam aut dicta sunt perferendis doloremque accusantium in ut cumque non quia explicabo Lorem incididunt pariatur Ut', 'Proident amet dolor consequat Sit aut voluptas eligendi enim delectus vel reprehenderit fugit id commodo qui omnis', 'Omnis quasi magnam aperiam veniam dignissimos quo dolores minim pariatur Ut vel rerum est eius', 'Cum irure assumenda quo iste', 'Id magna est consequat Laboris lo', '2023-06-07', '6:00pm', 'Placeat aliqua Ut molestiae et', 'Magnam quam in necessitatibus illo ', '23936', 'Dicta culpa libero excepturi amet quidem praesent', 'Aut fugiat quia fugit consequatur ipsam architect', '-1', 'Voluptatum placeat quasi et sint quam quo dignissimos veniam incidunt', 0, '', '', '', 0),
(58, 54, 'Barlow Nunez Inc', 'Velit laboris unde ipsum quod sit enim delectus architecto eius ipsam', 'Quo ut animi neque excepteur ', 'Pariatur Architecto occaecat voluptas deserunt non aut itaque obcaecati minima sunt', 'Esse porro voluptatum quis et et ea s', 'Necessitatibus voluptas aut suscipit ut cupidatat nostrum aperiam a', '2023-06-07', '7:00pm', 'at molestiae temporibus eum eius qui voluptates dolor', 'Tempore laboris sit fugiat et iste quos ', '78464', 'Nihil quas in qui et qui commodo omnis nulla volup', 'Numquam est dolor non eius qui suscipit ad except', 'Network Security Controls', 'Ex esse vitae ve', 0, '', '', '', 0),
(59, 54, 'Sosa Valdez Traders', 'Nihil est alias nostrum eos aute impedit totam nisi id non similique sapiente qui harum autem rerum', 'Repellendus Autem et eveniet deserunt placeat ', 'Quis aut totam voluptas ipsum ut sit laboris ad', 'Sit ut quis aliquid alias ipsum quia pariatur Nulla', 'Adipisicing dolore quia odit adipisci autem', '2023-06-07', '6:00pm', 'Dolor rerum sit pariatur Sed magna quam officiis ea qui nemo quibusdam eligendi', 'Do excepteur eveniet voluptatum animi placeat', '83437', 'Qui id quas quasi distinctio Officia ipsum a lab', 'Iste at placeat non aliqua Natus irure sed simil', '-1', 'Ad animi et est modi veniam nulla exercitationem tempor saepe', 0, '', '', '', 0),
(60, 54, 'Roman and Mullen Trading', 'Eum irure occaecat', 'Omnis quos dolore deserunt maxime', 'Reprehenderit omnis ', 'Possimus lorem o', 'Totam aliqua Proident ', '2023-06-07', '8:00pm', 'Fugiat harum sit aliq', 'Iusto a consectetur eu comm', '94337', 'Sunt voluptatem tempore est ut', 'india', 'Physical Security Controls', 'Delectus ullam quis', 0, '', '', '', 0),
(61, 54, 'Avery and Vincent Trading', 'Tempore quidem porro odit culpa ut dignissimos et dolore sit', 'Et qui a explicabo Ad rerum reprehenderit occaecat laudantium tenetur minim incididunt id iste voluptatem', 'Dolor animi reiciendis illo voluptates laborum Ullam incididunt reprehenderit voluptatum consectetur ex facilis consequatur natus in optio', 'Sed enim velit eos aut iure corporis soluta ipsum vitae quis repudiandae eos consectetur hic commodi', 'Quisquam consectetur tenetur eu et ipsum illo et cillum magnam id enim officia eum magni pariatur Nulla libero soluta mollitia', '2023-06-08', '10:30am', 'Porro lorem excepturi irure eius fugiat aut corporis aute consequatur beatae hic consectetur', 'Dolore eum et incidunt sint', '68181', 'Tenetur voluptatibus elit in est id eveniet vel ', 'Aut deserunt quam soluta facere vel est excepteur ', '-1', 'Ipsum expedita sed aut voluptatum eaque voluptatem molestias nulla molestias commodo irure cupidatat fuga Accusantium repellendus Omnis', 0, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `as_auditcriteria`
--

CREATE TABLE `as_auditcriteria` (
  `idcriteria` int(11) NOT NULL,
  `cri_control` int(11) DEFAULT NULL,
  `cri_question` text DEFAULT NULL,
  `cri_procedure` text DEFAULT NULL,
  `cri_expected` text DEFAULT NULL,
  `cri_outcome` int(11) DEFAULT NULL,
  `cri_notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `as_auditcriteria`
--

INSERT INTO `as_auditcriteria` (`idcriteria`, `cri_control`, `cri_question`, `cri_procedure`, `cri_expected`, `cri_outcome`, `cri_notes`) VALUES
(1, 3, 'dfds', NULL, 'fsdfsdf', 0, 'sdfsdf'),
(2, 4, 'sdfsdf11133111', NULL, 'sdfsdf', 2, 'sdfsdfsd'),
(3, 3, 'asda', NULL, 'sdasdasd', 0, 'asdasdsa'),
(4, 3, 'dasdasd', NULL, 'asdasdasd', 0, ''),
(6, 8, 'asdasd111ad111', NULL, 'asdasd', 0, 'asdasd'),
(7, 10, 'Do we have it', NULL, 'Have no idea', 1, 'dsdadsasd'),
(8, 11, 'test', NULL, 'YES', 0, 'test'),
(9, 12, '1. Does the department have any written procedures for cash handling and related controls?', NULL, 'NA', 0, 'notes for this question'),
(10, 13, 'test', NULL, 'test', 0, 'test'),
(11, 13, 'test', NULL, 'test', 0, 'test'),
(12, 13, 'have staff been trained ?', NULL, 'all staff should have been trained.', 0, ''),
(13, 14, 'How often is QC performed ', NULL, 'Monthly', 2, 'Not regular enough '),
(14, 15, 'sd fsadf s', NULL, 'sd fdsaf sdf', 1, 's dfdsf sdfa'),
(15, 16, 'Is testing done every day?', NULL, 'Daily assessment ', 1, 'ABZ'),
(16, 17, 'Is there a training manual signed off?', NULL, 'Sign off', 1, 'Sighted evidence'),
(19, 22, 'Tenetur totam adipisicing voluptatum corrupti quaerat', NULL, 'Tempore tempora est culpa accusantium et aliquip iusto nulla aut magni qui ut repudiandae sunt sit rerum nesciunt cupiditate', 1, 'Sit fugiat voluptate'),
(20, 22, 'Labore est debitis ducimus sequi enim id repellendus Est officia quaerat dolorem velit laboris consectetur deserunt a', NULL, 'Sunt optio quas distinctio Sunt commodi voluptas velit sunt officia id', 0, 'Enim blanditiis exce'),
(21, 22, 'Reprehenderit magni quia asperiores ipsum non dicta commodi et', NULL, 'Corporis ut quo doloremque culpa', 1, 'Inventore esse moles'),
(22, 22, 'Sit rerum aliquam elit labore sint praesentium aperiam ut dolor', NULL, 'Et magni iste non voluptas sint est minus quaerat nemo consequatur', 1, 'Laboris accusamus mo'),
(23, 22, 'hiiiiDelectus accusantium ducimus fugiat sit corrupti cupidatat veniam quidem quae nisi quia rem in optio autem', NULL, 'Explicabo Vitae magna beatae do qui voluptas', 2, 'Impedit magnam even'),
(24, 22, 'Anim corporis commodi accusamus odio aute eum sit id earum laborum', NULL, 'Quae non vel laborum Non culpa molestiae exercitationem nulla ipsa inventore quam veniam pariatur Quas qui', 0, 'Dolore neque est vol'),
(25, 22, 'Cillum laboriosam impedit soluta velit optio irure et exercitation ex cillum consequat Maxime voluptas enim ut atque aliquid debitis', NULL, 'Quos consectetur sapiente nobis id in itaque consequatur vitae expedita quo impedit animi voluptatibus dolore quia perspiciatis autem aliquam', 2, 'Voluptatem qui vel e'),
(26, 22, 'Minus dolorem ut qui ut commodi et eu recusandae Expedita laborum distinctio Recusandae Ad', NULL, 'Sint assumenda distinctio Amet do et corrupti quia a', 0, 'Quod repellendus Qu'),
(27, 22, 'Sit qui Nam dolorem mollit sed est qui recusandae Nulla ut modi', NULL, 'Commodi sint quia ut fugiat ex irure et quis ad tempore', 1, 'Repellendus Nesciun'),
(28, 22, 'Ratione duis sed omnis qui est provident in', NULL, 'Obcaecati dolores voluptatem sapiente officia natus provident', 0, 'Et ad in recusandae'),
(30, 24, 'Impedit culpa aut consectetur autem eiusmod qui totam dolores do tempor ullam consequatur', 'Aute sequi atque nobis minus amet saepe blanditiis et eius cum laborum', 'Dolor eaque sapiente est rerum enim eiusmod voluptatem', 0, 'Necessitatibus cupid'),
(31, 26, 'Did all volunteers complete the form  for consent?', 'Sample check ', '100% completion ', 2, 'Some were not asked to do the check '),
(32, 30, 'Have the cameras switched on during hours?', 'Positive and Negative test ', 'All cameras switched on ', 1, 'Some cameras need to be updated '),
(33, 30, 'Supervisor training ', 'Supervisors asked the right questions when reconciling ', 'Supervisor competency ', 1, 'All supervisors '),
(34, 31, 'Molestiae quia ipsa modi consectetur incididunt adipisci voluptas enim ea excepturi quam adipisci laboris quisquam porro', 'Non consequatur consectetur quaerat esse et est illum et facere similique ut beatae maiores in tempor', 'Est qui totam tempore voluptas quia rerum accusamus', 0, 'Et est laborum offic'),
(35, 32, 'Impedit dolore magna fuga Nobis eos enim excepteur eveniet', 'Ab culpa aut mollit esse ut provident officia', 'Rem quos ipsam officia excepturi incididunt dolores tempora repellendus Id dolore', 1, 'Facilis in qui facil'),
(36, 33, 'Omnis voluptate cupiditate neque proident veniam sit ullamco2121', 'Voluptatem sequi eveniet saepe tenetur Nam rerum sed eum modi nisi voluptas quos impedit reprehenderit commodo aliquam est at ut', 'Deleniti quia debitis sed facilis ut omnis fugiat quis velit non laboriosam at', 1, 'Eius optio magni es'),
(37, 35, 'Is there a fire safety checklist?', 'Observation ', 'Pass checklist ', 1, 'Facility manager passed checklist '),
(38, 35, 'Checklist signed off?', 'Observation ', 'Pass', 1, 'Signed off by appropriate authority '),
(39, 37, 'adfdaf', 'dsfsdf', 'fdsfs', 0, 'dsfsdf'),
(40, 38, 'Labels on all barrels ', 'Confirm labels', 'Pass', 2, 'N/A'),
(41, 42, 'Has a manual been created?', 'Site manual ', 'Sign off', 1, 'Sighted all documentation ');

-- --------------------------------------------------------

--
-- Table structure for table `as_audits`
--

CREATE TABLE `as_audits` (
  `idaudit` int(11) NOT NULL,
  `au_user` int(11) DEFAULT NULL,
  `au_assessment` int(11) DEFAULT NULL,
  `au_descript` varchar(255) DEFAULT NULL,
  `au_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `as_audits`
--

INSERT INTO `as_audits` (`idaudit`, `au_user`, `au_assessment`, `au_descript`, `au_date`) VALUES
(1, 1, 1, 'sdasda', '2015-11-18'),
(3, 1, -1, 'NO CONN', '2015-11-19'),
(4, 1, -1, 'adasdasdasd', '2015-11-20');

-- --------------------------------------------------------

--
-- Table structure for table `as_bia`
--

CREATE TABLE `as_bia` (
  `idbia` int(11) NOT NULL,
  `bia_user` int(11) DEFAULT NULL,
  `bia_activity` varchar(255) DEFAULT NULL,
  `bia_descript` longtext DEFAULT NULL,
  `bia_priority` varchar(255) DEFAULT NULL,
  `bia_impact` longtext DEFAULT NULL,
  `bia_time` varchar(50) DEFAULT NULL,
  `bia_action` text DEFAULT NULL,
  `bia_resource` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `as_bia`
--

INSERT INTO `as_bia` (`idbia`, `bia_user`, `bia_activity`, `bia_descript`, `bia_priority`, `bia_impact`, `bia_time`, `bia_action`, `bia_resource`) VALUES
(1, 4, 'test', 'test', 'High', 'Reputational', '10', 'edit', 'test'),
(2, 4, 'tet', 'test', 'High', 'Financial', '12 hours', 'edit', 'test'),
(3, 5, 'Call Centre', 'Operators call staff ', 'Medium', 'Reputational', '12 hours', 'add', 'Phone jacks '),
(4, 9, 'Fire drill', 'ABC', 'High', 'Financial', '12 hours', 'add', ''),
(6, 11, 'testing Dicta quis velit enim nulla enim et animi nostrud aliquam quasi optioSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atq', 'Elit in consecteturSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad evenietSit culpa ullamco iure temporibus eos qui magna hic atque amet reprehenderit rerum quas quis ea mollit qui ad eveniet', 'Low', 'Financial', '76', 'edit', 'Aute iure aliquid ut'),
(11, 20, 'Minim excepteur ut doloribus quibusdam nisi reiciendis facere nulla officia molestias magna aut sed totam sit', 'Quas et voluptatem pLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets coLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets co', 'Medium', 'Financial', '45 hours ', 'add', 'Ex quis in sit aute Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets coLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets co'),
(12, 20, 'Ut eligendi alias sunt vitae quod eum atque nihil facere consectetur nisi', 'Minima corporis impeLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets co', 'Medium', 'Reputational', '12', 'add', 'Qui voluptatum accusLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets co'),
(13, 43, 'Warehouse alignment with boxes ', 'The warehouse must be kept well aligned so that boxes can be stored ', 'Medium', 'Financial', '48 hours ', 'add', 'Machine funding '),
(14, 24, 'Eu ea ipsum non culpa sed eum sequi ullamco nostrum dolorem ', 'Ea enim eum vitae si', 'Low', 'Compliance', '10', 'edit', 'Est quis sed distinc'),
(15, 50, 'Volunteer program ', 'Creating a volunteer program ', 'Medium', 'Financial', '50 hours ', 'edit', 'Volunteer manager and funding '),
(16, 54, 'AML Reporting ', 'Provide suspicious reports within 72 hours ', 'High', 'Financial', '4 hours ', 'edit', '50 staff '),
(17, 54, 'Critical system upgrade', 'System upgrades ', 'High', 'Financial', '4', 'add', '3 staff');

-- --------------------------------------------------------

--
-- Table structure for table `as_cat`
--

CREATE TABLE `as_cat` (
  `idcat` int(11) NOT NULL,
  `cat_risk` int(11) DEFAULT NULL,
  `cat_name` varchar(255) DEFAULT NULL,
  `cat_descript` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `as_cat`
--

INSERT INTO `as_cat` (`idcat`, `cat_risk`, `cat_name`, `cat_descript`) VALUES
(173, 1, 'Incorporation - equity allocation,  vesting, share buy back', NULL),
(174, 1, 'Fund Raising - raising money, dilution, personal expenses & company expenses ', NULL),
(175, 1, 'IP Agreement', NULL),
(176, 1, 'Hiring - founder employment, Hiring, Termination ', NULL),
(177, 1, 'Founder skills & experience ', NULL),
(178, 2, 'Product market fit', NULL),
(179, 2, 'Customer segments ', NULL),
(180, 2, 'Barriers to entry ', NULL),
(181, 2, 'Market adoption', NULL),
(182, 2, 'Exit strategy ', NULL),
(183, 2, 'Customer demand', NULL),
(184, 2, 'Increased competition', NULL),
(185, 2, 'Adoption of new Technology or Service', NULL),
(186, 2, 'New Business Opportunity', NULL),
(187, 3, 'Non-compliance with regulations ', NULL),
(188, 3, 'Insurance coverage', NULL),
(189, 3, 'Workers Compensation', NULL),
(190, 3, 'Policies, procedures or expectations, which may be set by contracts, customers', NULL),
(191, 3, 'Negligence', NULL),
(192, 3, 'Codes of Practice', NULL),
(193, 3, 'Lack of licence or permits', NULL),
(194, 3, 'Police checks and background checks for employees and contractors', NULL),
(195, 4, 'Non-compliance with state and national privacy laws on recording, storing and disposing of customer information', NULL),
(196, 4, 'Records Management', NULL),
(197, 4, 'Cyber Security breaches due to Weak passwords that are used repeatedly, Phishing, System vulnerabilities', NULL),
(198, 5, 'Financial Markets', NULL),
(199, 5, 'Unemployment', NULL),
(200, 5, 'Mergers and Acquistion', NULL),
(201, 5, 'Competition', NULL),
(202, 6, 'Financial Viability', NULL),
(203, 6, 'Lack of Sales & Marketing', NULL),
(204, 6, 'Planning & Scoping', NULL),
(205, 6, 'Qualiy of execution', NULL),
(206, 6, 'Resourcing', NULL),
(207, 6, 'Customer interaction and after-sales service', NULL),
(208, 6, 'Service level agreements', NULL),
(209, 6, 'Non existent contracts', NULL),
(210, 7, 'Government/Policy changes', NULL),
(211, 7, 'Laws & Regulations', NULL),
(212, 8, 'Employee capability', NULL),
(213, 8, 'Harrassment & Unfair Dismissal', NULL),
(214, 8, 'Fraudulent acivity (Internal & External)', NULL),
(215, 8, 'Staff Absence ', NULL),
(216, 8, 'Illness or retirement of key staff', NULL),
(217, 8, 'Sucession planning', NULL),
(218, 9, 'Capacity', NULL),
(219, 9, 'Design', NULL),
(220, 9, 'Execution', NULL),
(221, 9, 'Suppliers & Dependancies', NULL),
(222, 10, 'Data Integrity', NULL),
(223, 10, 'Data & systems availabiliy', NULL),
(224, 10, 'Development & Deployment', NULL),
(225, 10, 'Maintenance', NULL),
(226, 10, 'Availability of assets', NULL),
(227, 10, 'Capability of assets', NULL),
(228, 10, 'Access to capital', NULL),
(229, 10, 'Complexity', NULL),
(230, 11, 'Cash flow & budgetary requirements', NULL),
(231, 11, 'Ad hoc income', NULL),
(232, 11, 'Tax  & GST obligations', NULL),
(233, 11, 'Creditor and debtor management', NULL),
(234, 11, 'Remuneration', NULL),
(235, 11, 'Customers defaulting on payments', NULL),
(236, 11, 'Depreciation of assets', NULL),
(237, 11, 'Accounting and Financial Management ', NULL),
(238, 12, 'Individual safety', NULL),
(239, 12, 'Workplace safety', NULL),
(240, 12, 'Public safety', NULL),
(241, 12, 'Dangerous objects & Substances', NULL),
(242, 12, 'First Aid', NULL),
(243, 12, 'Safety and appropriateness of products or services delivered', NULL),
(244, 13, 'Loss or damage due to accidents ', NULL),
(245, 13, 'Natural disasters such as fire, flood, hail or storms', NULL),
(246, 13, 'Property damage caused by burst water pipes', NULL),
(247, 13, 'Power failure', NULL),
(248, 13, 'Security of the business premises, assets and people', NULL),
(249, 14, 'Conduct of the entity', NULL),
(250, 14, 'Complaints Management', NULL),
(251, 14, 'Quality and appropriateness of service ', NULL),
(252, 14, 'Customer interaction and ', NULL),
(253, 14, 'Conduct of employees or other individuals ', NULL),
(254, 15, 'Equipment used for operations ', NULL),
(255, 15, 'Maintenance', NULL),
(256, 15, 'Depreciation', NULL),
(257, 15, 'Upgrade', NULL),
(258, 16, 'Inappropriate organisational structure ', NULL),
(259, 16, 'Management of external stakeholders', NULL),
(260, 16, 'Identifying, establishing and maintaining appropriate relationships', NULL),
(316, 17, 'Manual tasks', NULL),
(317, 17, 'Gravity', NULL),
(318, 17, 'Restricted Space', NULL),
(319, 17, 'Other', NULL),
(320, 18, 'Electricity', NULL),
(321, 18, 'LPG Gas', NULL),
(322, 18, 'Pressurised containsers', NULL),
(323, 18, 'Other', NULL),
(324, 19, 'Machinery (fixed)', NULL),
(325, 19, 'Machinery (portable)', NULL),
(326, 19, 'Hand Tools', NULL),
(327, 19, 'Vehicles/ trailers', NULL),
(328, 19, 'Other', NULL),
(329, 20, 'Non Hazardous Chemicals', NULL),
(330, 20, 'Hazardous Chemical', NULL),
(331, 20, 'Radiation', NULL),
(332, 20, 'Fumes, Vapours or Dust', NULL),
(333, 20, 'Other', NULL),
(334, 21, 'Buildings and fixtures', NULL),
(335, 21, 'Driveways and Paths', NULL),
(336, 21, 'Workshops and work  rooms', NULL),
(337, 21, 'Playground equipment', NULL),
(338, 21, 'Furniture', NULL),
(339, 21, 'Swimming Pool', NULL),
(340, 21, 'Slips and Trips', NULL),
(341, 21, 'Other', NULL),
(342, 45, 'Noise', NULL),
(343, 45, 'Sun Exposure', NULL),
(344, 45, 'Water', NULL),
(345, 45, 'Animals/Insects', NULL),
(346, 45, 'Storms/weather', NULL),
(347, 45, 'Temparature', NULL),
(348, 45, 'Inadequate Light', NULL),
(349, 45, 'Other', NULL),
(350, 22, 'Bodily Fluid', NULL),
(351, 22, 'Viruses/Disease', NULL),
(352, 22, 'Blood/Cuts ', NULL),
(353, 22, 'Other', NULL),
(354, 23, 'Apprentices and students', NULL),
(355, 23, 'Staff', NULL),
(356, 23, 'Parents/Others', NULL),
(357, 23, 'Physical', NULL),
(358, 23, 'Physchological/stress', NULL),
(359, 23, 'Other', NULL),
(360, 24, 'Fire', NULL),
(361, 24, 'Asbestos', NULL),
(362, 25, 'Contamination or deteriarations', NULL),
(363, 25, 'Cleanliness', NULL),
(364, 25, 'Regulatory requirements', NULL),
(365, 25, 'Labelling & Allergies', NULL),
(366, 25, 'Alcohol & Intoxication', NULL),
(367, 26, 'Being Cut or Stabbed', NULL),
(368, 26, 'Shearing or friction', NULL),
(369, 26, 'Vibration', NULL),
(370, 26, 'Struck, Crushed or Entangled', NULL),
(371, 33, 'Budgeting', NULL),
(372, 33, 'Sponsorship', NULL),
(373, 33, 'Lack of financial viability', NULL),
(374, 33, 'Discretion limits on expenses', NULL),
(375, 33, 'Lack of Audits', NULL),
(376, 33, 'Fraud (Internal & External)', NULL),
(377, 33, 'Inaccurate and/or insufficient financial information ', NULL),
(378, 33, 'Tax management ', NULL),
(379, 33, 'Debtor & Creditor management', NULL),
(380, 34, 'Animals', NULL),
(381, 34, 'Festivals/Events', NULL),
(382, 34, 'Fire', NULL),
(383, 34, 'Food & Drink', NULL),
(384, 34, 'Machines', NULL),
(385, 34, 'Vehicles', NULL),
(386, 34, 'Damage to property', NULL),
(387, 35, 'Acting in breach of trust ', NULL),
(388, 35, 'Incorporation', NULL),
(389, 35, 'Non-compliance with regulations (such as changes to workplace health and safety standards)', NULL),
(390, 35, 'Insurance coverage', NULL),
(391, 35, 'Workers Compensation', NULL),
(392, 35, 'Policies, procedures or expectations, which may be set by contracts, customers', NULL),
(393, 35, 'Negligence', NULL),
(394, 35, 'Codes of Practice', NULL),
(395, 35, 'Lack of licence or permits', NULL),
(396, 36, 'Non-compliance with state and national privacy laws on recording, storing and disposing of customer information.', NULL),
(397, 36, 'Availability of Systems ', NULL),
(398, 36, 'Integrity of systems', NULL),
(399, 36, 'Records Management', NULL),
(400, 36, 'Cyber Security breaches due to; Weak passwords that are used repeatedly, Phishing, System vulnerabilities', NULL),
(401, 37, 'Supervision of Volunteers', NULL),
(402, 37, 'Code of Conduct', NULL),
(403, 37, 'Training', NULL),
(404, 37, 'Member protection policy', NULL),
(405, 37, 'Police checks and background checks for employees and contractors', NULL),
(406, 38, 'Government/Policy changes', NULL),
(407, 38, 'Laws & Regulations', NULL),
(408, 39, 'Employee capability', NULL),
(409, 39, 'Poor staff recruitment and training ', NULL),
(410, 39, 'Lack of beneficiary welfare or safety ', NULL),
(411, 39, 'Harrassment & Unfair Dismissal', NULL),
(412, 39, 'Staff Absence ', NULL),
(413, 39, 'Illness of key staff', NULL),
(414, 39, 'Sucession planning', NULL),
(415, 40, 'Capacity planning ', NULL),
(416, 40, 'Design', NULL),
(417, 40, 'Execution', NULL),
(418, 40, 'Suppliers & Dependancies', NULL),
(419, 41, 'Individual safety ', NULL),
(420, 41, 'Workplace safety', NULL),
(421, 41, 'Public safety', NULL),
(422, 41, 'Dangerous Objects & Substances', NULL),
(423, 41, 'First Aid', NULL),
(424, 41, 'Safety and appropriateness of products or services delivered', NULL),
(425, 42, 'Loss or damage due to accidents ', NULL),
(426, 42, 'Natural disasters such as fire, flood, hail or storms', NULL),
(427, 42, 'Power failure', NULL),
(428, 42, 'Security of the business premises, assets and people', NULL),
(429, 43, 'Demographic changes such as an increase in the size of beneficiary group ', NULL),
(430, 43, 'Poor public perception and reputation', NULL),
(431, 43, 'Viability of product or service associated ', NULL),
(432, 43, 'Conduct of employees or members', NULL),
(433, 44, 'Management of external stakeholders', NULL),
(434, 44, 'Identifying, establishing and maintaining an appropriate relationship', NULL),
(435, 44, 'Inappropriate organisational structure ', NULL),
(436, 44, 'Trustee body lacks relevant skills or commitment', NULL),
(437, 44, 'Conflicts of interest', NULL),
(438, 27, 'Unauthorised activity - Rogue trading involving staff', NULL),
(439, 27, 'Theft & Fraud - Inernal Fraud invovling staff', NULL),
(440, 27, 'Theft & Fraud - Intentional theft and malicious damage, destruction or sabotage of assets involving ANZ staff', NULL),
(441, 27, 'Theft & Fraud - Unethical or corrupt activities (smullging, tax evasion, bribes, kick backs)', NULL),
(442, 27, 'Theft & Fraud - Insider trading', NULL),
(443, 28, 'Theft & Fraud - Theft or robbery by an external party', NULL),
(444, 28, 'Theft & Fraud - Fraud by an external party', NULL),
(445, 28, 'Systems security - Damage to systems due to external hacking or malware', NULL),
(446, 28, 'Systems security - Theft and or unauthorised access to information held within systems by an external party', NULL),
(447, 46, 'Employee relations - Inappropriate employee terminatin, redundancy and or retrenchment', NULL),
(448, 46, 'Employee relations - Employee remuneration/benefits/conditions are not in accordance with employment agreement or law', NULL),
(449, 46, 'Employee relations - Inability to attract, retain or effectively deploy/train capable staff or required skill or experience', NULL),
(450, 46, 'Safe environment - Inadequate workplace health, safety or wellbeing provided to staff or the public', NULL),
(451, 46, 'Diversity & discrimination - Inadequate diversity and or anit discrimination practices within the workplace', NULL),
(452, 29, 'Suitability, disclosure and fiduciary - Management of client/customer/member funds entrusted ', NULL),
(453, 29, 'Suitability, disclosure and fiduciary - Inadequate identification of client/customers and their needs in order to provide suitable products or services', NULL),
(454, 29, 'Suitability, disclosure and fiduciary - Inadequate disclosure of required information to clients/customers', NULL),
(455, 29, 'Suitability, disclosure and fiduciary - Inadequate protection of client/customer/employee data, including misuse of restricted/confidential or commericially sensitive information', NULL),
(456, 29, 'Suitability, disclosure and fiduciary - Inappropriate sales practices to maximise sales rather than in client/customers best interests', NULL),
(457, 29, 'Suitability, disclosure and fiduciary - Inappropriate client/customer lending practices', NULL),
(458, 29, 'Improper business or market practices - Anti competitive practices/behaviours and ir market manipulation', NULL),
(459, 29, 'Improper business or market practices - Unethical, improper business or unconscionable trade/mrket practices', NULL),
(460, 29, 'Improper business or market practices - Insder trading activities (on internal accounts) ', NULL),
(461, 29, 'Improper business or market practices - Activities are undertaken outside of relevant banking or regulatory licenses', NULL),
(462, 29, 'Improper business or market practices - Involvement in money laundering/terrorist financing activities', NULL),
(463, 29, 'Improper business or market practices - Dealing in a manner that contravenes global economic and trade sanctions', NULL),
(464, 29, 'Improper business or market practices - Failure to establish mandated governance and/or prudential arrangements', NULL),
(465, 29, 'Improper business or market practices - Inadequate customer/client/member complaints management', NULL),
(466, 29, 'Improper business or market practices - Failure to actively identify/manage a conflict of interest', NULL),
(467, 29, 'Advisory activities - Incorrect advisory process provided to client/customer', NULL),
(468, 29, 'Product flaws - Product defects due to inadequate product design, delivery or maintenance', NULL),
(469, 29, 'Product flaws - Model error due to inadequate modeldesign, delivery or operation', NULL),
(470, 29, 'Selection, sponsorship and exppsure - Exceeding customer/client exposure limits', NULL),
(471, 30, 'Disasters and othe events - Damage to physical assets due to natural disaster or disruption event', NULL),
(472, 30, 'Disasters and othe events - Business disruption due to natural disaster or disruption event', NULL),
(473, 31, 'Systems - Business disruption due to hardware or software failure', NULL),
(474, 31, 'Systems - Business disruption due to external telecommunications or utility failure', NULL),
(475, 32, 'Transaction capture, execution and maintenance - Transaction error due to human processing error', NULL),
(476, 32, 'Transaction capture, execution and maintenance - Transaction errors due to system development, proramming or logical error', NULL),
(477, 32, 'Transaction capture, execution and maintenance - Inadequate maintenance of transaction and/or product reference data', NULL),
(478, 32, 'Transaction capture, execution and maintenance - Inadequate management of collateral/ security ', NULL),
(479, 32, 'Customer intake and documentation - Inadequate preparation, collection or maintenance of clien/customer and legal documentation', NULL),
(480, 32, 'Customer intake and documentation - Inadequate onboarding of client/customer', NULL),
(481, 32, 'Customer / client account management - Unauthorised access granted to client/custmer accounts', NULL),
(482, 32, 'Customer / client account management - Inadequate maintenance of client/customer electronic records', NULL),
(483, 32, 'Customer / client account management - Negligent loss or damage of client/custoer assets', NULL),
(484, 32, 'Trade counterparties - Trade counterparty misperformance or disputes', NULL),
(485, 32, 'Outsourcing & 3rd Party Failures - Vendor / supplier / outsource provider dispute', NULL),
(486, 32, 'Outsourcing & 3rd Party Failures - Vendor / supplier / oursourced provider misperformance or permanent loss', NULL),
(487, 32, 'Regulatory reporting failures - Failure to meet external mandatory reporting, disclosure and approval obligations', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `as_compliancestandard`
--

CREATE TABLE `as_compliancestandard` (
  `idcompliance` int(11) NOT NULL,
  `com_user_id` int(11) NOT NULL,
  `com_organiseinfo` varchar(255) DEFAULT NULL,
  `com_scope` longtext DEFAULT NULL,
  `com_objective` longtext DEFAULT NULL,
  `com_controls` varchar(255) DEFAULT NULL,
  `com_risk` longtext DEFAULT NULL,
  `com_status` varchar(255) DEFAULT NULL,
  `com_documentation` varchar(255) DEFAULT NULL,
  `com_monitoring` longtext CHARACTER SET utf32 COLLATE utf32_general_ci DEFAULT NULL,
  `com_training` longtext DEFAULT NULL,
  `com_officer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `as_consequence`
--

CREATE TABLE `as_consequence` (
  `idconsequence` int(11) NOT NULL,
  `con_consequence` varchar(255) DEFAULT NULL,
  `con_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `as_consequence`
--

INSERT INTO `as_consequence` (`idconsequence`, `con_consequence`, `con_value`) VALUES
(1, 'Insignificant', 1),
(2, 'Minor', 2),
(3, 'Moderate', 3),
(4, 'Major', 4),
(5, 'Severe', 5);

-- --------------------------------------------------------

--
-- Table structure for table `as_context`
--

CREATE TABLE `as_context` (
  `idcontext` int(11) NOT NULL,
  `cx_user` int(11) DEFAULT NULL,
  `cx_objectives` longtext DEFAULT NULL,
  `cx_processes` longtext DEFAULT NULL,
  `cx_products` longtext DEFAULT NULL,
  `cx_projects` longtext DEFAULT NULL,
  `cx_systems` longtext DEFAULT NULL,
  `cx_relation` longtext DEFAULT NULL,
  `cx_internallosses` longtext DEFAULT NULL,
  `cx_externallosses` longtext DEFAULT NULL,
  `cx_competitors` longtext DEFAULT NULL,
  `cx_environment` longtext DEFAULT NULL,
  `cx_regulatory` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `as_context`
--

INSERT INTO `as_context` (`idcontext`, `cx_user`, `cx_objectives`, `cx_processes`, `cx_products`, `cx_projects`, `cx_systems`, `cx_relation`, `cx_internallosses`, `cx_externallosses`, `cx_competitors`, `cx_environment`, `cx_regulatory`) VALUES
(1, 2, '', '', '', '', '', '', '', '', '', '', ''),
(2, 1, 'objectives', 'processes', 'Products', 'Projects', 'Systrems', 'Relations', 'losses1', 'losses2', 'competitors', 'environment', 'regulatory'),
(3, 4, 'business strategies', 'processes', 'products and services', 'projects and initiatives', 'critical technology', 'key relationship', 'internal losses', 'external losses', 'competitors', 'changes in external env', 'env'),
(4, 5, '', '', '', '', '', '', '', '', '', '', ''),
(5, 6, '', '', '', '', '', '', '', '', '', '', ''),
(6, 7, '', '', '', '', '', '', '', '', '', '', ''),
(7, 8, '', '', '', '', '', '', '', '', '', '', ''),
(8, 9, '', '', '', '', '', '', '', '', '', '', ''),
(9, 10, '', '', '', '', '', '', '', '', '', '', ''),
(10, 11, '', '', '', '', '', '', '', '', '', '', ''),
(11, 12, '', '', '', '', '', '', '', '', '', '', ''),
(12, 13, '', '', '', '', '', '', '', '', '', '', ''),
(13, 14, '', '', '', '', '', '', '', '', '', '', ''),
(14, 15, '', '', '', '', '', '', '', '', '', '', ''),
(15, 16, '', '', '', '', '', '', '', '', '', '', ''),
(16, 17, '', '', '', '', '', '', '', '', '', '', ''),
(17, 18, '', '', '', '', '', '', '', '', '', '', ''),
(18, 19, '', '', '', '', '', '', '', '', '', '', ''),
(19, 20, 'Dignissimos et dolorLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets co', 'Quis sed aperiam estLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets co', 'Rerum qui delectus Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets co', 'Qui est voluptatibusLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets co', 'Officia eiusmod sitLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets co', 'Rerum qui incididuntLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets co', 'Inventore amet quiaLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets co', 'Obcaecati repellenduLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets co', 'Impedit rem totam cLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets co', 'Deserunt beatae accuLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets co', 'Aut est quasi eos iLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets co'),
(20, 21, '', '', '', '', '', '', '', '', '', '', ''),
(21, 22, '', '', '', '', '', '', '', '', '', '', ''),
(22, 23, '', '', '', '', '', '', '', '', '', '', ''),
(23, 24, '', '', '', '', '', '', '', '', '', '', ''),
(24, 25, '', '', '', '', '', '', '', '', '', '', ''),
(25, 26, '', '', '', '', '', '', '', '', '', '', ''),
(26, 27, 'We run a factory ', 'Manufacturing ', 'Toys ', 'Building new factoryyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', 'Abucus ', 'Broker bank suppliers ', '1,000,000', '1,000,,000 competitor ', 'Marcus LTD', 'Nothing yet ', 'new legislation'),
(27, 28, '', '', '', '', '', '', '', '', '', '', ''),
(28, 29, '', '', '', '', '', '', '', '', '', '', ''),
(29, 30, '', '', '', '', '', '', '', '', '', '', ''),
(30, 31, '', '', '', '', '', '', '', '', '', '', ''),
(31, 32, '', '', '', '', '', '', '', '', '', '', ''),
(32, 33, '', '', '', '', '', '', '', '', '', '', ''),
(33, 34, '', '', '', '', '', '', '', '', '', '', ''),
(34, 35, '', '', '', '', '', '', '', '', '', '', ''),
(35, 36, '', '', '', '', '', '', '', '', '', '', ''),
(36, 37, '', '', '', '', '', '', '', '', '', '', ''),
(37, 38, '', '', '', '', '', '', '', '', '', '', ''),
(38, 39, '', '', '', '', '', '', '', '', '', '', ''),
(39, 40, '', '', '', '', '', '', '', '', '', '', ''),
(40, 41, '', '', '', '', '', '', '', '', '', '', ''),
(41, 42, '', '', '', '', '', '', '', '', '', '', ''),
(42, 43, '', '', '', '', '', '', '', '', '', '', ''),
(43, 44, '', '', '', '', '', '', '', '', '', '', ''),
(44, 45, '', '', '', '', '', '', '', '', '', '', ''),
(45, 46, '', '', '', '', '', '', '', '', '', '', ''),
(46, 47, '', '', '', '', '', '', '', '', '', '', ''),
(47, 48, '', '', '', '', '', '', '', '', '', '', ''),
(48, 49, '', '', '', '', '', '', '', '', '', '', ''),
(49, 50, 'Hello youuuuuuuuuuu', 'Volunteering ', 'Donating time and food ', 'Food bank ', 'Admin system ', 'Volunteer partners ', '1mill', 'Other charities going out of business ', 'Foodbank group ', 'None ', 'H&S '),
(50, 51, '', '', '', '', '', '', '', '', '', '', ''),
(51, 52, '', '', '', '', '', '', '', '', '', '', ''),
(52, 53, '', '', '', '', '', '', '', '', '', '', ''),
(53, 54, 'Ex fugiat fuga Aute', 'Corporis fugiat pro', 'Sit nisi perferendis', 'Molestias inventore ', 'Doloribus aut offici', 'Qui eiusmod est nes', 'Inventore ut repelle', 'Aliqua Velit offici', 'Quo rerum ratione at', 'Facere sequi sint in', 'Labore aute repudian'),
(54, 55, '', '', '', '', '', '', '', '', '', '', ''),
(55, 56, '', '', '', '', '', '', '', '', '', '', ''),
(56, 57, '', '', '', '', '', '', '', '', '', '', ''),
(57, 58, '', '', '', '', '', '', '', '', '', '', ''),
(58, 59, '', '', '', '', '', '', '', '', '', '', ''),
(59, 60, '', '', '', '', '', '', '', '', '', '', ''),
(60, 61, '', '', '', '', '', '', '', '', '', '', ''),
(61, 62, '', '', '', '', '', '', '', '', '', '', ''),
(62, 63, '', '', '', '', '', '', '', '', '', '', ''),
(63, 64, '', '', '', '', '', '', '', '', '', '', ''),
(64, 65, '', '', '', '', '', '', '', '', '', '', ''),
(65, 66, '', '', '', '', '', '', '', '', '', '', ''),
(66, 67, '', '', '', '', '', '', '', '', '', '', ''),
(67, 68, '', '', '', '', '', '', '', '', '', '', ''),
(68, 69, '', '', '', '', '', '', '', '', '', '', ''),
(69, 70, '', '', '', '', '', '', '', '', '', '', ''),
(70, 115, '', '', '', '', '', '', '', '', '', '', ''),
(71, 116, '', '', '', '', '', '', '', '', '', '', ''),
(72, 117, 'Reprehenderit sed c', 'Id ut fugiat qui ea', 'At facere quas aut m', 'Molestiae adipisci r', 'Rem et quis quo dele', 'Dolore cupidatat non', 'Labore commodo aut e', 'Officiis rerum conse', 'Optio aperiam perfe', 'Vel dolorum nobis et', 'Tenetur in cupidatat');

-- --------------------------------------------------------

--
-- Table structure for table `as_controls`
--

CREATE TABLE `as_controls` (
  `id` int(11) NOT NULL,
  `control_name` varchar(255) DEFAULT NULL,
  `control_descript` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `as_controls`
--

INSERT INTO `as_controls` (`id`, `control_name`, `control_descript`) VALUES
(1, 'Access Controls', NULL),
(2, 'Data Security Controls', NULL),
(3, 'Network Security Controls', NULL),
(4, 'Application Security Controls', NULL),
(5, 'Physical Security Controls', NULL),
(6, 'Change Management Controls', NULL),
(7, 'Incident Response Controls', NULL),
(8, 'Compliance Controls', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `as_details`
--

CREATE TABLE `as_details` (
  `iddetail` int(11) NOT NULL,
  `as_assessment` int(11) DEFAULT NULL,
  `as_risk` int(11) DEFAULT NULL,
  `as_hazard` int(11) DEFAULT NULL,
  `as_descript` text DEFAULT NULL,
  `as_like` int(11) DEFAULT NULL,
  `as_consequence` int(11) DEFAULT NULL,
  `as_rating` int(11) DEFAULT NULL,
  `as_effect` text DEFAULT NULL,
  `as_action` int(11) DEFAULT NULL,
  `as_duedate` date DEFAULT NULL,
  `as_owner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `as_details`
--

INSERT INTO `as_details` (`iddetail`, `as_assessment`, `as_risk`, `as_hazard`, `as_descript`, `as_like`, `as_consequence`, `as_rating`, `as_effect`, `as_action`, `as_duedate`, `as_owner`) VALUES
(4, 1, 5, 200, 'Description111', 5, 1, NULL, 'Effective11', 5, '2015-11-17', 'Matej1'),
(5, 1, 4, 196, 'sadasd', 1, 5, NULL, 'asdasd', 1, '2015-11-17', 'asdasd'),
(6, 6, 18, 321, 'dadasdasd', 3, 1, 1, 'dasdasd', 4, '2015-11-17', 'ddsdasd'),
(7, 1, 5, 200, 'adasd', 3, 3, 3, 'adsadasd', 2, '2015-11-17', 'adsasd'),
(8, 8, 21, 336, 'adasdasdas', 2, 3, 3, 'adasda', 4, '2015-11-17', 'adsasd'),
(9, 9, 29, 454, 'sdasd', 3, 2, 2, 'asdasdasd', 2, '2015-11-17', 'adasdasd'),
(10, 9, 30, 471, 'asdasd', 5, 1, 1, 'asdasdasd', 2, '2015-11-17', 'adsasd'),
(11, 9, 29, 462, 'fdsfsfdf', 2, 3, 3, 'sdfsdf', 5, '2015-11-29', 'sdfsdfsdf'),
(12, 10, 2, 178, 'description', 1, 1, 2, 'test', 1, '2016-01-07', 'test'),
(13, 13, 1, 173, 'description', 1, 1, 2, 'effectivness', 1, '2016-01-11', 'me'),
(14, 16, 1, 173, 'risk description', 1, 1, 2, 'control effectiveness', 1, '2016-01-15', 'action owner'),
(15, 12, 18, 321, 'test', 2, 1, 2, 'test', 2, '2016-01-27', 'test'),
(16, 10, 3, 187, 'test', 1, 1, 2, 'test', 1, '2016-01-27', 'test'),
(17, 10, 4, 197, 'test', 2, 1, 2, 'test', 2, '2016-01-27', 'test'),
(18, 18, 2, 180, 'test', 1, 1, 2, 'test', 2, '2016-01-27', 'test'),
(19, 18, 6, 203, 'test', 2, 1, 2, 'tset', 2, '2016-01-27', 'test'),
(20, 19, 20, 331, 'Staff could be exposed to radiation', 2, 4, 4, 'Unassessed ', 5, '2023-02-25', 'jay K '),
(21, 20, 5, 199, 'dfgdsf g df', 3, 2, 2, ' gdsg dsfg', 3, '2023-03-17', 'sd gdfsg dfs gdg'),
(22, 21, 22, 352, 'Blood testing ', 3, 5, 4, 'Effective ', 3, '2023-03-06', 'Jay'),
(23, 22, 24, 360, 'Fire hazard', 2, 4, 4, 'Effective', 3, '2023-03-08', 'Jay'),
(24, 23, 19, 325, 'Eiusmod qui minim sa', 2, 3, 3, 'Debitis quos veniam', 4, '2023-03-13', 'Nisi quibusdam consequatur dolor reiciendis'),
(25, 25, 1, 176, 'Pariatur Eos rerum ', 2, 4, 4, 'Nisi rerum architect', 4, '2023-03-13', 'Est placeat eum sequi aut ipsa modi sunt repudiandae'),
(33, 41, 42, 425, 'Sapiente cupidatat q', 5, 3, 1, 'Quibusdam sed ullam ', 2, '2023-03-14', 'Maxime qui reiciendis totam dolorem ex'),
(34, 49, 17, 316, 'Volunteers may hurt back while loading boxes ', 1, 3, 4, 'Need to do testing ', 6, '2023-03-31', 'marcus'),
(35, 50, 23, 359, 'Members slips and trips ', 2, 3, 3, 'Effective ', 1, '2023-03-24', 'Max '),
(36, 51, 41, 421, 'Patrons Health & Safety ', 4, 4, 2, 'Effective ', 3, '2023-03-26', 'Jay'),
(37, 52, 37, 401, 'Fraud and theft of money ', 2, 3, 3, 'Effective ', 1, '2023-07-30', 'Jay'),
(38, 52, 38, 406, 'Government making things hard for charities ', 5, 1, 1, 'Effective ', 4, '2023-05-31', 'Jay '),
(39, 56, 24, 360, 'Fire causes entire factory to burn down ', 2, 3, 3, 'Effective', 3, '2023-03-31', 'Jayson'),
(40, 57, 24, 360, 'Floor catches fire ', 2, 3, 3, 'Effectiveness ', 4, '2023-03-31', 'Jay'),
(43, 62, 17, 316, 'sdasdas', 2, 2, 2, 'asdas', 1, '2023-04-14', 'sadasdas'),
(44, 65, 2, 179, 'sadsadsads', 2, 4, 4, 'dasdasdas', 2, '2023-04-20', 'asdasdas'),
(45, 67, 6, 203, 'sdsadsa', 2, 3, 3, 'sadasdsa', 2, '2023-04-23', 'sadsad'),
(47, 72, 20, 330, 'Accusantium consequa', 1, 2, 3, 'Soluta quas voluptas', 2, '2023-05-05', 'Dolorum ut aspernatur sequi excepturi sed'),
(48, 75, 4, 196, 'kjhkj', 2, 4, 4, 'jhk', 2, '2023-05-16', 'jn'),
(50, 87, 30, 471, 'Nesciunt temporibus', 2, 1, 2, 'Earum voluptates par', 3, '2023-06-19', 'Irure nobis est sapiente temporibus enim magnam ipsum deleniti velit dolor magna laudantium libero '),
(51, 8, 17, 317, 'Nesciunt culpa perf', 4, 2, 2, 'Aut laboriosam ipsa', 4, '2023-06-19', 'Iusto omnis quia doloremque nemo maxime laboris autem rerum quos earum et'),
(52, 8, 18, 320, 'Inventore in dolore ', 2, 1, 2, 'Cupidatat nihil atqu', 1, '2023-06-19', 'Numquam omnis illo eligendi enim error in ut velit quis consectetur laudantium a nostrud sed nostr'),
(53, 8, 25, 362, 'Ullam saepe fugiat q', 2, 1, 2, 'Non cupiditate sit ', 1, '2023-06-19', 'Rerum accusantium rerum est soluta quidem velit non necessitatibus');

-- --------------------------------------------------------

--
-- Table structure for table `as_incidents`
--

CREATE TABLE `as_incidents` (
  `idincident` int(11) NOT NULL,
  `in_user` int(11) DEFAULT NULL,
  `in_title` longtext DEFAULT NULL,
  `in_date` date DEFAULT NULL,
  `in_reported` longtext DEFAULT NULL,
  `in_team` longtext DEFAULT NULL,
  `in_financial` longtext DEFAULT NULL,
  `in_injuries` longtext DEFAULT NULL,
  `in_complaints` longtext DEFAULT NULL,
  `in_compliance` longtext DEFAULT NULL,
  `in_descript` longtext DEFAULT NULL,
  `in_impact` longtext DEFAULT NULL,
  `in_priority` varchar(255) DEFAULT NULL,
  `in_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `as_incidents`
--

INSERT INTO `as_incidents` (`idincident`, `in_user`, `in_title`, `in_date`, `in_reported`, `in_team`, `in_financial`, `in_injuries`, `in_complaints`, `in_compliance`, `in_descript`, `in_impact`, `in_priority`, `in_status`) VALUES
(4, 4, 'tet', '2016-01-12', 'est', 'est', NULL, NULL, NULL, NULL, 'set', 'High', 'High', 'In Progress'),
(5, 4, 'case title', '2016-01-12', 'reported by', 'team', NULL, NULL, NULL, NULL, 'description', 'impact', 'High', 'In Progress'),
(6, 4, 'Case title', '2016-01-08', 'reported by', 'team', NULL, NULL, NULL, NULL, 'description', 'impact', 'High', 'Open'),
(7, 5, 'Fraud loss', '2023-02-25', 'jason', 'Business Banking', NULL, NULL, NULL, NULL, 'Saw 5000 missing from till', 'Loss of cashflow ', 'High', 'Open'),
(12, 17, 'Explicabo Molestiae ullam molestiae magnam molestias et necessitatibus magnam sit maxime reprehenderit', '2008-11-14', 'Aspernatur et commodo voluptatem Ut officia unde quia consectetur do reprehenderit illo et qui facilis quia', 'Minim eum est nihil dolores facere occaecat quo dolor dignissimos', NULL, NULL, NULL, NULL, 'Unde veniam tempora', 'Ipsam minus elit do', 'Medium', 'Closed'),
(13, 18, 'Voluptas non nisi quia incidunt nostrud', '2017-03-04', 'Sint sequi ut atque dignissimos minus aperiam', 'Necessitatibus culpa dignissimos itaque nihil veniam rem et nisi elit', NULL, NULL, NULL, NULL, 'Fugiat assumenda in ', 'Obcaecati non vel of', 'Low', 'Open'),
(15, 20, 'sdfUt enim voluptatem repudiandae suscipit laboriosam odit praesentium consequat Quidem quia deleniti repudiandae', '2008-02-21', 'Ratione provident tempore officia in laudantium velit cum qui amet quia aut aute esse consectetur', 'Est aliquip voluptatem Rerum fuga Omnis maiores optio corporis odit enim a quo', NULL, NULL, NULL, NULL, 'Odit excepturi liber', 'Consectetur consequa', 'High', 'Open'),
(16, 43, 'Boxes fell on volunteer', '2023-03-17', 'Jimmy', 'Warehouse team ', NULL, NULL, NULL, NULL, 'Kristy took a tumble and hit a box on her head ', 'Low ', 'High', 'Open'),
(17, 24, 'Rem labore saepe quia cumque placeat sunt ullamco mollitia minus', '1986-11-07', 'Explicabo Nemo aut eveniet quam est illo', 'Quam quia id elit qui duis perferendis aliquam et neque tenetur expedita dolore', NULL, NULL, NULL, NULL, 'Assumenda ea volupta', 'Quasi velit maxime a', 'Medium', 'In Progress'),
(18, 52, 'Member tripped over ', '2023-03-24', 'Max ', 'IT Department ', NULL, NULL, NULL, NULL, 'Member tumbled down the stairs ', 'Potential compensation ', 'High', 'Open'),
(19, 50, 'Volunteer fell over ', '2023-03-22', 'Marcus ', 'A', NULL, NULL, NULL, NULL, 'Volunteer fell down the ramp ', 'High and may need to pay out ', 'High', 'In Progress'),
(20, 50, 'Volunteer abuse ', '2023-03-26', 'Jay', 'A', NULL, NULL, NULL, NULL, 'Volunteer abused someone ', 'High ', 'High', 'Open'),
(21, 54, 'Est ipsum quod modi culpa esse maxime iste cumque eu ut eius eius perspiciatis sunt sit quis nulla', '2022-05-24', 'Cupiditate eos ut laudantium sunt sit est deserunt architecto exercitationem Nam', 'Maiores dolorem commodi voluptatem natus nulla maiores consequat Ut consequuntur harum ut corrupti ex aperiam tenetur nulla', 'Officia repudiandae omnis sit corporis culpa amet et cillum tempor eius maiores labore distinctio Qui porro velit ipsa quas', 'Accusantium atque exercitationem voluptatum harum non facilis sit non voluptas quod', 'Sequi impedit aute optio voluptatem sed est aliquam modi quo', 'Voluptas voluptas impedit et velit aliquip', 'Sed consectetur reru', 'Autem et deserunt et', 'High', 'Closed'),
(22, 54, 'Spill in ocean', '2023-05-04', 'Mikey', 'Hub', NULL, NULL, NULL, NULL, 'ABX', 'High', 'High', 'Open'),
(23, 62, 'delete * from users', '2023-05-16', 'test', 'dev', NULL, NULL, NULL, NULL, 'test', 'i don\'t know', 'High', 'Open'),
(25, 54, 'Odit nemo voluptatem vel corrupt', '2001-04-04', 'Nostrud tempore recusandae Officia anim', 'Expedita deserunt ', NULL, NULL, NULL, NULL, 'Voluptas ipsum conse', 'Minus consequat Ut ', 'High', 'Closed'),
(26, 54, 'Duis quisquam', '2002-03-21', 'Magnam in voluptatem in', 'Harum dolor quo libero sequi distinct', NULL, NULL, NULL, NULL, 'Dolor incidunt natu', 'Tempor est ut sint ', 'Low', 'In Progress'),
(27, 54, 'Nisi eum sint nulla aliquip', '2020-04-03', 'Odio in distinctio Placeat minus modi voluptatem Temporibus', 'Nihil id et voluptatem atque sed sint est est ea sequi rerum ratione occaecat', NULL, NULL, NULL, NULL, 'Exercitation facilis', 'Deserunt odio eos qu', 'Medium', 'Open'),
(29, 54, 'Ducimus cumque pariatur Accusantium necessitatibus qui et ad praesentium', '1995-11-23', 'Autem numquam commodo rerum exercitationem autem autem sed', 'Saepe culpa laborum Iure architecto sed excepteur sunt culpa natus veniam non et perspiciatis laborum harum ipsam aut qui corporis', '', NULL, NULL, NULL, 'Quae tenetur do minus consequuntur at dolor amet aspernatur quo qui itaque ad excepturi explicabo', 'Non est eum dolor la', 'High', 'In Progress'),
(30, 54, 'Et ut occaecat saepe eligendi amet sit in tempore dolorum et velit et in veniam molestiae', '1981-07-08', 'Nostrum in perspiciatis exercitationem aut', 'Tempore et impedit praesentium rem commodo veritatis et voluptates', 'abchd', NULL, NULL, NULL, 'Nihil lorem dignissi', 'Ullamco est iusto e', 'High', 'In Progress'),
(32, 54, 'Ut ut lorem laboris aut nesciunt eligendi quia accusantium commodo enim', '2005-11-26', 'Eaque est ea sed iste explicabo Anim ipsum omnis eos eos soluta id', 'Incidunt aliquip illum consequuntur et sunt exercitation pariatur Aut labore consequatur Quibusdam laborum Nulla doloribus mollitia', 'Fugit blanditiis rerum sint voluptatem cillum omnis tempore non alias proident et voluptatem vel beatae', 'Nisi velit a necessitatibus accusantium in', 'Aspernatur ut et deleniti tempore veritatis consequat In sit duis blanditiis veniam vel nihil facilis ex deleniti enim voluptatibus incididunt', 'Est sed necessitatibus sint debitis laboris modi ullamco ea laudantium qui nostrum perferendis hic fugiat dolor', 'Porro in enim dolore', 'Autem dolores volupt', 'Low', 'Closed'),
(33, 67, 'Molestiae non tenetur dolor itaque omnis voluptatibus facere non illo omnis sint amet', '1995-07-05', 'Quis sed aute velit quo eligendi sed', 'Qui nobis qui nulla et odio voluptatum distinctio Aut blanditiis doloremque anim', 'Qui id obcaecati inventore elit odio ut sunt perferendis assumenda in quo', 'Atque voluptatem modi debitis voluptas vel irure distinctio Autem corporis laborum Irure eveniet quam reprehenderit facere tempor laboriosam ut', 'Hic et enim aut nulla vel asperiores excepteur dignissimos reiciendis deserunt', 'Cum voluptatibus dolorum fugit nostrud et', 'Autem et ab odio ven', 'Nesciunt quis sunt ', 'Medium', 'Closed'),
(34, 54, 'Esse debitis iure consequatur quia reprehenderit possimus', '2001-03-26', 'Vero veritatis voluptatem impedit eos laudantium aut suscipit quos sequi ut accusantium', 'Sint inventore et esse error eum eligendi ullamco elit ipsam provident', 'Id repellendus Beatae quia doloremque repudiandae ea perspiciatis', 'Exercitationem ut distinctio Voluptatem dolor', 'Minima iure porro hic fuga Lorem dolor velit consectetur minima excepteur cupiditate', 'Aperiam ea veniam vel pariatur Numquam consequat Rem laudantium aut voluptatum nisi culpa', 'Reprehenderit hic m', 'Eu Nam nihil eos au', 'High', 'Closed'),
(35, 54, 'Ea autem anim deserunt quaerat non praesentium dicta autem aut odit voluptatem', '1970-07-12', 'Quae quod animi tempora illo amet tempor vel sunt ea ratione pariatur Irure aut non architecto facilis placeat veniam vel', 'Ut doloribus exercitation aut accusantium', 'Culpa sequi consequat Enim dolor aperiam eveniet quia cum consequat Labore debitis', 'Non sint dolorem est quo maiores velit et quis tempora proident numquam in esse adipisicing qui', 'Laboris voluptatem repudiandae ipsam velit nisi error autem quis ullamco voluptatum tenetur', 'Officia dolor in qui quo amet ab voluptates cupiditate esse impedit ut cum impedit consequatur voluptas est illum', 'Dolor et recusandae', 'Ut esse enim nihil ', 'High', 'Closed'),
(36, 54, 'Corporis do ex et quia magna nihil animi corporis laudantium fuga Porro veniam quaerat irure sit ut aut', '1988-10-01', 'Nostrud quia minim omnis aliquam fugit non dolores elit excepturi aliqua Consequat Labore officiis eligendi est nostrud', 'Eum aliquip quia rerum quo quia sed ut id quam voluptatem Qui quis pariatur Molestias', 'Exercitation nesciunt asperiores nihil excepturi recusandae Duis quasi assumenda doloremque', 'Aliquam dignissimos sunt eum nulla qui dignissimos accusantium quo officiis a lorem', 'Sit eos eveniet at voluptate', 'In repudiandae animi atque sed eiusmod officiis quia tempor cupidatat distinctio Temporibus anim fugiat assumenda sequi', 'Error qui tempor ame', 'Fugit nihil ut ex n', 'Medium', 'Closed'),
(37, 117, 'Duis odio aut obcaecati et ipsum', '1990-03-04', 'Doloremque magna illum velit nobis excepturi itaque omnis incidunt adipisicing officia ut voluptatem accusantium enim sed odio provident', 'Aliqua Quis et porro dolores quisquam omnis ut ad omnis ex et architecto consequatur Perferendis quos eaque', 'Deserunt enim laborum laborum Adipisicing sunt omnis totam voluptatem et mollit dolor in earum consequat Reiciendis dolore non', 'Obcaecati ut consequatur voluptate porro velit ea quidem', 'Cupiditate quia repudiandae asperiores ut quis', 'Est dicta rem sapiente vel commodi voluptas sequi culpa officia reprehenderit facere illo eos aliquip natus', 'Et natus a aliquip u', 'Sint esse eu atque ', 'Medium', 'Closed'),
(38, 117, 'Sit minim minim et nobis quod dolor', '1992-02-29', 'Irure culpa aute ea dolore veniam enim est officia ut sequi aperiam nihil est quae exercitationem', 'Voluptate porro consectetur eum numquam ipsa', 'Possimus dolore quas vero iste eos aute', 'Obcaecati quia alias mollitia lorem tempora voluptatem nobis omnis', 'Saepe veniam itaque eos dolor rerum officia corrupti consequatur Incidunt recusandae Autem et doloremque duis dignissimos rerum', 'Proident incidunt quod reiciendis qui ullamco officia minim', 'Et dolor ut facere o', 'Eum nulla ratione od', 'V High', 'Closed'),
(39, 117, 'Qui est hic qui quos enim qui et velit do cumque quasi obcaecati commodi nemo', '1977-06-26', 'Irure tempora rerum dolorem sunt nemo ducimus dicta eum exercitationem', 'Aliquip accusamus officia vel minima velit perspiciatis', 'Temporibus consequatur Fuga Aut ipsam architecto veniam facilis quas adipisicing enim mollit tempore fuga Nisi qui iusto velit dolore', 'Reprehenderit quibusdam nulla eum incidunt ipsam quia unde', 'Quo distinctio Aperiam assumenda assumenda est voluptate nostrum accusantium dolorem', 'Amet animi quia perferendis quae laudantium tenetur reprehenderit ipsa quibusdam saepe obcaecati facere', 'Nisi exercitation co', 'Esse sint eos adip', 'High', 'Open'),
(40, 117, 'Excepturi numquam qui quis aliquid occaecat quibusdam et laborum Qui et quis sed ad', '1985-01-23', 'Incidunt similique proident amet rem', 'Delectus Nam ipsa non qui elit exercitation aut deserunt quis omnis id', 'Non autem aliqua Ipsa dolor dolorum sed ut', 'Temporibus qui sit officiis exercitationem praesentium officia reprehenderit sint porro dolorem velit qui quis quisquam unde maxime autem est', 'Et quis corrupti explicabo Numquam enim ex recusandae Proident incididunt quod magna', 'Adipisicing porro distinctio In dolorum', 'Facere accusantium i', 'Vel dolor eveniet e', 'Low', 'In Progress'),
(41, 117, 'Recusandae Dolore harum magnam labore sunt', '1988-04-18', 'Tempora doloribus ad expedita ipsam alias voluptates quis esse magni molestiae voluptatibus sunt id est in beatae perferendis et voluptate', 'Consequuntur voluptatem a sequi sunt ipsa incidunt blanditiis numquam nisi quia suscipit dolore doloremque aliquip', 'Praesentium sed cumque dolorum in atque', 'Eius aliquip ea qui laborum Qui', 'Ipsa pariatur Et dolores voluptate repudiandae dignissimos dolore fuga Ex totam accusamus id dolore atque nostrum asperiores culpa cillum', 'Dolor quae nemo mollit officiis reprehenderit', 'Mollit officia volup', 'Atque velit autem l', 'Medium', 'In Progress'),
(42, 117, 'Voluptas eum ipsum nisi qui placeat omnis mollit suscipit', '2016-08-26', 'Facilis est veniam error et commodo quisquam facilis enim occaecat quia quaerat', 'Magna iusto aliquam quo accusantium error omnis ea et nesciunt nulla atque', 'Commodo obcaecati quas sit quia ipsam sed temporibus quam ipsum aut aut soluta provident fugit ullam', 'Laborum Incidunt enim fugiat rerum sed nemo tempora et consequatur Mollitia dicta perferendis', 'Aut dolores nesciunt sed excepteur deserunt laborum illum illo eligendi ea aute exercitation enim', 'Deserunt quia praesentium sunt sequi et sit quibusdam est quia fugiat voluptatum est tempora quisquam', 'Aute id minima eos p', 'Reprehenderit moles', 'V High', 'Closed'),
(43, 117, 'Qui velit illo ipsum qui molestiae vitae magna excepteur quia dolore minus aliqua Eum libero exercitation et optio', '2019-12-26', 'Reprehenderit voluptatem non minim molestiae ullamco consequatur sunt ullamco vel eum reprehenderit', 'Corporis ipsam dolor quaerat est et natus et maiores et est eligendi dolore quia ut', 'Adipisicing commodo ad autem voluptatum voluptatem sit laboriosam veniam libero culpa quis ut reprehenderit veniam cillum aut reiciendis numquam', 'Dolor aut dolore cupidatat voluptas labore odit', 'Consequatur Dolor similique nostrud amet minim excepturi iste labore distinctio Nostrum autem', 'Suscipit ea voluptas labore voluptates nostrum voluptas qui sunt voluptas ut corrupti dolorem molestias debitis', 'Cupiditate nesciunt', 'Qui quas laudantium', 'Low', 'Open'),
(44, 117, 'Necessitatibus beatae doloribus eum ducimus velit voluptas voluptatem', '2021-01-25', 'At quis quia nesciunt totam repellendus Sed distinctio Laboriosam consequuntur officia ut quis', 'Corrupti numquam officia aspernatur aliquam veniam', 'Non quia rerum excepturi laudantium possimus aliquip magni eos tempor eiusmod dolore quo ullam dolore aut ducimus consequuntur esse nesciunt', 'Dolore ex vel adipisci in do veniam cillum', 'Dolores qui eveniet ipsum minus incididunt aut id duis maxime consequat Dicta aut ut corporis dolor nisi similique', 'Numquam fugiat ea sint aliquip laboris suscipit non error quaerat dignissimos rerum tenetur non voluptas', 'Non ut perferendis r', 'Id minus ut ea qui q', 'High', 'Closed'),
(45, 117, 'Sit error ipsam sapiente a quis', '2014-10-03', 'Exercitation aliquip fugiat nisi nulla nisi qui voluptatem id accusantium voluptatem Animi non necessitatibus aliquip temporibus', 'Ratione laboris ut nobis sit eiusmod dolor qui et optio ut', 'Vero nisi incidunt aperiam esse facere', 'Distinctio Aliquip occaecat iure et voluptatem quibusdam eum quia ut nesciunt ea sunt adipisicing pariatur Aute dolorem', 'Debitis laboriosam dolores alias nostrud voluptate qui quaerat excepteur maiores facilis', 'Consequuntur quaerat cupiditate deleniti ducimus similique ut vitae voluptas eaque asperiores nesciunt iste', 'Architecto officiis ', 'Minim pariatur Exer', 'High', 'Open');

-- --------------------------------------------------------

--
-- Table structure for table `as_insurance`
--

CREATE TABLE `as_insurance` (
  `idinsurance` int(11) NOT NULL,
  `is_user` int(11) DEFAULT NULL,
  `is_type` varchar(255) DEFAULT NULL,
  `is_coverage` longtext DEFAULT NULL,
  `is_exclusions` longtext DEFAULT NULL,
  `is_company` longtext DEFAULT NULL,
  `is_date` longtext DEFAULT NULL,
  `is_details` longtext DEFAULT NULL,
  `is_actions` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `as_insurance`
--

INSERT INTO `as_insurance` (`idinsurance`, `is_user`, `is_type`, `is_coverage`, `is_exclusions`, `is_company`, `is_date`, `is_details`, `is_actions`) VALUES
(2, 4, 't', 't', 't', 'com', '2016-01-12', 't', 't'),
(3, 4, 'test', 'test', 'test', 'test', '2016-01-12', 'est', 'set'),
(4, 4, 'Insurance Type', 'Policy coverage', 'Exclusions of policy', 'Company details\r\ncontact details', '2016-01-15', 'Claims details', 'Follow up qctions'),
(10, 43, 'Comprehensive', 'Warehouse slips and trips ', 'None ', 'Alliance ', '2023-04-29', 'Once when a customer Kristy tripped over ', 'Review other options '),
(11, 24, 'Sunt vitae nihil nobis quisquam blanditiis culpa laborum in architecto molestiae eius expedita ', 'Facere illum et vol', 'Tempora odit mollit ', 'Adipisci est aliquid', '2023-03-21', 'Quidem sint doloremq', 'Dignissimos aspernat'),
(12, 50, 'Comprehensive cover', 'Full Building and Content cover ', 'Customer damage ', 'ABV', '2023-03-31', 'None so far ', 'ABC'),
(13, 54, 'Comprehensive cover ', 'Building and content ', 'Fire ', 'Allianz ', '2023-04-09', 'Insurance claim ', 'Make claim ');

-- --------------------------------------------------------

--
-- Table structure for table `as_like`
--

CREATE TABLE `as_like` (
  `idlike` int(11) NOT NULL,
  `li_like` varchar(255) DEFAULT NULL,
  `li_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `as_like`
--

INSERT INTO `as_like` (`idlike`, `li_like`, `li_value`) VALUES
(1, 'Almost Certain', 5),
(2, 'Likely', 4),
(3, 'Possible', 3),
(4, 'Unlikely', 2),
(5, 'Rare', 1);

-- --------------------------------------------------------

--
-- Table structure for table `as_procedures`
--

CREATE TABLE `as_procedures` (
  `id` int(11) NOT NULL,
  `procedure_user_id` int(11) DEFAULT NULL,
  `ProcedureTitle` varchar(255) DEFAULT NULL,
  `ProcedureNumber` varchar(50) DEFAULT NULL,
  `ProcedureDescription` longtext DEFAULT NULL,
  `ProcedureEffectiveDate` date DEFAULT NULL,
  `ProcedureReviewDate` date DEFAULT NULL,
  `Applicability` text DEFAULT NULL,
  `ComplianceRequirements` text DEFAULT NULL,
  `Resources` text DEFAULT NULL,
  `ProcedureApproval` varchar(255) DEFAULT NULL,
  `ProcedureReview` text DEFAULT NULL,
  `ProcedureAcknowledgment` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `as_riskdescript`
--

CREATE TABLE `as_riskdescript` (
  `iddescript` int(11) NOT NULL,
  `d_cat` int(11) DEFAULT NULL,
  `d_descript` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `as_risks`
--

CREATE TABLE `as_risks` (
  `idrisk` int(11) NOT NULL,
  `ri_type` int(11) DEFAULT NULL,
  `ri_name` varchar(100) DEFAULT NULL,
  `ri_descript` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `as_risks`
--

INSERT INTO `as_risks` (`idrisk`, `ri_type`, `ri_name`, `ri_descript`) VALUES
(1, 1, 'Formation/Founding Team', NULL),
(2, 1, 'Market', NULL),
(3, 1, 'Legal Risks', NULL),
(4, 1, 'Privacy and Information Risks', NULL),
(5, 1, 'Economic', NULL),
(6, 1, 'Strategic', NULL),
(7, 1, 'Political', NULL),
(8, 1, 'People', NULL),
(9, 1, 'Process', NULL),
(10, 1, 'Tehcnology', NULL),
(11, 1, 'Financial', NULL),
(12, 1, 'Health and Safety', NULL),
(13, 1, 'Environmental', NULL),
(14, 1, 'Reputation', NULL),
(15, 1, 'Equipment', NULL),
(16, 1, 'Governance & Stakeholder Management', NULL),
(17, 2, 'Manual Handling/Ergonomics', NULL),
(18, 2, 'Energy Systems', NULL),
(19, 2, 'Machinery, Plant and equipment', NULL),
(20, 2, 'Chemicals', NULL),
(21, 2, 'Facilities/Built Environment', NULL),
(22, 2, 'Biological', NULL),
(23, 2, 'People hazards', NULL),
(24, 2, 'Emergency Incidents', NULL),
(25, 2, 'Food & Drink', NULL),
(26, 2, 'Physical Hazard Identification', NULL),
(27, 3, 'Internal Fraud', NULL),
(28, 3, 'External Fraud', NULL),
(29, 3, 'Clients, Products ad Business Practices', NULL),
(30, 3, 'Damage to Physical Assets', NULL),
(31, 3, 'Business Disruption', NULL),
(32, 3, 'Execution, Delivery and Process Mangement', NULL),
(33, 4, 'Financial', NULL),
(34, 4, 'Physical', NULL),
(35, 4, 'Legal Risks', NULL),
(36, 4, 'Technology, Privacy and Information Risks', NULL),
(37, 4, 'Volunteers & Members', NULL),
(38, 4, 'Political', NULL),
(39, 4, 'People', NULL),
(40, 4, 'Process', NULL),
(41, 4, 'Health and Safety', NULL),
(42, 4, 'Environmental', NULL),
(43, 4, 'External Risks', NULL),
(44, 4, 'Governance & Stakeholder Management', NULL),
(45, 2, 'Environment', NULL),
(46, 3, 'Employment Practices and Workplace Safety', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `as_treatments`
--

CREATE TABLE `as_treatments` (
  `idtreatment` int(11) NOT NULL,
  `tre_user` int(11) DEFAULT NULL,
  `tre_team` text DEFAULT NULL,
  `tre_assessor` text DEFAULT NULL,
  `tre_treatment` text DEFAULT NULL,
  `tre_cost_ben` text DEFAULT NULL,
  `tre_progress` longtext DEFAULT NULL,
  `tre_owner` text DEFAULT NULL,
  `tre_start` date DEFAULT NULL,
  `tre_due` date DEFAULT NULL,
  `tre_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `as_treatments`
--

INSERT INTO `as_treatments` (`idtreatment`, `tre_user`, `tre_team`, `tre_assessor`, `tre_treatment`, `tre_cost_ben`, `tre_progress`, `tre_owner`, `tre_start`, `tre_due`, `tre_status`) VALUES
(2, 1, 'Business', 'Matej Drabik', 'Treatment 2', 'Something', 'No update', 'Matej', '2015-11-29', '2015-12-23', 1),
(3, 4, 'test', 'team', 'tes', '100', 'this progress', 'me', '2016-01-11', '2016-01-11', 1),
(4, 4, 'test', 'test', 'treatment', '100', 'progres', ',e', '2016-01-11', '2016-01-11', 1),
(5, 5, 'Mike', 'Jasons team', 'cancel shipping ', 'costs us money', 'Program cancelled ', 'Jason ', '2023-02-25', '2023-02-25', 2),
(6, 11, 'sdcfscfs', 'Lorem consequuntur maxime iusto eos beatae tempor iure duis nobis iusto corrupti omnis aut', 'demo treatment', 'Iste molestias nesciunt id suscipit aliqua Earum nulla suscipit', 'Quia quidem tenetur ', 'Temporibus illum dolore consectetur eveniet qui nulla quia laudantium culpa sit eu officia dolore', '2023-03-13', '2023-03-13', 1),
(7, 11, 'Culpa Nam incididunt dolor iste maxime nisi officia et ipsum aliquip tempor quia qui qui rerum quis non', 'rfdsxgrfjtrsd', 'demo1 treatment ', 'Et non cupidatat explicabo Enim a quisquam', 'Dolore maiores provi', 'In odit ex dolore duis adipisci pariatur Sit explicabo Distinctio Magni', '2023-03-13', '2023-03-13', 3),
(8, 20, 'testing', 'Lorem consequuntur maxime iusto eos beatae tempor iure duis nobis iusto corrupti omnis aut', 'this treatment is not possible', 'Ut ipsam qui sit a', 'Eligendi quisquam ea', 'Deserunt rerum qui deserunt beatae assumenda voluptatem consequatur sed minus officiis voluptates p', '2023-03-13', '2023-03-13', 2),
(11, 21, 'dd', 'Nihil nisi fugiat error nisi sint non nostrum optio eaque tenetur similique maxime ullamco est', 'dd', 'saf', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but als', 'Nostrum labore non aut sit ipsum laboris', '2023-03-13', '2023-03-13', 3),
(12, 21, 'asd', 'Nihil nisi fugiat error nisi sint non nostrum optio eaque tenetur similique maxime ullamco est', 'Laboris nemo est unde velit id quibusdam veniam minim cum et minus in eu eos cupidatat sed quis deserunt', 'Laboris aut ut corrupti numquam quidem tempora pariatur Aperiam vel rerum laborum', 'Facilis minim est ve', 'Velit voluptatem et ut non maxime quis non ipsa non occaecat quo voluptatibus recusandae Atque', '2023-03-13', '2023-03-13', 3),
(13, 20, 'safasf', 'asfas', 'fraf', 'Quia qui reiciendis dolores aliquid molestiae ullam veniam irure sapiente aute optio', 'Et eaque sed laudantLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets coLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets coLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets co', 'Adipisci fugiat quas quis id asperiores ad id id ut ullamco et adipisicing corporis nostrud excepteu', '2023-03-13', '2023-03-13', 1),
(14, 43, 'John ', 'ADHD', 'Start a training program for volunteers', 'Helps with compliance', 'Creating training material ', 'Jimmy', '2023-03-19', '2023-03-31', 1),
(15, 24, 'Dolores distinctio Non ut asperiores veritatis qui voluptatum consequatur sit', 'Aut dolor occaecat aliquam delectus dolorum voluptas consequatur alias rerum esse consequatur maxim', 'Molestiae non ut sed suscipit atque et nulla eligendi voluptas sit quia ut quis ut totam provident similique incididunt asperiores', 'Neque nobis eligendi sed sunt aliquid officia et quam', 'Ut assumenda qui nul', 'Molestias officia cupidatat quia eos qui velit eum minima quam ut aut ut blanditiis esse aliquam in', '2023-03-21', '2023-03-21', 2),
(16, 50, 'Mark', 'A', 'Create training program ', 'High ', 'Low ', 'Jay ', '2023-03-26', '2023-03-26', 1),
(17, 32, 'Dicta ut odio omnis rerum culpa dolores accusantium et vitae ipsum voluptatem', 'Nihil nisi fugiat error nisi sint non nostrum optio eaque tenetur similique maxime ullamco est', 'Laboris nemo est unde velit id quibusdam veniam minim cum et minus in eu eos cupidatat sed quis deserunt', 'Id tempore omnis adipisicing suscipit', 'Et velit perspiciat', 'Cum adipisci magna consequatur exercitation consequatur ullamco est quos officiis irure quia', '2023-03-27', '2023-03-27', 1),
(18, 32, 'Sunt duis sapiente est omnis quos dolores exercitationem necessitatibus aut dolore nesciunt minus ', 'Quidem aspernatur ea et itaque ut sed facilis atque', 'Laboris nemo est unde velit id quibusdam veniam minim cum et minus in eu eos cupidatat sed quis deserunt', 'Alias deleniti in autem qui similique sapiente eligendi aspernatur voluptatum adipisicing laboriosam eu ut illum', 'Beatae vitae sequi s', 'Distinctio Quisquam laboriosam accusamus odio nobis aut quisquam dolorem similique architecto maxi', '2023-03-27', '2023-03-27', 3),
(19, 32, 'Dicta ut odio omnis rerum culpa dolores accusantium et vitae ipsum voluptatem', 'Consequuntur dolores error perspiciatis beatae consequatur ea autem consequat Occaecat sed sed mai', 'Molestiae non ut sed suscipit atque et nulla eligendi voluptas sit quia ut quis ut totam provident similique incididunt asperiores', 'Autem dolor consequuntur porro recusandae Ut et molestias esse reprehenderit vel id dolor est enim culpa qui fuga Quis', 'Sint temporibus eve', 'Deleniti laborum voluptas excepteur quod non exercitation laboriosam iure eius dolorem aliqua', '2023-03-27', '2023-03-27', 2),
(20, 32, 'asd', 'asd', 'Helloo', 'Sed incidunt occaecat elit et dolor adipisicing neque dolor itaque nulla molestias numquam nobis porro quo', 'Repellendus Aperiam', 'Qui architecto consequuntur accusantium autem in minus nesciunt sequi architecto aspernatur sit iu', '2023-03-27', '2023-03-27', 2),
(22, 56, 'adsdas', 'sadas', 'dsadas', 'sadas', 'asddas', 'asddasads', '2023-04-19', '2023-04-19', 1),
(28, 54, 'Sapiente accusamus eos nihil quas nesciunt', 'Velit quis quos non nihil molestiae', '', 'Quis totam praesentium aut iusto pariatur Sunt aliquid tenetur voluptatem Qui nisi quis eos est vitae nisi laudantium est', 'Libero ut qui quibus', 'Deserunt odio culpa consequuntur sed aut proident irure', '2023-06-16', '2023-06-16', 3);

-- --------------------------------------------------------

--
-- Table structure for table `as_types`
--

CREATE TABLE `as_types` (
  `idtype` int(11) NOT NULL,
  `ty_name` varchar(100) DEFAULT NULL,
  `ty_descript` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `as_types`
--

INSERT INTO `as_types` (`idtype`, `ty_name`, `ty_descript`) VALUES
(1, 'Startups & Small Business', NULL),
(2, 'Health & Safety', NULL),
(3, 'Financial Services', NULL),
(4, 'Community Groups', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `policyfields`
--

CREATE TABLE `policyfields` (
  `id` int(11) NOT NULL,
  `policy_user_id` int(11) DEFAULT NULL,
  `PolicyTitle` varchar(255) DEFAULT NULL,
  `PolicyNumber` varchar(255) DEFAULT NULL,
  `PolicyDescription` text DEFAULT NULL,
  `PolicyEffectiveDate` date DEFAULT NULL,
  `PolicyReviewDate` date DEFAULT NULL,
  `Applicability` text DEFAULT NULL,
  `PolicyRequirements` text DEFAULT NULL,
  `ComplianceResponsibility` text DEFAULT NULL,
  `RelatedDocuments` text DEFAULT NULL,
  `PolicyApproval` varchar(255) DEFAULT NULL,
  `PolicyReviewRevisionHistory` text DEFAULT NULL,
  `PolicyAcknowledgment` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `policyfields`
--

INSERT INTO `policyfields` (`id`, `policy_user_id`, `PolicyTitle`, `PolicyNumber`, `PolicyDescription`, `PolicyEffectiveDate`, `PolicyReviewDate`, `Applicability`, `PolicyRequirements`, `ComplianceResponsibility`, `RelatedDocuments`, `PolicyApproval`, `PolicyReviewRevisionHistory`, `PolicyAcknowledgment`) VALUES
(4, 54, 'Incidunt maxime et ', '571', 'Neque consectetur co', '2001-07-08', '2006-05-20', 'Sit architecto repr', 'Molestiae neque hic ', 'Facilis id ut incid', 'Consequatur ad ut e', 'Aliquam sint eaque e', 'Ea lorem explicabo ', 0),
(5, 54, 'Doloremque culpa aut', '593', 'Autem dolores sunt ', '1997-02-23', '1987-04-29', 'Est quam qui quisqu', 'Aliqua Eu duis sint', 'Placeat quis id ra', 'Vitae itaque hic ut ', 'Fugit occaecat null', 'Aliquam non corporis', 0),
(6, 54, 'Ipsum dolor temporib', '719', 'Id natus sunt dolore', '1992-10-17', '1988-04-16', 'Accusantium voluptat', 'Ipsa dolore et in c', 'Eu consequat Reicie', 'Culpa dolore omnis n', 'Deserunt iste necess', 'Non dolor odit est ', 0),
(7, 54, 'Incididunt esse in e', '502', 'Corrupti voluptatem', '2004-04-01', '2003-08-14', 'Nam qui aut consequa', 'Autem error architec', 'Ut quod dolor deseru', 'Est sint fugiat c', 'Irure rerum praesent', 'Ea vitae optio omni', 0),
(8, 54, 'Amet molestias vero', '966', 'Officiis illum quam', '1999-02-04', '1983-05-23', 'Veniam sunt dolor q', 'Est sequi earum labo', 'Mollit optio quisqu', 'Dicta molestiae et c', 'Dolorum ad laborum ', 'Atque illum sit tem', 0),
(9, 54, 'Amet blanditiis cul', '485', 'Veniam autem volupt', '1985-06-13', '1976-07-02', 'Natus quisquam anim ', 'Eiusmod eius cillum ', 'Dolorum sint sint r', 'Proident quaerat re', 'Quia nobis sint iure', 'Dolor obcaecati aper', 0),
(10, 54, 'Velit quia est vel', '132', 'Et consectetur quo q', '1974-03-28', '1986-09-07', 'Quaerat eiusmod porr', 'Autem deleniti aut e', 'Exercitation dolorum', 'Amet ab minus unde ', 'Aute sapiente eos r', 'Rerum dolores esse d', 0),
(12, 54, 'Veniam sit et opti', '628', 'Quia quo rerum sit ', '2012-01-02', '2020-07-21', 'Consequatur Dolor e', 'Natus ut quisquam nu', 'Sunt a accusantium ', 'Qui voluptates totam', 'Quisquam nostrud con', 'Rerum nobis voluptat', 1),
(13, 54, 'Deserunt dolore aut ', '787', 'Fugiat quis aliquid ', '1998-05-25', '2003-02-16', 'Rerum dolore dolor l', 'Voluptas quae conseq', 'Id nisi ipsam provid', 'Sit animi culpa ul', 'Natus accusamus sit', 'Quia omnis aliquid t', 1),
(14, 54, 'lodalasnpyaz', '724', 'Necessitatibus eiusm', '2020-01-23', '2003-02-15', 'Tempora ullam commod', 'Reprehenderit accusa', 'Eum aliquip qui pari', 'Doloribus iusto assu', 'Doloribus iusto assu', 'Minus qui soluta mol', 1),
(16, 54, 'Rerum doloribus et o', '984', 'Doloremque ullam sit', '2004-01-09', '1998-09-04', 'Suscipit aliquam sin', 'Pariatur Laborum et', 'Aliquid voluptatem ', 'Occaecat voluptate o', 'Totam possimus anim', 'Consequat Laborum ', 1),
(17, 54, 'Eos eum incididunt e', '580', 'Temporibus ut ipsum', '1989-11-25', '1975-06-11', 'Et dolor sed ipsa q', 'Sit qui rerum velit ', 'Tempore et culpa o', 'Sit debitis in ulla', 'Obcaecati magni moll', 'Officia sapiente sus', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `iduser` int(11) NOT NULL,
  `superuserid` int(11) NOT NULL,
  `u_mail` varchar(100) DEFAULT NULL,
  `u_password` varchar(100) DEFAULT NULL,
  `u_name` varchar(50) DEFAULT NULL,
  `u_phone` varchar(50) DEFAULT NULL,
  `u_location` varchar(50) DEFAULT NULL,
  `c_company` varchar(50) DEFAULT NULL,
  `c_address` varchar(100) DEFAULT NULL,
  `c_city` varchar(50) DEFAULT NULL,
  `c_state` varchar(30) DEFAULT NULL,
  `c_postcode` varchar(20) DEFAULT NULL,
  `c_country` varchar(25) DEFAULT NULL,
  `u_complete` tinyint(4) DEFAULT NULL,
  `u_otp` varchar(5) DEFAULT NULL,
  `u_datetime` datetime DEFAULT NULL,
  `u_expire` datetime DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`iduser`, `superuserid`, `u_mail`, `u_password`, `u_name`, `u_phone`, `u_location`, `c_company`, `c_address`, `c_city`, `c_state`, `c_postcode`, `c_country`, `u_complete`, `u_otp`, `u_datetime`, `u_expire`, `role`) VALUES
(4, 0, 'test@test.com', 'e10adc3949ba59abbe56e057f20f883e', 'test', '', '', 'test', '', '', '', '', '', 0, NULL, '2016-01-07 19:55:55', '2016-01-21 19:55:55', NULL),
(5, 0, 'j.kanahara77@gmail.com', '56871555e8f978521bd83b7dd4339397', 'Jay K', '0412775166', 'Melb', 'ChapterUp', '10 shaw ', 'Melb', 'Vic', '3177', 'Aus', 1, NULL, '2023-02-25 09:59:24', '2023-03-11 09:59:24', NULL),
(6, 0, 'macrew.biz@macrew.net', 'a4b266a4f794a3e5352b5abd5601efa2', 'Aditi', '', '', 'Rani', '', '', '', '', '', 0, NULL, '2023-03-01 14:13:35', '2023-03-15 14:13:35', NULL),
(7, 0, 'jiggy07@hotmail.com', '56871555e8f978521bd83b7dd4339397', 'Jay K', '', '', 'ABC ', '', '', '', '', '', 1, NULL, '2023-03-06 22:33:08', '2023-03-20 22:33:08', NULL),
(8, 0, 'test@risksafe.co', 'e10adc3949ba59abbe56e057f20f883e', 'Nauman', '', '', 'Risk Safe', '', '', '', '', '', 0, NULL, '2023-03-06 23:22:42', '2023-03-20 23:22:42', NULL),
(9, 0, 'tom@mailinator.com', 'e99a18c428cb38d5f260853678922e03', 'Jay K', '', '', 'ABC', '', '', '', '', '', 0, NULL, '2023-03-08 23:21:53', '2023-03-22 23:21:53', NULL),
(10, 0, 'ribemebo@mailinator.com', '550e1bafe077ff0b0b67f4e32f29d751', 'testing', '7340940000', 'austin', 'Sheppard and Turner Co', 'rtdrdfgh', 'stanford street', 'Sed dolorem at adipi45', '956787', 'United states', 1, NULL, '2023-03-13 14:56:37', '2023-03-27 14:56:37', NULL),
(11, 0, 'kogali@mailinator.com', '56de48825b002939979921f9ea0c9033', 'Hadley French', '', '', 'Ochoa Langley Co', '', '', '', '', '', 1, NULL, '2023-03-13 15:09:07', '2023-03-27 15:09:07', NULL),
(12, 0, 'fafesecik@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Chester Hickman', '', '', 'Kerr and Moody Traders', '', '', '', '', '', 0, NULL, '2023-03-13 19:41:05', '2023-03-27 19:41:05', NULL),
(13, 0, 'siropoxem@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Karleigh Rosa', '', '', 'Perkins and Stafford Co', '', '', '', '', '', 0, NULL, '2023-03-13 19:49:41', '2023-03-27 19:49:41', NULL),
(14, 0, 'fezugika@mailinator.com', '403c14e631df868a1480ed3c03d3af70', 'Anne Salazar', '17712173419', 'austin', 'Petersen and Hyde Trading', 'Bean and Ruiz Trading', 'Et veniam anim ea lorem vero suscipit aut quia in', 'Libero repellendus Saepe dolo', '54564', 'India', 1, NULL, '2023-03-13 19:51:03', '2023-03-27 19:51:03', NULL),
(15, 0, 'toraba@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Maya Dejesus', '', '', 'Keith Potter Trading', '', '', '', '', '', 0, NULL, '2023-03-13 19:55:51', '2023-03-27 19:55:51', NULL),
(16, 0, 'xegexesi@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Emi Hooper', '', '', 'Garrison and Gibbs Traders', '', '', '', '', '', 0, NULL, '2023-03-13 20:40:23', '2023-03-27 20:40:23', NULL),
(17, 0, 'xyka@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Omar Hester', '', '', 'Roberson and Garner Trading', '', '', '', '', '', 0, NULL, '2023-03-13 20:46:39', '2023-03-27 20:46:39', NULL),
(18, 0, 'hejivixor@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Alec Saunders', '', '', 'Robbins Jordan Associates', '', '', '', '', '', 0, NULL, '2023-03-13 21:04:46', '2023-03-27 21:04:46', NULL),
(19, 0, 'kygat@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Justin Leach', '', '', 'Middleton Chaney LLC', '', '', '', '', '', 0, NULL, '2023-03-13 21:13:54', '2023-03-27 21:13:54', NULL),
(20, 0, 'sykiferyfy@mailinator.com', '25f9e794323b453885f5181f1b624d0b', 'Odessa Young', '', '', 'Rose and Miranda Trading', '', '', '', '', '', 1, NULL, '2023-03-13 21:21:51', '2023-03-27 21:21:51', NULL),
(21, 0, 'zijuro@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Avram Ortega', '', '', 'Baldwin Mclaughlin Inc', '', '', '', '', '', 0, NULL, '2023-03-13 22:36:02', '2023-03-27 22:36:02', NULL),
(22, 0, 'lyxun@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Craig Mueller', '', '', 'Mccormick Adkins Traders', '', '', '', '', '', 0, NULL, '2023-03-13 23:26:36', '2023-03-27 23:26:36', NULL),
(23, 0, 'vera@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Caleb Frazier', '', '', 'Gallagher Knox LLC', '', '', '', '', '', 0, NULL, '2023-03-14 14:50:32', '2023-03-28 14:50:32', NULL),
(24, 0, 'binarydata.jagroop@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'test', '', '', 'Test', '', '', '', '', '', 0, '3327', '2023-03-14 15:24:03', '2023-03-28 15:24:03', NULL),
(25, 0, 'amit@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'asdsad', '', '', 'asdsa', '', '', '', '', '', 0, NULL, '2023-03-14 15:31:12', '2023-03-28 15:31:12', NULL),
(26, 0, 'qweret@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'test', '', '', 'test', '', '', '', '', '', 0, NULL, '2023-03-14 15:41:17', '2023-03-28 15:41:17', NULL),
(27, 0, 'markvriet77@hotmail.com', '3c1df00dc81773796cb5c6c9c95daf7f', 'Jay K', '0412775869', 'Singapore', 'RocketLoan', '10 fitz place ', 'Singapore ', 'Singapore ', '20001', 'Singapore ', 1, NULL, '2023-03-14 16:25:08', '2023-03-28 16:25:08', NULL),
(28, 0, 'dinogihyc@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Julian Gill', '', '', 'Reyes Acosta Traders', '', '', '', '', '', 0, NULL, '2023-03-14 20:13:27', '2023-03-28 20:13:27', NULL),
(29, 0, 'tufoxygi@mailinator.com', '31e1e408794fa74e3c81d7bedc653d2b', 'Alika Baird', '', '', 'Swanson and Vargas Trading', '', '', '', '', '', 0, NULL, '2023-03-14 20:24:23', '2023-03-28 20:24:23', NULL),
(30, 0, 'qinewy@mailinator.com', '56de48825b002939979921f9ea0c9033', 'Dieter Newman', '', '', 'Leblanc and Rios Plc', '', '', '', '', '', 1, NULL, '2023-03-14 22:26:31', '2023-03-28 22:26:31', NULL),
(31, 0, 'turycyk@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Abigail Mann', '', '', 'Meyer Irwin Co', '', '', '', '', '', 0, NULL, '2023-03-14 23:36:34', '2023-03-28 23:36:34', NULL),
(32, 0, 'pawaro@mailinator.com', '25f9e794323b453885f5181f1b624d0b', 'test1', '', '', 'test1', '', '', '', '', '', 0, NULL, '2023-03-15 00:15:23', '2023-03-29 00:15:23', NULL),
(46, 0, 'lexada@mailinator.com', '70873e8580c9900986939611618d7b1e', 'Jordan Glass', '', '', 'Whitley and Cervantes Plc', 'tewrt', '', '', '', '', 1, '', '2023-03-21 14:43:57', '2023-04-04 13:43:57', NULL),
(47, 0, 'gyvirekyko@gmail.com', '550e1bafe077ff0b0b67f4e32f29d751', 'Vivien Deleon', '', '', 'Houston and White LLC', '', '', '', '', '', 1, '', '2023-03-21 23:25:42', '2023-04-04 22:25:42', NULL),
(48, 0, 'rogenahu@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Austin Ewing', '', '', 'Weeks Wiggins Trading', '', '', '', '', '', 1, '', '2023-03-21 23:28:22', '2023-04-04 22:28:22', NULL),
(49, 0, 'testuser123@gmail.com', '42bc710b0cdd08ebe1cda1fbf20d21a7', 'TEST USER', '', '', 'TEST COMPANY', '', '', '', '', '', 0, '', '2023-03-22 00:32:30', '2023-04-04 23:32:30', NULL),
(50, 0, 'jiggaman82@hotmail.com', '0a70b4f69b969911a4142c592aa2a6c2', 'Jase K', '', '', 'Explore', '', '', '', '', '', 0, '', '2023-03-24 01:20:27', '2023-04-07 00:20:27', NULL),
(51, 0, 'mavs@hotmail.com', '0a70b4f69b969911a4142c592aa2a6c2', 'Marcus', '', '', 'Mig', '', '', '', '', '', 0, '', '2023-03-24 01:23:09', '2023-04-07 00:23:09', NULL),
(52, 0, 'jiggaman78@hotmail.com', '0a70b4f69b969911a4142c592aa2a6c2', 'Marucs', '', '', 'ABC', '', '', '', '', '', 0, '', '2023-03-24 08:48:18', '2023-04-07 07:48:18', NULL),
(53, 0, 'jiggaman77822@hotmail.com', '0a70b4f69b969911a4142c592aa2a6c2', 'Jays', '', '', 'tigs', '', '', '', '', '', 0, '', '2023-04-03 23:45:44', '2023-04-17 23:45:44', NULL),
(54, 0, 'jiggaman7782@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Risa Joseph', '+1 (143) 685-8884', 'Nihil ipsam asperiores mollit perspiciatis quis o', 'Harrison and Robertson Associates', 'Hernandez Cotton Inc', 'Nobis sint delectus quia amet velit voluptatem', 'Itaque consectetur fugit comm', '98', 'india', 1, '', '2023-04-05 16:31:17', '2023-04-19 16:31:17', 'superadmin'),
(55, 0, 'pauloates96@gmail.com', '2d3f061baf960b50fd6da6d2fb676312', 'Paul Oates', '', '', 'Trial', '', '', '', '', '', 0, '', '2023-04-06 22:09:32', '2023-04-20 22:09:32', NULL),
(56, 0, 'sinovercosequalstan@gmail.com', 'c65094ce945080f2f3f561fd776de56a', 'Oliver Tan', '', '', 'otan', '', '', '', '', '', 0, '', '2023-04-10 14:53:13', '2023-04-24 14:53:13', NULL),
(57, 0, 'tusuqofy@mailinator.com', '25d55ad283aa400af464c76d713c07ad', 'Marny Wright', '', '', 'Wells and Fischer LLC', '', '', '', '', '', 0, '', '2023-04-11 14:57:53', '2023-04-25 14:57:53', NULL),
(58, 0, 'test@gmail.com', '37f214acb261b57185a6cf2885b634dd', 'Kristen Buchanan', '', '', 'Duncan Briggs Associates', '', '', '', '', '', 0, '', '2023-05-05 14:02:29', '2023-05-19 14:02:29', NULL),
(59, 0, 'tbiinfotech@gmail.com', '769513840e419562c10802a73c108c5d', 'Mohit', '', '', 'TBI', '', '', '', '', '', 0, '', '2023-05-10 01:46:12', '2023-05-24 01:46:12', NULL),
(60, 0, 'petro.koryaka@greenice.net', 'ddfe7fc16d097dabb5f57cc0144ef9ba', 'Petro Koryaka', '', '', 'none', '', '', '', '', '', 0, '', '2023-05-10 18:32:20', '2023-05-24 18:32:20', NULL),
(61, 0, 'sam005@yopmail.com', 'fecbc4cebe518173bf3b11aad27c7ff9', 'Sam', '', '', 'Weavers Web Solutions Pvt. Ltd', '', '', '', '', '', 0, '', '2023-05-16 01:21:14', '2023-05-30 01:21:14', NULL),
(62, 0, 'themaheshe1@gmail.com', 'ee015de2005dd0fd9355c8399ab6b64c', 'Mahesh Bhandari', '', '', 'Keepbrowsing', '', '', '', 'dddd', '', 1, '', '2023-05-16 06:09:49', '2023-05-30 06:09:49', NULL),
(63, 0, 'thakur.pooja14@gmail.com', '72abe6154cef24d460318309fabd141e', 'Pooja', '', '', 'TEST', '', '', '', '', '', 1, '', '2023-05-25 16:44:34', '2023-06-08 16:44:34', NULL),
(64, 0, 'punamsharmaupdates@gmail.com', '06e4dff3c420e66ae6927dc539ba82c6', 'Punam Sharma', '', '', 'Pamsar Technologies', '', '', '', '', '', 0, '', '2023-06-02 14:44:56', '2023-06-16 14:44:56', NULL),
(65, 0, 'gaqaz@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Briar Hardy', '', '', 'Alvarez and Pace Associates', '', '', '', '', '', 0, '', '2023-06-06 14:57:32', '2023-06-20 14:57:32', NULL),
(66, 0, 'hawisuxezy@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Paula Vazquez', '', '', 'Graham and Carrillo Inc', '', '', '', '', '', 0, '', '2023-06-06 17:21:01', '2023-06-20 17:21:01', NULL),
(67, 0, 'pyjuxikuh@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Dana Spencer', '', '', 'Lara and Burke Inc', '', '', '', '', '', 0, '', '2023-06-06 22:07:37', '2023-06-20 22:07:37', NULL),
(68, 0, 'xyko@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Igor Lester', '', '', 'Branch and Gamble LLC', '', '', '', '', '', 0, '', '2023-06-07 03:26:52', '2023-06-21 03:26:52', NULL),
(69, 0, 'wytarajik@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'MacKensie Glover', '', '', 'Miles Kline Plc', '', '', '', '', '', 0, '', '2023-06-07 18:30:22', '2023-06-21 18:30:22', NULL),
(70, 0, 'hiryga@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Raya Clemons', '', '', 'Noel and Lindsey LLC', '', '', '', '', '', 0, '', '2023-06-12 18:44:45', '2023-06-26 18:44:45', NULL),
(79, 54, 'jiggaman7782@hotmail.com', '70873e8580c9900986939611618d7b1e', 'Heena', '9745421', 'Consequatur corporis doloribus minus autem ut dol', 'Potts Avery LLC', 'Potts Avery LLC', 'ANZ', 'Roach and Cox Trading', '121332', 'india', 0, '', '2023-06-16 11:50:08', '2023-06-16 11:50:08', 'user'),
(81, 54, 'jiggaman7782@hotmail.com', '0a70b4f69b969911a4142c592aa2a6c2', 'Jay kz', '', '', 'ANZ', 'Roach and Cox Trading', 'Numquam corporis nihil sunt ut eos quibusdam nisi ', 'Aliqua Et proident reprehender', '', '', 0, '', '2023-06-16 11:50:43', '2023-06-16 11:50:43', 'user'),
(82, 54, 'jiggaman7782@hotmail.com', '0a70b4f69b969911a4142c592aa2a6c2', 'Jay kz', '', '', 'ANZ', 'Roach and Cox Trading', 'Numquam corporis nihil sunt ut eos quibusdam nisi ', 'Aliqua Et proident reprehender', '121332', '', 0, '', '2023-06-16 11:51:16', '2023-06-16 11:51:16', 'user'),
(83, 54, 'jiggaman7782@hotmail.com', '0a70b4f69b969911a4142c592aa2a6c2', 'Jay kz', '+1 (977) 186-7576', 'Consequatur corporis doloribus minus autem ut dol', 'ANZ', 'Roach and Cox Trading', 'Numquam corporis nihil sunt ut eos quibusdam nisi ', 'Aliqua Et proident reprehender', '121332', 'Do eos mollitia sunt ', 0, '', '2023-06-16 12:21:00', '2023-06-16 12:21:00', 'user'),
(85, 54, 'ommy@gmail.com', '0a70b4f69b969911a4142c592aa2a6c2', 'Jay kz', '', '', 'ANZ', '', '', '', '', '', 0, '', '2023-06-16 12:22:29', '2023-06-16 12:22:29', 'user'),
(86, 54, 'dev2.bdpl@gmail.com', '0a70b4f69b969911a4142c592aa2a6c2', 'Jay kz', '+1 (977) 186-7576', '', 'ANZ', 'Roach and Cox Trading', 'Numquam corporis nihil sunt ut eos quibusdam nisi ', 'Aliqua Et proident reprehender', '121332', '', 0, '', '2023-06-16 12:23:22', '2023-06-16 12:23:22', 'user'),
(89, 54, 'lyri@mailinator.com', 'Pa$$w0rd!', 'Quintessa Cooke', '+1 (543) 641-9694', 'Repellendus Soluta corporis pariatur Non et quis', 'Carr and Walton Associates', 'Solomon Burgess Traders', 'Fugiat non dolore veniam explicabo Dolores prov', 'Dicta reprehenderit eiusmod pr', '10', 'Dolor ', 0, '', '2023-06-16 12:24:57', '2023-06-16 12:24:57', 'user'),
(91, 54, 'hygi@mailinator.com', 'Pa$$w0rd!', 'Raja Bryant', '+1 (887) 151-5591', 'Officia dolorem nisi ut officia minus', 'Neal Colon Associates', 'Barker Horne Inc', 'Commodi id excepteur unde dicta sint sit quae iust', 'Qui ea illo sint numquam duis ', '2543425', 'Explicabo ', 0, '', '2023-06-16 12:33:56', '2023-06-16 12:33:56', 'user'),
(92, 54, 'cukyrud@mailinator.com', 'Pa$$w0rd!', 'Charlotte Carson', '+1 (295) 322-5336', 'mohali', 'binarydata', 'chinchpokali', 'bandra', 'chcpokali', '176312', 'australia', 0, '', '2023-06-16 12:41:15', '2023-06-16 12:41:15', 'user'),
(93, 54, 'caraleqa@mailinator.com', 'Pa$$w0rd!', 'Knox Foley', '+1 (533) 419-9354', 'Officia reiciendis eum assumenda autem nulla modi ', 'Ratliff and Farley Inc', 'Gardner and Church Trading', 'Et proident ipsam est dignissimos ipsa neque nem', 'Enim reprehenderit aut itaque', '121332', 'Pariatur', 0, '', '2023-06-16 12:42:06', '2023-06-16 12:42:06', 'user'),
(94, 54, 'qohesafex@mailinator.com', 'Pa$$w0rd!', 'Kibo Duke', '+1 (434) 265-3188', 'Esse qui quis impedit natus aliquip voluptatem f', 'Cooke and Rosales Traders', 'Dunlap Burgess Trading', 'Omnis ex natus similique recusandae Sit laboriosa', 'Quo et ipsa fuga Dignissimos', '64', 'Autem', 0, '', '2023-06-16 12:42:23', '2023-06-16 12:42:23', 'user'),
(95, 54, 'guhuf@mailinator.com', 'Pa$$w0rd!', 'Clio Fox', '+1 (531) 946-9967', 'Nemo aspernatur enim ea eum neque veritatis fugit', 'Bray and Graham Co', 'Sykes Tanner Inc', 'Ullam excepteur lorem ut aliquid ipsa', 'Sit quisquam odit suscipit ut', '38', 'Hic ', 0, '', '2023-06-16 12:42:35', '2023-06-16 12:42:35', 'user'),
(96, 54, 'qeqefopit@mailinator.com', 'Pa$$w0rd!', 'Quinlan Oneill', '+1 (936) 322-5416', 'Error possimus harum nisi est aperiam perspiciati', 'Hutchinson Alford Plc', 'Shields and Stafford Traders', 'Qui sed fugiat aut ut commodo', 'Nostrud sunt quis nisi qui sun', '31', 'fgdfghdfh', 0, '', '2023-06-16 12:48:23', '2023-06-16 12:48:23', 'user'),
(97, 54, 'gonykewus@mailinator.com', 'Pa$$w0rd!', 'Thaddeus Walters', '+1 (177) 455-5971', 'Reiciendis commodi quo quod quis excepturi eos dig', 'Burks and Church Inc', 'Rosario Humphrey Co', 'Doloribus vel sunt aspernatur animi sint sint eli', 'Aut tempore tenetur labore au', '59', 'india', 0, '', '2023-06-16 15:08:51', '2023-06-16 15:08:51', 'user'),
(98, 54, 'kafiduzip@mailinator.com', 'Pa$$w0rd!', 'Joelle Logan', '+1 (546) 372-2688', 'Placeat et sit aliqua Rem odit velit aute eum ', 'Hayden Cain Associates', 'Valencia Jennings Trading', 'Quod nulla sed voluptas consequatur ex quia modi ', 'Quam magni facere sint nostrum', '78842', 'india', 0, '', '2023-06-16 15:29:19', '2023-06-16 15:29:19', 'user'),
(99, 54, 'budasepi@mailinator.com', 'Pa$$w0rd!', 'Kieran Cantu', '+1 (501) 709-4026', 'Officia sequi consequuntur quas cumque debitis dis', 'Reid and Stephens Trading', 'Gregory and Charles Co', 'Mollit veniam eum dolorum et obcaecati maiores su', 'Ex quis aperiam ratione sunt c', '43', 'indda', 0, '', '2023-06-16 15:30:07', '2023-06-16 15:30:07', 'user'),
(100, 54, 'mizavakuz@mailinator.com', 'Pa$$w0rd!', 'Rina Chen', '+1 (823) 465-3225', 'Ut eiusmod impedit cupiditate quam dolore quis', 'Bates and Morse LLC', 'Baird Zamora Inc', 'Eum amet est quam dolorem veritatis', 'Ipsam architecto ut natus comm', '233367', 'add', 0, '', '2023-06-16 17:30:05', '2023-06-16 17:30:05', 'user'),
(101, 54, 'nepetywyxa@mailinator.com', 'Pa$$w0rd!', 'Daria Farmer', '+1 (669) 186-8823', 'Quae ut provident repellendus Ut et esse magna ', 'Meadows and Nelson Plc', 'Cotton and Patton Plc', 'Deserunt esse non ullamco qui iure occaecat amet ', 'Et reprehenderit quae laborum ', '62', 'addd', 0, '', '2023-06-16 17:41:39', '2023-06-16 17:41:39', 'user'),
(102, 54, 'papavemuk@mailinator.com', 'Pa$$w0rd!', 'Mollie Carr', '+1 (478) 603-2126', 'Esse ducimus recusandae Praesentium ea sint vo', 'Cunningham Sawyer Trading', 'Pratt and Faulkner Trading', 'Occaecat in animi nesciunt deserunt repellendus', 'Animi nihil voluptatem Alias', '254545', 'pak', 0, '', '2023-06-16 18:21:42', '2023-06-16 18:21:42', 'user'),
(103, 54, 'nynu@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Sara Shaw', '+1 (961) 398-5177', 'Velit qui est ipsum rerum eligendi eum vel anim a', 'Battle and Lara Plc', 'Cooley Allison Plc', 'Nobis in dolorum harum et delectus commodo sed es', 'Ea tenetur ut ut voluptatem S', '1', 'add', 0, '', '2023-06-16 18:22:50', '2023-06-16 18:22:50', 'user'),
(104, 1, 'homemipib@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Edan Wheeler', '', '', 'Mccray Spencer Associates', '', '', '', '', '', 0, '', '2023-06-17 15:00:40', '2023-07-01 15:00:40', 'user'),
(105, 0, 'zujo@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Micah Garza', '', '', 'Juarez and Savage Co', '', '', '', '', '', 0, '', '2023-06-17 15:01:12', '2023-07-01 15:01:12', 'user'),
(106, 0, 'ryxukojiw@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Madaline Duffy', '', '', 'Dorsey Mcgowan Traders', '', '', '', '', '', 0, '', '2023-06-17 15:01:41', '2023-07-01 15:01:41', 'user'),
(107, 0, 'biqa@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Wanda Galloway', '', '', 'Duncan Melendez Plc', '', '', '', '', '', 0, '', '2023-06-17 15:01:58', '2023-07-01 15:01:58', 'user'),
(108, 0, 'texif@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Emi Chapman', '', '', 'Leach and Albert Co', '', '', '', '', '', 0, '', '2023-06-17 15:02:14', '2023-07-01 15:02:14', 'user'),
(109, 0, 'berof@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Moses Strong', '', '', 'Ratliff and Puckett Inc', '', '', '', '', '', 0, '', '2023-06-17 15:04:01', '2023-07-01 15:04:01', 'user'),
(110, 0, 'hynylyze@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Darrel Byrd', '', '', 'Wallace and Oconnor Co', '', '', '', '', '', 0, '', '2023-06-17 15:06:50', '2023-07-01 15:06:50', 'user'),
(111, 0, 'pihosuhug@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Kasper Cervantes', '', '', 'Fox Christensen LLC', '', '', '', '', '', 0, '', '2023-06-17 15:13:37', '2023-07-01 15:13:37', 'user'),
(112, 0, 'necy@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Charity Moses', '', '', 'Whitehead and Maynard Trading', '', '', '', '', '', 0, '', '2023-06-17 15:15:05', '2023-07-01 15:15:05', 'user'),
(113, 0, 'sumusahoj@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Marny Chandler', '', '', 'Short Bush LLC', '', '', '', '', '', 0, '', '2023-06-17 15:18:34', '2023-07-01 15:18:34', 'user'),
(114, 0, 'vizyfymari@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Melanie Norman', '', '', 'Weber and Church Associates', '', '', '', '', '', 0, '', '2023-06-17 15:19:06', '2023-07-01 15:19:06', 'user'),
(115, 0, 'lidivadita@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Adria White', '', '', 'Deleon David Trading', '', '', '', '', '', 0, '', '2023-06-17 15:20:29', '2023-07-01 15:20:29', 'user'),
(116, 0, 'pevuzox@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Ethan Morrow', '', '', 'Chavez and Merritt LLC', '', '', '', '', '', 0, '', '2023-06-17 19:03:12', '2023-07-01 19:03:12', 'user'),
(117, 0, 'hedywa@mailinator.com', '56de48825b002939979921f9ea0c9033', 'Lee Cherry', '+1 (977) 186-7576', 'Consequatur corporis doloribus minus autem ut dol', 'Melendez Lawson Traders', 'Roach and Cox Trading', 'Numquam corporis nihil sunt ut eos quibusdam nisi ', 'Fugiat voluptate commodi molli', '121332', 'india', 1, '', '2023-06-19 13:41:26', '2023-07-03 13:41:26', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aml_cat`
--
ALTER TABLE `aml_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aml_details`
--
ALTER TABLE `aml_details`
  ADD PRIMARY KEY (`iddetail`);

--
-- Indexes for table `aml_subcat`
--
ALTER TABLE `aml_subcat`
  ADD PRIMARY KEY (`idcat`);

--
-- Indexes for table `as_actiontype`
--
ALTER TABLE `as_actiontype`
  ADD PRIMARY KEY (`idaction`);

--
-- Indexes for table `as_aml`
--
ALTER TABLE `as_aml`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `as_ascontrols`
--
ALTER TABLE `as_ascontrols`
  ADD PRIMARY KEY (`idcontrol`);

--
-- Indexes for table `as_assessment`
--
ALTER TABLE `as_assessment`
  ADD PRIMARY KEY (`idassessment`);

--
-- Indexes for table `as_astreat`
--
ALTER TABLE `as_astreat`
  ADD PRIMARY KEY (`idtreat`);

--
-- Indexes for table `as_auditcontrols`
--
ALTER TABLE `as_auditcontrols`
  ADD PRIMARY KEY (`idcontrol`);

--
-- Indexes for table `as_auditcriteria`
--
ALTER TABLE `as_auditcriteria`
  ADD PRIMARY KEY (`idcriteria`);

--
-- Indexes for table `as_audits`
--
ALTER TABLE `as_audits`
  ADD PRIMARY KEY (`idaudit`);

--
-- Indexes for table `as_bia`
--
ALTER TABLE `as_bia`
  ADD PRIMARY KEY (`idbia`);

--
-- Indexes for table `as_cat`
--
ALTER TABLE `as_cat`
  ADD PRIMARY KEY (`idcat`);

--
-- Indexes for table `as_compliancestandard`
--
ALTER TABLE `as_compliancestandard`
  ADD PRIMARY KEY (`idcompliance`);

--
-- Indexes for table `as_consequence`
--
ALTER TABLE `as_consequence`
  ADD PRIMARY KEY (`idconsequence`);

--
-- Indexes for table `as_context`
--
ALTER TABLE `as_context`
  ADD PRIMARY KEY (`idcontext`);

--
-- Indexes for table `as_controls`
--
ALTER TABLE `as_controls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `as_details`
--
ALTER TABLE `as_details`
  ADD PRIMARY KEY (`iddetail`);

--
-- Indexes for table `as_incidents`
--
ALTER TABLE `as_incidents`
  ADD PRIMARY KEY (`idincident`);

--
-- Indexes for table `as_insurance`
--
ALTER TABLE `as_insurance`
  ADD PRIMARY KEY (`idinsurance`);

--
-- Indexes for table `as_like`
--
ALTER TABLE `as_like`
  ADD PRIMARY KEY (`idlike`);

--
-- Indexes for table `as_procedures`
--
ALTER TABLE `as_procedures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `as_riskdescript`
--
ALTER TABLE `as_riskdescript`
  ADD PRIMARY KEY (`iddescript`);

--
-- Indexes for table `as_risks`
--
ALTER TABLE `as_risks`
  ADD PRIMARY KEY (`idrisk`);

--
-- Indexes for table `as_treatments`
--
ALTER TABLE `as_treatments`
  ADD PRIMARY KEY (`idtreatment`);

--
-- Indexes for table `as_types`
--
ALTER TABLE `as_types`
  ADD PRIMARY KEY (`idtype`);

--
-- Indexes for table `policyfields`
--
ALTER TABLE `policyfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aml_cat`
--
ALTER TABLE `aml_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `aml_details`
--
ALTER TABLE `aml_details`
  MODIFY `iddetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `aml_subcat`
--
ALTER TABLE `aml_subcat`
  MODIFY `idcat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=488;

--
-- AUTO_INCREMENT for table `as_actiontype`
--
ALTER TABLE `as_actiontype`
  MODIFY `idaction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `as_aml`
--
ALTER TABLE `as_aml`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `as_ascontrols`
--
ALTER TABLE `as_ascontrols`
  MODIFY `idcontrol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `as_assessment`
--
ALTER TABLE `as_assessment`
  MODIFY `idassessment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `as_astreat`
--
ALTER TABLE `as_astreat`
  MODIFY `idtreat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `as_auditcontrols`
--
ALTER TABLE `as_auditcontrols`
  MODIFY `idcontrol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `as_auditcriteria`
--
ALTER TABLE `as_auditcriteria`
  MODIFY `idcriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `as_audits`
--
ALTER TABLE `as_audits`
  MODIFY `idaudit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `as_bia`
--
ALTER TABLE `as_bia`
  MODIFY `idbia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `as_cat`
--
ALTER TABLE `as_cat`
  MODIFY `idcat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=488;

--
-- AUTO_INCREMENT for table `as_compliancestandard`
--
ALTER TABLE `as_compliancestandard`
  MODIFY `idcompliance` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `as_consequence`
--
ALTER TABLE `as_consequence`
  MODIFY `idconsequence` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `as_context`
--
ALTER TABLE `as_context`
  MODIFY `idcontext` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `as_controls`
--
ALTER TABLE `as_controls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `as_details`
--
ALTER TABLE `as_details`
  MODIFY `iddetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `as_incidents`
--
ALTER TABLE `as_incidents`
  MODIFY `idincident` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `as_insurance`
--
ALTER TABLE `as_insurance`
  MODIFY `idinsurance` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `as_like`
--
ALTER TABLE `as_like`
  MODIFY `idlike` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `as_procedures`
--
ALTER TABLE `as_procedures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `as_riskdescript`
--
ALTER TABLE `as_riskdescript`
  MODIFY `iddescript` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `as_risks`
--
ALTER TABLE `as_risks`
  MODIFY `idrisk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `as_treatments`
--
ALTER TABLE `as_treatments`
  MODIFY `idtreatment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `as_types`
--
ALTER TABLE `as_types`
  MODIFY `idtype` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `policyfields`
--
ALTER TABLE `policyfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
