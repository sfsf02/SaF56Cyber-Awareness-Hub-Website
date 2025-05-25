-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 25, 2025 at 10:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `textpattern`
--

-- --------------------------------------------------------

--
-- Table structure for table `textpattern`
--

CREATE TABLE `textpattern` (
  `ID` int(11) NOT NULL,
  `Posted` datetime NOT NULL,
  `Expires` datetime DEFAULT NULL,
  `AuthorID` varchar(64) NOT NULL DEFAULT '',
  `LastMod` datetime NOT NULL,
  `LastModID` varchar(64) NOT NULL DEFAULT '',
  `Title` varchar(255) NOT NULL DEFAULT '',
  `Title_html` varchar(255) NOT NULL DEFAULT '',
  `Body` mediumtext NOT NULL,
  `Body_html` mediumtext NOT NULL,
  `Excerpt` text NOT NULL,
  `Excerpt_html` mediumtext NOT NULL,
  `Image` varchar(255) NOT NULL DEFAULT '',
  `Category1` varchar(64) NOT NULL DEFAULT '',
  `Category2` varchar(64) NOT NULL DEFAULT '',
  `Annotate` int(11) NOT NULL DEFAULT 0,
  `AnnotateInvite` varchar(255) NOT NULL DEFAULT '',
  `comments_count` int(11) NOT NULL DEFAULT 0,
  `Status` int(11) NOT NULL DEFAULT 4,
  `textile_body` varchar(32) NOT NULL DEFAULT '1',
  `textile_excerpt` varchar(32) NOT NULL DEFAULT '1',
  `Section` varchar(255) NOT NULL DEFAULT '',
  `override_form` varchar(255) NOT NULL DEFAULT '',
  `Keywords` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `url_title` varchar(255) NOT NULL DEFAULT '',
  `custom_1` varchar(255) NOT NULL DEFAULT '',
  `custom_2` varchar(255) NOT NULL DEFAULT '',
  `custom_3` varchar(255) NOT NULL DEFAULT '',
  `custom_4` varchar(255) NOT NULL DEFAULT '',
  `custom_5` varchar(255) NOT NULL DEFAULT '',
  `custom_6` varchar(255) NOT NULL DEFAULT '',
  `custom_7` varchar(255) NOT NULL DEFAULT '',
  `custom_8` varchar(255) NOT NULL DEFAULT '',
  `custom_9` varchar(255) NOT NULL DEFAULT '',
  `custom_10` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(32) NOT NULL DEFAULT '',
  `feed_time` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `txp_category`
--

CREATE TABLE `txp_category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(64) NOT NULL DEFAULT '',
  `parent` varchar(64) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `txp_category`
--

INSERT INTO `txp_category` (`id`, `name`, `type`, `parent`, `lft`, `rgt`, `title`, `description`) VALUES
(1, 'root', 'article', '', 1, 8, 'root', ''),
(2, 'root', 'link', '', 1, 4, 'root', ''),
(3, 'root', 'image', '', 1, 2, 'root', ''),
(4, 'root', 'file', '', 1, 2, 'root', ''),
(5, 'everything-is-going-to-be-alright', 'article', 'root', 2, 3, 'Everything is going to be alright', ''),
(6, 'hope-for-the-future', 'article', 'root', 4, 5, 'Hope for the future', ''),
(7, 'meaningful-labor', 'article', 'root', 6, 7, 'Meaningful labor', ''),
(8, 'textpattern', 'link', 'root', 2, 3, 'Textpattern', '');

-- --------------------------------------------------------

--
-- Table structure for table `txp_css`
--

CREATE TABLE `txp_css` (
  `name` varchar(255) NOT NULL,
  `css` mediumtext NOT NULL,
  `skin` varchar(63) NOT NULL DEFAULT 'default',
  `lastmod` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `txp_css`
--

INSERT INTO `txp_css` (`name`, `css`, `skin`, `lastmod`) VALUES
('default', '@charset \"UTF-8\";\n/* ==========================================================================\n   Styling and layout for all media\n   ========================================================================== */\n/* Reset\n   ========================================================================== */\n/**\n * Add the correct display in IE 11 and Firefox.\n */\ndetails,\nmain {\n  display: block;\n}\n\n/**\n * Add the correct vertical alignment in Chrome, Edge, Firefox, and Opera.\n */\nprogress {\n  vertical-align: baseline;\n}\n\n/**\n * Add the correct display in all browsers.\n */\nsummary {\n  display: list-item;\n}\n\n/* Clearfix\n   ========================================================================== */\nheader::after,\nfooter::after,\nnav ul::after,\nnav ol::after,\n.container::after {\n  content: \"\";\n  display: table;\n  clear: both;\n}\n\n/* ==========================================================================\n   Styling and layout for screen media (mobile first)\n   ========================================================================== */\n@media screen {\n  /* Layout\n     ========================================================================== */\n  /**\n   * 1. Prevent adjustments of font size after orientation changes in\n   *    IE on Windows Phone and in iOS.\n   */\n  html {\n    /* 1 */\n    -webkit-text-size-adjust: 100%;\n            text-size-adjust: 100%;\n  }\n\n  /**\n   * 1. Set `body` to `relative` to allow positioning of absolute elements.\n   * 2. Remove default margin.\n   */\n  body {\n    /* 1 */\n    position: relative;\n    /* 2 */\n    margin: 0;\n    background: #f7f7f7;\n  }\n\n  /**\n   * Outer wrapper for main layouts.\n   *\n   * Example HTML:\n   *\n   * <div class=\"wrapper\">\n   *     <div class=\"container\">\n   *         Content\n   *     </div>\n   * </div>\n   */\n  .wrapper {\n    padding: 1px 0;\n    border-bottom: 1px solid #cccccc;\n    background: #ffffff;\n  }\n\n  /**\n   * Wrapper for layouts, and for site header/footer.\n   *\n   * Example HTML:\n   *\n   * <div class=\"wrapper\">\n   *     <div class=\"container\">\n   *         Content\n   *     </div>\n   * </div>\n   */\n  .site-header,\n.site-footer,\n.container {\n    width: 88%;\n    max-width: 54em;\n    margin: 0 auto;\n  }\n\n  /**\n   * Additional styling for child content within site header.\n   */\n  .site-header {\n    padding: 1em 0;\n  }\n  .site-header h2 {\n    margin: 0;\n  }\n  .site-header h3 {\n    margin: 0.5em 0 0;\n    font-family: \"PT Serif\", Constantia, \"Lucida Bright\", Lucidabright, \"Lucida Serif\", Lucida, \"DejaVu Serif\", \"Bitstream Vera Serif\", \"Liberation Serif\", Georgia, serif;\n    font-size: 1.25rem;\n    font-style: italic;\n    font-weight: normal;\n    line-height: 1.4;\n  }\n\n  /**\n   * Additional styling for child content within site footer.\n   */\n  .site-footer {\n    padding: 0.5em 0;\n  }\n\n  /**\n   * Styling for articles.\n   *\n   * 1. Prevent really, really long words in article from breaking layout.\n   */\n  .article {\n    margin-bottom: 2em;\n    /* 1 */\n    word-wrap: break-word;\n  }\n\n  /**\n   * Styling for complementary content.\n   *\n   * Initially the sidebar appears under main content, it is then repositioned\n   * with media queries at 2nd breakpoint.\n   *\n   * 1. Prevent really, really long words in article from breaking layout.\n   */\n  .complementary-content {\n    margin: 2em -6% 0;\n    padding: 0 6%;\n    border-top: 2px dashed #cccccc;\n    /* 1 */\n    word-wrap: break-word;\n  }\n\n  /**\n   * Hide text but still allow screen reader access.\n   *\n   * Example HTML:\n   *\n   * <p class=\"accessibility\">\n   */\n  .accessibility {\n    position: absolute;\n    width: 1px;\n    height: 1px;\n    margin: -1px;\n    padding: 0;\n    overflow: hidden;\n    clip: rect(0 0 0 0);\n    border: 0;\n    white-space: nowrap;\n  }\n\n  /* Navigation\n     ========================================================================== */\n  /**\n   * Style mobile first version of the navigation menu. Desktop version will\n   * override some rules with extra styling at 1st breakpoint.\n   *\n   * Example HTML:\n   *\n   * <nav class=\"site-navigation\">\n   *     <div>\n   *         <ul>\n   *             <li class=\"active\"><a></li>\n   *             <li><a></li>\n   *             <li><a></li>\n   *         </ul>\n   *         <div class=\"search\">\n   *             <form>\n   *                 <input type=\"search\">\n   *             </form>\n   *        </div>\n   *    </div>\n   * </nav>\n   */\n  .site-navigation {\n    background-color: #dddddd;\n  }\n  .site-navigation > div {\n    position: relative;\n    max-width: 54em;\n    margin: 0 auto;\n  }\n  .site-navigation ul {\n    margin: 0;\n    padding: 0;\n    border: solid #cccccc;\n    border-width: 1px 0;\n    list-style: none;\n  }\n  .site-navigation li {\n    border: solid #cccccc;\n    border-width: 1px 0;\n    background-color: #eeeeee;\n  }\n  .site-navigation li:hover {\n    background-color: #f8f8f8;\n  }\n  .site-navigation li:active {\n    background-color: lightgray;\n    box-shadow: inset 0 0.2em 0.25em rgba(0, 0, 0, 0.15);\n  }\n  .site-navigation li.active {\n    background-color: white;\n    box-shadow: none;\n  }\n  .site-navigation a {\n    display: block;\n    padding: 0.5em 6%;\n    color: #333333;\n  }\n  .site-navigation a:hover, .site-navigation a:visited {\n    color: #333333;\n    text-decoration: none;\n  }\n  .site-navigation a:active {\n    color: #1a1a1a;\n    text-decoration: none;\n  }\n\n  /**\n   * Search field in navigation.\n   */\n  .search {\n    padding: 1em 6% 0.5em;\n    background: #ffffff;\n  }\n  .search input[type=search] {\n    width: 16em;\n    height: 2.125em;\n    padding-right: 0.1875em;\n    padding-left: 2em;\n    border-radius: 0.5em;\n    background: url(\"data:image/svg+xml,%3Csvg xmlns=%27http://www.w3.org/2000/svg%27 width=%2732%27 height=%2732%27 viewBox=%270 0 32 32%27%3E%3Cg fill=%27%23333%27%3E%3Cpath d=%27M4,13c0-5,4-9,9-9c5,0,9,4,9,9c0,5-4,9-9,9C8,22,4,18,4,13z M13,19c3.3,0,6-2.7,6-6s-2.7-6-6-6s-6,2.7-6,6S9.7,19,13,19z%27/%3E%3Cpath d=%27M17.5,19l1.5-1.5l4.5,3L28,25c0,0,0,1.5-0.75,2.25S25,28,25,28l-4.5-4.5L17.5,19z%27/%3E%3C/g%3E%3C/svg%3E\") no-repeat left center;\n    background-size: 2em 2em;\n  }\n\n  /* Links\n     ========================================================================== */\n  /**\n   * 1. Specify link colour.\n   * 2. Remove default underline style from non-hover state links.\n   * 3. Interrupt the decoration line to let the shape of the text show through\n   *    in supported browsers.\n   * 4. Remove tap delay in modern browsers.\n   */\n  a {\n    /* 1 */\n    color: #004cbf;\n    /* 2 */\n    text-decoration: none;\n    /* 3 */\n    -webkit-text-decoration-skip: ink;\n            text-decoration-skip-ink: auto;\n    /* 4 */\n    touch-action: manipulation;\n  }\n  a:hover, a:active {\n    outline: 0;\n    color: #0066ff;\n    text-decoration: underline;\n  }\n  a:focus {\n    outline: 1px solid #0066ff;\n  }\n\n  /**\n   * Additional styling for `h1`-`h3` heading links.\n   *\n   * 1. Expanded CSS level 3 `text-decoration-color` property in supported\n   *    browsers, older browsers ignore this addition.\n   */\n  h1 a,\nh2 a,\nh3 a,\nh4 a,\nh5 a,\nh6 a {\n    color: #000000;\n  }\n  h1 a:hover, h1 a:active,\nh2 a:hover,\nh2 a:active,\nh3 a:hover,\nh3 a:active,\nh4 a:hover,\nh4 a:active,\nh5 a:hover,\nh5 a:active,\nh6 a:hover,\nh6 a:active {\n    color: #000000;\n    /* 1 */\n    -webkit-text-decoration-color: rgba(51, 51, 51, 0.5);\n            text-decoration-color: rgba(51, 51, 51, 0.5);\n  }\n\n  /**\n   * Paginator (prev/next) navigation links on articles/article lists.\n   *\n   * Example HTML:\n   *\n   * <nav class=\"paginator\">\n   *     <a rel=\"prev\">\n   *     <a rel=\"next\">\n   */\n  .paginator {\n    display: flex;\n    justify-content: space-between;\n  }\n\n  /**\n   * Visually hide unfocussed/inactive ‘skip links’.\n   *\n   * Example HTML:\n   *\n   * <a class=\"skip-link\">\n   */\n  .skip-link {\n    position: absolute;\n    z-index: 2;\n    top: 1px;\n    left: 1px;\n    padding: 0.25em 0.5em;\n    transform: translateY(-5em);\n    transition: transform 0.25s ease-in-out;\n    background-color: white;\n    color: #333333;\n    font-family: system-ui, -apple-system, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\";\n  }\n  .skip-link:focus, .skip-link:active {\n    transform: translateY(0);\n  }\n\n  /* Typography\n     ========================================================================== */\n  /**\n   * Establish baseline.\n   */\n  html {\n    font-size: 16px;\n    line-height: 1.5;\n  }\n\n  /**\n   * Global font and text colour.\n   */\n  body {\n    color: #333333;\n    font-family: \"PT Serif\", Constantia, \"Lucida Bright\", Lucidabright, \"Lucida Serif\", Lucida, \"DejaVu Serif\", \"Bitstream Vera Serif\", \"Liberation Serif\", Georgia, serif;\n  }\n\n  /**\n   * Sans-serif font for main navigation menu.\n   */\n  .site-navigation {\n    font-family: system-ui, -apple-system, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\";\n    font-weight: bold;\n  }\n\n  /**\n   * Harmonize size, style and vertical margin of headings.\n   */\n  h1,\nh2,\nh3,\nh4,\nh5,\nh6 {\n    clear: both;\n    color: #000000;\n    font-family: system-ui, -apple-system, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\";\n  }\n\n  h1 {\n    margin: 0.6315789em 0;\n    font-size: 2.375rem;\n    letter-spacing: -0.25px;\n    line-height: 1.1842105;\n  }\n\n  h2 {\n    margin: 0.75em 0;\n    font-size: 2rem;\n    letter-spacing: -0.25px;\n    line-height: 1.25;\n  }\n\n  h3 {\n    margin: 1em 0;\n    font-size: 1.5rem;\n    letter-spacing: -0.25px;\n    line-height: 1.3333333;\n  }\n\n  h4 {\n    margin: 1em 0;\n    font-size: 1.25rem;\n    line-height: 1.4;\n  }\n\n  h5 {\n    margin: 1em 0;\n    font-size: 1.125rem;\n    line-height: 1.4444444;\n  }\n\n  h6 {\n    margin: 1em 0;\n    font-size: 1rem;\n    line-height: 1.5;\n  }\n\n  /**\n   * Add the correct font weight in Chrome, Edge, and Safari.\n   */\n  b,\nstrong {\n    font-weight: bolder;\n  }\n\n  /**\n   * Add vertical margin to addresses.\n   */\n  address {\n    margin: 1em 0;\n  }\n\n  /**\n   * Additional styling for blockquotes.\n   */\n  blockquote {\n    margin: 0.8em 0;\n    font-size: 1.25rem;\n    font-style: italic;\n    line-height: 1.4;\n    text-align: center;\n  }\n\n  /**\n   * 1. Remove the bottom border in Chrome 57+.\n   * 2. Add the correct text decoration in Chrome, Edge, IE, Opera, and Safari.\n   */\n  abbr[title] {\n    /* 1 */\n    border-bottom: 0;\n    /* 2 */\n    -webkit-text-decoration: underline dotted;\n            text-decoration: underline dotted;\n  }\n\n  /**\n   * Consistent styling for `mark` and `var` tags.\n   */\n  mark,\nvar {\n    padding: 0 0.25em;\n    border-radius: 0.25em;\n    background: #fff9e1;\n    color: #333333;\n  }\n\n  /**\n   * Harmonize size and style of computer text.\n   */\n  pre,\ncode,\nkbd,\nsamp {\n    border: 1px solid #e3e3e3;\n    border-radius: 0.2857143em;\n    background-color: #f7f7f7;\n    color: #333333;\n    font-family: Menlo, Consolas, Monaco, monospace;\n    font-size: 0.875rem;\n    line-height: 1.5;\n  }\n\n  code,\nkbd,\nsamp {\n    padding: 1px 0.21429em;\n  }\n\n  /**\n   * Additional stylng for preformatted text/code.\n   *\n   * 1. Contain overflow in all browsers.\n   * 2. Don\'t wrap long words.\n   * 3. Set tab size to 4 spaces.\n   */\n  pre {\n    padding: 0.5714286em 1.1428571em;\n    /* 1 */\n    overflow-x: auto;\n    /* 2 */\n    word-wrap: normal;\n    /* 3 */\n    -moz-tab-size: 4;\n      -o-tab-size: 4;\n         tab-size: 4;\n  }\n  pre code {\n    padding: 0;\n    border: 0;\n    background-color: transparent;\n    direction: ltr;\n    font-size: 1em;\n    -webkit-hyphens: none;\n        -ms-hyphens: none;\n            hyphens: none;\n    text-align: left;\n    word-wrap: normal;\n    word-break: normal;\n    word-spacing: normal;\n    white-space: pre;\n  }\n\n  /**\n   * Prevent `sub` and `sup` elements from affecting the line height in all\n   * browsers.\n   */\n  sub,\nsup.footnote,\nsup {\n    position: relative;\n    font-size: 0.75em;\n    line-height: 0;\n    vertical-align: baseline;\n  }\n\n  sup {\n    top: -0.5em;\n  }\n\n  sub {\n    bottom: -0.25em;\n  }\n\n  /**\n   * Harmonize size and style of small text.\n   */\n  small,\nfigcaption,\ntfoot,\n.footnote {\n    font-size: 0.8125rem;\n    line-height: 1.5;\n  }\n\n  figcaption,\ntfoot,\n.footnote {\n    color: #585858;\n  }\n\n  figcaption {\n    margin-top: 0.5em;\n    font-style: italic;\n  }\n\n  /**\n   * 1. Add the correct box sizing in Firefox.\n   * 2. Show the overflow in Edge and IE.\n   */\n  hr {\n    /* 1 */\n    box-sizing: content-box;\n    height: 24px;\n    margin: 1em 0;\n    /* 2 */\n    overflow: visible;\n    border: 0;\n    background: url(\"data:image/svg+xml,%3Csvg xmlns=%27http://www.w3.org/2000/svg%27 viewBox=%270 0 240 24%27%3E%3Cpath fill=%27%23333%27 d=%27M0,0c1.742,13.61,54.74,20.912,119.995,15.279C184.922,9.679,238.594,13.024,240,24c-1.744-13.613-54.742-20.913-120.005-15.284C55.078,14.32,1.405,10.973,0,0z%27/%3E%3C/svg%3E\") 50% 50% no-repeat;\n    background-size: 240px 24px;\n  }\n\n  /* Support for non-latin languages (can be removed if not required)\n     ========================================================================== */\n  /**\n   * Bidirectional (bidi) text support.\n   * See: https://www.w3.org/International/articles/inline-bidi-markup/#cssshim\n   */\n  [dir=ltr],\n[dir=rtl] {\n    unicode-bidi: -webkit-isolate;\n    unicode-bidi: isolate;\n  }\n\n  bdo[dir=ltr],\nbdo[dir=rtl] {\n    unicode-bidi: isolate-override;\n  }\n\n  /**\n   * Preferred font for Japanese language.\n   */\n  :lang(ja) {\n    font-family: \"Hiragino Sans\", \"Hiragino Kaku Gothic Pro\", \"Meiryo UI\", sans-serif;\n    font-weight: 300;\n  }\n\n  /**\n   * Preferred font for Korean language.\n   */\n  :lang(ko) {\n    font-family: GulimChe, Gulim, sans-serif;\n  }\n\n  /**\n   * Preferred font for simplified Chinese (PRC) language.\n   */\n  :lang(zh-cn) {\n    font-family: \"PingFang SC\", SimHei, sans-serif;\n  }\n\n  /**\n   * Preferred font for traditional Chinese (Taiwan, Hong Kong) language.\n   */\n  :lang(zh-tw) {\n    font-family: \"PingFang TC\", PMingLiU, sans-serif;\n  }\n\n  /**\n   * Suppress `text-decoration` in some RTL languages for better legibility.\n   */\n  [lang|=ar] a:hover,\n[lang|=fa] a:hover,\n[lang|=ur] a:hover {\n    text-decoration: none;\n  }\n\n  /**\n   * Computer code should be LTR.\n   */\n  [dir=rtl] code {\n    direction: ltr;\n  }\n\n  /**\n   * Swap image alignment right/left positions in RTL languages.\n   */\n  [dir=rtl] img.align-left {\n    margin: 1em 0 1em 1em;\n    float: right;\n  }\n  [dir=rtl] img.align-right {\n    margin: 1em 1em 1em 0;\n    float: left;\n  }\n\n  /**\n   * Swap table caption alignment in RTL languages.\n   */\n  [dir=rtl] caption {\n    text-align: right;\n  }\n\n  /**\n   * Swap table cell text alignments in RTL languages.\n   */\n  [dir=rtl] th,\n[dir=rtl] td {\n    text-align: right;\n  }\n\n  /**\n   * Swap menu/list padding positions in RTL languages.\n   */\n  [dir=rtl] menu,\n[dir=rtl] ol,\n[dir=rtl] ul {\n    padding: 0 2em 0 0;\n  }\n\n  [dir=rtl] .site-navigation ul,\n[dir=rtl] .article-list {\n    padding: 0;\n  }\n\n  /**\n   * Swap definition description margin positions in RTL languages.\n   */\n  [dir=rtl] dd {\n    margin: 0 2em 0 0;\n  }\n\n  /**\n   * Swap checkbox/radio margin positions in RTL languages.\n   */\n  [dir=rtl] input[type=checkbox] + label,\n[dir=rtl] input[type=radio] + label {\n    margin: 0 0 0 0.5em;\n  }\n  [dir=rtl] input[type=checkbox] + label:last-of-type,\n[dir=rtl] input[type=radio] + label:last-of-type {\n    margin: 0;\n  }\n\n  /**\n   * Swap `select` icon position in RTL languages.\n   */\n  [dir=rtl] select {\n    padding-right: 0.1875em;\n    padding-left: 1.5em;\n    background-position: 0.5em center;\n  }\n\n  /**\n   * Swap ‘skip links’ position in RTL languages.\n   */\n  [dir=rtl] .skip-link {\n    right: 1px;\n    left: auto;\n  }\n\n  /**\n   * Swap anchor float position on comments.\n   */\n  [dir=rtl] .comments h4 .comment-anchor {\n    float: left;\n  }\n\n  /* Embedded content\n     ========================================================================== */\n  /**\n   * Add the correct display in IE 11.\n   */\n  video {\n    display: inline-block;\n  }\n\n  /**\n   * Make embedded elements responsive.\n   */\n  img,\nvideo {\n    max-width: 100%;\n    height: auto;\n  }\n\n  /**\n   * Images.\n   *\n   * 1. Remove the gap between images and the bottom of their containers.\n   *\n   * Image alignment (compatible with Textile markup syntax).\n   *\n   * Example HTML:\n   *\n   * <img class=\"align-left\">\n   * <img class=\"align-right\">\n   * <img class=\"align-center\">\n   */\n  img {\n    /* 1 */\n    vertical-align: middle;\n  }\n  img.align-left {\n    margin: 1em 1em 1em 0;\n    float: left;\n  }\n  img.align-right {\n    margin: 1em 0 1em 1em;\n    float: right;\n  }\n  img.align-center {\n    display: block;\n    margin: 1em auto;\n  }\n\n  /**\n   * Consistent margins on `figure`.\n   */\n  figure {\n    margin: 1em 0;\n  }\n\n  /* Tables\n     ========================================================================== */\n  /**\n   * Consistent tables.\n   */\n  table {\n    width: 100%;\n    margin-bottom: 1em;\n    border-spacing: 0;\n    border-collapse: collapse;\n  }\n\n  /**\n   * Styling of table captions.\n   */\n  caption {\n    margin-bottom: 0.5em;\n    font-style: italic;\n    text-align: left;\n  }\n\n  /**\n   * Make table cells align top and left by default.\n   */\n  th,\ntd {\n    padding: 0.5em;\n    border: 1px solid #d4d4d4;\n    vertical-align: top;\n    text-align: left;\n  }\n\n  /**\n   * Emphasize table header.\n   */\n  thead tr {\n    background-color: #eeeeee;\n  }\n  thead th,\nthead td {\n    border: 1px solid #cccccc;\n  }\n\n  /**\n   * \'Zebra striping\' of `tbody` rows.\n   */\n  tbody tr:nth-child(even) {\n    background-color: #f7f7f7;\n  }\n\n  /**\n   * Adjust padding of table footer due to smaller font size.\n   */\n  tfoot th,\ntfoot td {\n    padding: 0.6666667em;\n  }\n\n  /**\n   * Multi-row span vertical cell alignments.\n   */\n  [rowspan] {\n    vertical-align: middle;\n  }\n\n  /* Lists\n     ========================================================================== */\n  /**\n   * Address paddings set differently.\n   */\n  menu,\nol,\nul {\n    padding: 0 0 0 2em;\n  }\n\n  /**\n   * Remove margins from nested lists.\n   */\n  li > ul,\nli > ol {\n    margin: 0;\n  }\n\n  /**\n   * CSS Lists and Counters Module Level 3 list marker styling.\n   */\n  li::marker {\n    color: color-text-heading;\n  }\n\n  /**\n   * Address margins set differently.\n   */\n  dd {\n    margin: 0 0 0 2em;\n  }\n\n  /**\n   * Additional styling for article lists.\n   *\n   * Example HTML:\n   *\n   * <ul class=\"article-list\">\n   */\n  .article-list {\n    margin: 0 0 2em;\n    padding: 0;\n    border-top: 1px solid #cccccc;\n    list-style: none;\n  }\n  .article-list li {\n    margin-bottom: 0;\n    border-bottom: 1px solid #cccccc;\n  }\n\n  /* Forms\n     ========================================================================== */\n  /**\n   * 1. Address width being affected by wide descendants in Chrome, Firefox.\n   * 2. Define consistent fieldset border, margin, and padding.\n   */\n  fieldset {\n    /* 1 */\n    min-width: 0;\n    /* 2 */\n    margin: 1em 0;\n    padding: 1px 1em;\n    border: 1px solid #cccccc;\n  }\n\n  /**\n   * Normalize styling of `legend`.\n   *\n   * 1. Correct wrapping not present in IE 11 and Edge 12/13.\n   * 2. Remove padding so people aren\'t caught out if they zero out fieldsets.\n   * 3. Correct `color` not being inherited from fieldset in IE 11.\n   */\n  legend {\n    /* 1 */\n    display: table;\n    /* 1 */\n    box-sizing: border-box;\n    /* 1 */\n    max-width: 100%;\n    /* 2 */\n    padding: 0;\n    /* 3 */\n    color: inherit;\n    /* 1 */\n    white-space: normal;\n  }\n\n  /**\n   * 1. Show the overflow in Edge.\n   * 2. Remove tap delay in modern browsers.\n   */\n  button,\ninput {\n    /* 1 */\n    overflow: visible;\n    /* 2 */\n    touch-action: manipulation;\n  }\n\n  /**\n   * 1. Prevent elements from spilling out of their parent.\n   * 2. Address margins set differently in Firefox 4+, Safari, and Chrome.\n   * 3. Correct font properties not being inherited.\n   */\n  button,\ninput,\noptgroup,\nselect,\ntextarea {\n    box-sizing: border-box;\n    /* 1 */\n    max-width: 100%;\n    /* 2 */\n    margin: 0;\n    color: #000000;\n    font-family: system-ui, -apple-system, \"Segoe UI\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\";\n    /* 3 */\n    font-size: 1rem;\n    line-height: 1.375;\n    vertical-align: baseline;\n  }\n\n  /**\n   * Styling of form input fields.\n   *\n   * 1. Remove browser-specific default styling.\n   */\n  [type=color],\n[type=date],\n[type=datetime],\n[type=datetime-local],\n[type=email],\n[type=month],\n[type=number],\n[type=password],\n[type=search],\n[type=tel],\n[type=text],\n[type=time],\n[type=url],\n[type=week],\nselect,\ntextarea {\n    height: 2em;\n    padding: 0.25em 0.1875em;\n    border: 1px solid #cccccc;\n    border-radius: 0;\n    background: #ffffff;\n    /* 1 */\n    -webkit-appearance: none;\n       -moz-appearance: none;\n            appearance: none;\n  }\n  [type=color]:focus,\n[type=date]:focus,\n[type=datetime]:focus,\n[type=datetime-local]:focus,\n[type=email]:focus,\n[type=month]:focus,\n[type=number]:focus,\n[type=password]:focus,\n[type=search]:focus,\n[type=tel]:focus,\n[type=text]:focus,\n[type=time]:focus,\n[type=url]:focus,\n[type=week]:focus,\nselect:focus,\ntextarea:focus {\n    border-color: #0066ff;\n    outline: 1px solid transparent;\n  }\n\n  /**\n   * 1. Remove any excess padding.\n   * 2. Correct margins for inline checkbox/radio labels.\n   */\n  [type=checkbox],\n[type=radio] {\n    /* 1 */\n    padding: 0;\n  }\n  [type=checkbox] + label,\n[type=radio] + label {\n    /* 2 */\n    margin: 0 0.5em 0 0;\n  }\n  [type=checkbox] + label:last-of-type,\n[type=radio] + label:last-of-type {\n    /* 2 */\n    margin: 0;\n  }\n\n  /**\n   * Correct the cursor style of increment and decrement buttons in Safari.\n   */\n  [type=number]::-webkit-inner-spin-button,\n[type=number]::-webkit-outer-spin-button {\n    height: auto;\n  }\n\n  /**\n   * Remove the inner padding in Chrome and Safari on macOS.\n   */\n  [type=search]::-webkit-search-decoration {\n    /* autoprefixer: off */\n    appearance: none;\n  }\n\n  /**\n   * Use indicator icon to signify the drop-down ability of `select`.\n   */\n  select {\n    padding-right: 1.5em;\n    background: #ffffff url(\"data:image/svg+xml,%3Csvg xmlns=%27http://www.w3.org/2000/svg%27 width=%2717%27 height=%275%27 viewBox=%270 0 17 5%27%3E%3Cpolygon fill=%27%23333%27 points=%270,0 5,5 10,0%27/%3E%3C/svg%3E\") right center no-repeat;\n    background-size: 1.0625em 0.3125em;\n    text-transform: none;\n  }\n\n  /**\n   * Remove browser-specific `select` UI in IE 11.\n   */\n  select::-ms-expand {\n    opacity: 0;\n  }\n\n  /**\n   * Override height and background set in a previous rule and allow auto height.\n   */\n  select[size],\nselect[multiple] {\n    height: auto;\n    padding-right: 0.5em;\n    background-image: none;\n  }\n\n  /**\n   * Override height set in rule above and restrict to one line field.\n   */\n  select[size=\"0\"],\nselect[size=\"1\"] {\n    height: 2em;\n  }\n\n  /**\n   * Normalize styling of `optgroup`.\n   */\n  optgroup {\n    font-style: normal;\n    font-weight: bold;\n  }\n\n  /**\n   * 1. Remove default vertical scrollbar in IE 11.\n   * 2. Remove unwanted space below `textarea` in Safari, Chrome, Opera.\n   * 3. Restrict to vertical resizing to prevent layout breakage.\n   */\n  textarea {\n    width: 100%;\n    height: auto;\n    min-height: 3em;\n    /* 1 */\n    overflow: auto;\n    /* 2 */\n    vertical-align: top;\n    /* 3 */\n    resize: vertical;\n  }\n\n  /**\n   * Make sure disabled elements really are disabled and styled appropriately.\n   *\n   * 1. Override default iOS opacity setting.\n   * 2. Re-set default cursor for disabled elements.\n   */\n  [disabled],\n[disabled] option,\n[disabled] optgroup,\nspan.disabled {\n    border-color: #d4d4d4 !important;\n    /* 1 */\n    opacity: 1;\n    background: #eeeeee !important;\n    box-shadow: none !important;\n    color: #aaaaaa !important;\n    text-shadow: none !important;\n    /* 2 */\n    cursor: default !important;\n  }\n\n  /**\n   * Width display options for `input` fields. Height display options\n   * for textareas.\n   *\n   * Example HTML:\n   *\n   * <input class=\"small\">\n   * <input class=\"large\">\n   */\n  .small input {\n    width: 25%;\n    min-width: 151px;\n  }\n  .small textarea {\n    height: 5.5em;\n  }\n\n  .large input {\n    width: 50%;\n    min-width: 302px;\n  }\n  .large textarea {\n    height: 9.75em;\n  }\n\n  /**\n   * Styling for form field validation.\n   */\n  input:focus:invalid,\nselect:focus:invalid,\ntextarea:focus:invalid {\n    border-color: #9d261d;\n    box-shadow: none;\n  }\n\n  /**\n   * Styling for Firefox-specfic form field validation.\n   */\n  input:-moz-ui-invalid,\nselect:-moz-ui-invalid,\ntextarea:-moz-ui-invalid {\n    border-color: #9d261d;\n    box-shadow: none;\n  }\n\n  /**\n   * Normalize form placeholder style across browsers.\n   *\n   * 1. Fix placeholder font properties inheritance.\n   */\n  :-ms-input-placeholder {\n    opacity: 1;\n    color: #999999;\n    /* 1 */\n    font: inherit;\n  }\n  ::placeholder {\n    opacity: 1;\n    color: #999999;\n    /* 1 */\n    font: inherit;\n  }\n\n  /**\n   * Styling for required field indicators.\n   *\n   * Example HTML:\n   *\n   * <b class=\"required\" title=\"Required\">*</b>\n   */\n  .required {\n    border: 0;\n    color: #9d261d;\n  }\n\n  /* Buttons\n     ========================================================================== */\n  /**\n   * 1. Address `overflow` set to `hidden` in IE 11.\n   * 2. Remove the inheritance of text transform in Edge, Firefox, and IE 11.\n   */\n  button {\n    /* 1 */\n    overflow: visible;\n    /* 2 */\n    text-transform: none;\n  }\n\n  /**\n   * Remove the inner border and padding in Firefox.\n   */\n  button::-moz-focus-inner,\n[type=button]::-moz-focus-inner,\n[type=reset]::-moz-focus-inner,\n[type=submit]::-moz-focus-inner {\n    padding: 0;\n    border-style: none;\n  }\n\n  /**\n   * 1. Remove browser-specific default styling.\n   * 2. Improve usability and consistency of cursor style between image-type\n   *    `input` and others.\n   */\n  button,\n[type=button],\n[type=reset],\n[type=submit] {\n    background-color: #dfdfdf;\n    background-image: linear-gradient(#eeeeee, #dfdfdf);\n    display: inline-block;\n    position: relative;\n    width: auto;\n    height: 2em;\n    padding: 0.25em 1em;\n    border: 1px solid #dfdfdf;\n    border-radius: 1em;\n    background-clip: padding-box;\n    box-shadow: 0 2px 0 #acacac;\n    color: #333333;\n    font-weight: normal;\n    text-align: center;\n    /* 1 */\n    -webkit-appearance: none;\n       -moz-appearance: none;\n            appearance: none;\n    /* 2 */\n    cursor: pointer;\n  }\n  button:hover,\n[type=button]:hover,\n[type=reset]:hover,\n[type=submit]:hover {\n    background-color: #e9e9e9;\n    background-image: linear-gradient(#f8f8f8, #e9e9e9);\n    border-color: #bebebe;\n    color: #333333;\n    text-decoration: none;\n  }\n  button:active,\n[type=button]:active,\n[type=reset]:active,\n[type=submit]:active {\n    top: 2px;\n    border-color: #bebebe;\n    box-shadow: none;\n    color: #1a1a1a;\n    text-decoration: none;\n  }\n  button:focus,\n[type=button]:focus,\n[type=reset]:focus,\n[type=submit]:focus {\n    border-color: #0066ff;\n    outline: 1px solid transparent;\n  }\n\n  /**\n   * Disbaled button additional styling.\n   */\n  button[disabled],\n[type=button][disabled],\n[type=reset][disabled],\n[type=submit][disabled] {\n    top: 2px !important;\n  }\n\n  /* Comments\n     ========================================================================== */\n  /**\n   * Styling for user comments.\n   *\n   * Example HTML:\n   *\n   * <article class=\"comments\">\n   */\n  .comments {\n    margin-bottom: 1em;\n    padding: 1px 1em;\n    border-radius: 0.5em;\n    background: #f7f7f7;\n    word-wrap: break-word;\n  }\n  .comments h4 .is-author {\n    font-weight: normal;\n  }\n  .comments h4 .comment-anchor {\n    float: right;\n    font-weight: normal;\n  }\n\n  /**\n   * Additional styling for article author\'s comments.\n   *\n   * Example HTML:\n   *\n   * <article class=\"comments comments-author\">\n   */\n  .comments-author {\n    background: #efefef;\n  }\n\n  /**\n   * Styling for user comments preview.\n   */\n  #cpreview {\n    margin-bottom: 2px;\n    padding: 1em;\n    border-radius: 0.5em;\n    background-color: #fff9e1;\n  }\n\n  /**\n   * Highlight text colour for comment errors.\n   */\n  .error_message li {\n    color: #9d261d;\n  }\n\n  /**\n   * Highlighting for comment form errors.\n   */\n  .comments_error {\n    border-color: #9d261d;\n  }\n\n  /* Popup comments (can be removed if you don\'t use popups)\n     ========================================================================== */\n  /**\n   * Restrict maximum width of popup container.\n   */\n  #popup-page .container {\n    max-width: 52em;\n  }\n}\n/* ==========================================================================\n   Additional layout for screen media 576px and up\n   ========================================================================== */\n@media only screen and (min-width: 38em) {\n  /**\n   * Desktop version of the navigation menu. Overrides mobile first version.\n   *\n   * Example HTML:\n   *\n   * <nav class=\"site-navigation\">\n   *     <div>\n   *         <ul>\n   *             <li class=\"active\"><a></li>\n   *             <li><a></li>\n   *             <li><a></li>\n   *         </ul>\n   *         <div class=\"search\">\n   *             <form>\n   *                 <input type=\"search\">\n   *             </form>\n   *        </div>\n   *    </div>\n   * </nav>\n   */\n  .site-navigation {\n    border-top: 1px solid #cccccc;\n    border-bottom: 1px solid #cccccc;\n  }\n  .site-navigation > div {\n    display: flex;\n    flex-wrap: wrap;\n    justify-content: space-between;\n    width: 88%;\n  }\n  .site-navigation ul {\n    display: flex;\n    flex-wrap: wrap;\n    border: 0;\n  }\n  .site-navigation li {\n    border-width: 0 1px;\n  }\n  .site-navigation a {\n    padding: 0.5em 1em;\n  }\n\n  .search {\n    margin-top: 0.2em;\n    padding: 0;\n    background: transparent;\n  }\n  .search input[type=search] {\n    width: 2.125em;\n    padding-right: 0;\n    transition: width 0.2s ease-in-out, border-color 0.2s ease-in-out;\n    background-color: #eeeeee;\n    cursor: pointer;\n  }\n  .search input[type=search]:hover {\n    background-color: #f8f8f8;\n  }\n  .search input[type=search]:focus {\n    width: 16em;\n    padding-right: 0.1875em;\n    background-color: white;\n    cursor: auto;\n  }\n}\n/* ==========================================================================\n   Additional layout for screen media 864px and up\n   ========================================================================== */\n@media only screen and (min-width: 46em) {\n  /**\n   * Enlarge baseline text size.\n   */\n  html {\n    font-size: 1.125rem;\n  }\n}\n/* ==========================================================================\n   Additional accessibility for screen media\n   ========================================================================== */\n@media screen and (prefers-reduced-motion: reduce), (update: slow) {\n  .search input[type=search] {\n    transition-duration: 0;\n  }\n}\n/* ==========================================================================\n   Styling and layout for print media\n   ========================================================================== */\n@media print {\n  /**\n   * Remove unnecessary global styling from printed media.\n   */\n  *,\n*::before,\n*::after {\n    background: transparent !important;\n    box-shadow: none !important;\n    color: #000000 !important;\n    text-shadow: none !important;\n  }\n\n  /**\n   * Use a print-friendly font size.\n   */\n  html {\n    font-size: 8pt;\n    line-height: 1.5;\n  }\n\n  /**\n   * Use a print-friendly font family.\n   */\n  body {\n    margin: 0.5cm;\n    padding: 2em 5em;\n    font-family: \"Helvetica Neue\", sans-serif;\n  }\n\n  /**\n   * Make sure links are not underlined.\n   */\n  a {\n    text-decoration: none;\n  }\n\n  /**\n   * Visually separate header from body.\n   */\n  .site-header {\n    border-bottom: 1pt solid #000000;\n  }\n\n  /**\n   * Visually separate footer from body.\n   */\n  .site-footer {\n    margin-top: 12pt;\n    border-top: 1pt solid #000000;\n  }\n\n  /**\n   * Hide unnecessary content from print.\n   */\n  nav,\naudio,\nvideo,\nform,\n#comments-form,\n.comments h4 a:last-child,\n.complementary-content,\n.paginator,\n.skip-link {\n    display: none;\n  }\n\n  /**\n   * Show long-form for abbreviations in print.\n   */\n  abbr[title]::after {\n    content: \" (\" attr(title) \")\";\n  }\n\n  /**\n   * Harmonize size, style and vertical margin of headings.\n   */\n  h1 {\n    margin: 16pt 0;\n    font-size: 32pt;\n    font-weight: normal;\n    line-height: 36pt;\n  }\n\n  h2 {\n    margin: 14pt 0;\n    font-size: 24pt;\n    line-height: 28pt;\n    orphans: 2;\n    widows: 2;\n    page-break-after: avoid;\n  }\n\n  h3 {\n    margin: 12pt 0;\n    font-size: 18pt;\n    line-height: 22pt;\n    orphans: 2;\n    widows: 2;\n    page-break-after: avoid;\n  }\n\n  h4 {\n    margin: 11pt 0;\n    font-size: 14pt;\n    line-height: 18pt;\n    orphans: 2;\n    widows: 2;\n    page-break-after: avoid;\n  }\n\n  h5 {\n    margin: 10pt 0;\n    font-size: 12pt;\n    line-height: 16pt;\n    orphans: 2;\n    widows: 2;\n    page-break-after: avoid;\n  }\n\n  h6 {\n    margin: 9pt 0;\n    font-size: 10pt;\n    line-height: 14pt;\n    orphans: 2;\n    widows: 2;\n    page-break-after: avoid;\n  }\n\n  /**\n   * Prevent widows (single final paragraph line on next page) and orphans (single\n   * first paragraph line on previous page).\n   */\n  p {\n    orphans: 2;\n    widows: 2;\n  }\n\n  /**\n   * Harmonize size and style of small text.\n   */\n  footer,\nfigcaption,\ntfoot,\nsmall,\n.footnote {\n    font-size: 6pt;\n  }\n\n  /**\n   * Simple blockquote styling.\n   *\n   * 1. Avoid blockquotes breaking across multiple pages.\n   */\n  blockquote {\n    padding: 0 0 0 8pt;\n    border-left: 3pt solid #000000;\n    font-size: 16pt;\n    /* 1 */\n    page-break-inside: avoid;\n  }\n\n  [dir=rtl] blockquote {\n    padding: 0 8pt 0 0;\n    border-right: 3pt solid #000000;\n    border-left: 0;\n  }\n\n  /**\n   * Simple preformatted text styling.\n   *\n   * 1. Ensure pre blocks are wrapped when printed.\n   */\n  pre {\n    margin-bottom: 8pt;\n    padding: 8pt;\n    border: 1pt solid #000000;\n    /* 1 */\n    white-space: pre-wrap !important;\n  }\n\n  /**\n   * Use a print-friendly monospaced font and size.\n   */\n  pre,\ncode,\nkbd,\nsamp,\nvar {\n    font-family: \"Courier New\", Courier, monospace;\n  }\n\n  /**\n   * Images.\n   *\n   * 1. Avoid images breaking across multiple pages.\n   *\n   * Image alignment (compatible with Textile markup syntax).\n   *\n   * Example HTML:\n   *\n   * <img class=\"align-left\">\n   * <img class=\"align-right\">\n   * <img class=\"align-center\">\n   */\n  img {\n    /* 1 */\n    page-break-inside: avoid;\n  }\n  img.align-left {\n    margin: 1em 1em 1em 0;\n    float: left;\n  }\n  img.align-right {\n    margin: 1em 0 1em 1em;\n    float: right;\n  }\n  img.align-center {\n    display: block;\n    margin: 1em auto;\n  }\n\n  /**\n   * Swap image alignment right/left positions in RTL languages.\n   */\n  [dir=rtl] img.align-left {\n    margin: 1em 0 1em 1em;\n    float: right;\n  }\n  [dir=rtl] img.align-right {\n    margin: 1em 1em 1em 0;\n    float: left;\n  }\n\n  /**\n   * Ensure margin below `figure`.\n   */\n  figure {\n    margin-bottom: 8pt;\n  }\n\n  /**\n   * Ensure margin above `figcaption`.\n   */\n  figcaption {\n    margin-top: 4pt;\n  }\n\n  /**\n   * Simple bullet styling for `ul` unordered lists.\n   */\n  ul {\n    padding: 0 0 8pt 1.8em;\n    list-style: square;\n  }\n\n  [dir=rtl] ul {\n    padding: 0 1.8em 8pt 0;\n  }\n\n  /**\n   * Simple numerical styling for `ol` ordered lists.\n   */\n  ol {\n    padding: 0 0 8pt 1.8em;\n    list-style: decimal;\n  }\n\n  [dir=rtl] ol {\n    padding: 0 1.8em 8pt 0;\n  }\n\n  /**\n   * Normalize margins on `dl` definition lists.\n   */\n  dl {\n    padding: 0 0 8pt 1.8em;\n  }\n\n  [dir=rtl] dl {\n    padding: 0 1.8em 8pt 0;\n  }\n\n  /**\n   * 1. Make `table` span entire page width.\n   * 2. Ensure margin below `table`.\n   */\n  table {\n    /* 1 */\n    width: 100%;\n    /* 2 */\n    margin-bottom: 8pt;\n  }\n\n  /**\n   * Harmonize styling for `caption`.\n   */\n  caption {\n    margin-bottom: 4pt;\n    font-weight: bold;\n  }\n\n  /**\n   * Avoid table rows breaking across multiple pages.\n   */\n  tr {\n    page-break-inside: avoid;\n  }\n\n  /**\n   * Simple styling for table cells.\n   */\n  th,\ntd {\n    padding: 4pt 8pt;\n    border-bottom: 1pt solid #000000;\n  }\n\n  /**\n   * Display table head across multi-page tables.\n   */\n  thead {\n    display: table-header-group;\n  }\n  thead th {\n    border-top: 1pt solid #000000;\n  }\n\n  /**\n   * Avoid user comments breaking across multiple pages.\n   */\n  .comments {\n    page-break-inside: avoid;\n  }\n}', 'four-point-eight', NULL),
('cyber', '/*designing the body of my pages*/\r\nbody {background-color: #f8f9fa; \r\n    font-family: Arial, sans-serif; \r\n    margin: 0; \r\n    padding: 20px;\r\n}\r\n/*design the navigation */\r\n.nav{background-color: #2c3e50; \r\n    padding: 15px; \r\n    margin-bottom: 20px\r\n\r\n}\r\n/*design the main list in the navigation  */\r\n.main_ul{\r\n    list-style: none; \r\n    padding: 0; \r\n    margin: 0; \r\n    display: flex; \r\n    gap: 20px;\r\n}\r\n/*design the links in the navigation */\r\n.link_nav{\r\n    color: white; \r\n    text-decoration: none;\r\n}\r\n/*design the headr 1 of all pages */\r\n.main_h{\r\n    color: #2c3e50; \r\n    text-align: center;\r\n}\r\n/*design the sections of page index.html */\r\n.secI{\r\n    background-color: white; \r\n    padding: 30px; \r\n    border-radius: 10px; \r\n    box-shadow: 0 2px 5px rgba(0,0,0,0.1);\r\n}\r\n/*design the footer of all my pages */\r\nfooter{\r\n    background-color: #2c3e50; \r\n    color: white; \r\n    padding: 10px; \r\n    text-align: center; \r\n    margin-top: 20px;\r\n}\r\n/*design the sections of rest pages */\r\n.secT{\r\n    background-color: white; \r\n    padding: 20px; \r\n    margin-bottom: 20px; \r\n    border-radius: 5px; \r\n    box-shadow: 0 2px 5px rgba(0,0,0,0.1);\r\n}\r\n', 'four-point-eight', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `txp_discuss`
--

CREATE TABLE `txp_discuss` (
  `discussid` int(6) UNSIGNED ZEROFILL NOT NULL,
  `parentid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(254) NOT NULL DEFAULT '',
  `web` varchar(255) NOT NULL DEFAULT '',
  `posted` datetime NOT NULL,
  `message` text NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `txp_discuss_nonce`
--

CREATE TABLE `txp_discuss_nonce` (
  `issue_time` datetime NOT NULL,
  `nonce` varchar(255) NOT NULL DEFAULT '',
  `used` tinyint(4) NOT NULL DEFAULT 0,
  `secret` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `txp_file`
--

CREATE TABLE `txp_file` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `category` varchar(64) NOT NULL DEFAULT '',
  `permissions` varchar(32) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `downloads` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` smallint(6) NOT NULL DEFAULT 4,
  `modified` datetime NOT NULL,
  `created` datetime NOT NULL,
  `size` bigint(20) DEFAULT NULL,
  `author` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `txp_file`
--

INSERT INTO `txp_file` (`id`, `filename`, `title`, `category`, `permissions`, `description`, `downloads`, `status`, `modified`, `created`, `size`, `author`) VALUES
(3, 'Documnetation.pdf', '', '', '', '', 1, 4, '2025-05-24 21:38:13', '2025-05-24 21:38:13', 120973, 'groupA');

-- --------------------------------------------------------

--
-- Table structure for table `txp_form`
--

CREATE TABLE `txp_form` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(28) NOT NULL DEFAULT '',
  `Form` text NOT NULL,
  `skin` varchar(63) NOT NULL DEFAULT 'default',
  `lastmod` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `txp_form`
--

INSERT INTO `txp_form` (`name`, `type`, `Form`, `skin`, `lastmod`) VALUES
('article_listing', 'article', '<li class=\"article\" itemprop=\"blogPost\" itemscope itemtype=\"https://schema.org/BlogPosting\">\n    <h4 itemprop=\"headline\">\n        <a href=\"<txp:permlink />\" itemprop=\"url mainEntityOfPage\" title=\"<txp:text item=\"read_more\" />\">\n            <txp:title />\n        </a>\n    </h4>\n\n    <!-- if the article has an excerpt, display that -->\n    <txp:if_excerpt>\n        <div itemprop=\"description\">\n            <txp:excerpt />\n        </div>\n    </txp:if_excerpt>\n\n    <p class=\"footnote\">\n        <txp:text item=\"posted\" />\n        <time datetime=\"<txp:posted format=\"iso8601\" />\" itemprop=\"datePublished\">\n            <txp:posted />\n        </time>\n        <meta itemprop=\"dateModified\" content=\"<txp:modified format=\"iso8601\" />\" />\n        &#183;\n        <txp:text item=\"author\" />\n        <span itemprop=\"author\" itemscope itemtype=\"https://schema.org/Person\">\n            <span itemprop=\"name\">\n                <txp:author link this_section />\n            </span>\n        </span>\n    </p>\n</li>', 'four-point-eight', NULL),
('default', 'article', '<article class=\"article\" itemprop=\"blogPost\" itemscope itemtype=\"https://schema.org/BlogPosting\">\n    <meta itemprop=\"mainEntityOfPage\" content=\"<txp:permlink />\">\n\n    <txp:if_individual_article>\n        <h1 itemprop=\"headline\"><txp:title /></h1>\n    <txp:else />\n        <h1 itemprop=\"headline\"><a href=\"<txp:permlink />\" itemprop=\"url\" title=\"<txp:text item=\"read_more\" />\"><txp:title /></a>\n        </h1>\n    </txp:if_individual_article>\n\n    <p>\n        <strong>\n            <txp:text item=\"posted\" />\n        </strong>\n        <time datetime=\"<txp:posted format=\"iso8601\" />\" itemprop=\"datePublished\">\n            <txp:posted />\n        </time>\n        <meta itemprop=\"dateModified\" content=\"<txp:modified format=\"iso8601\" />\" />\n\n        <!-- only display comments count if comments posted, or if new comments allowed -->\n        <txp:if_comments>\n            <br>\n            <strong>\n                <txp:text item=\"comments\" />\n            </strong>\n            <a href=\"<txp:permlink />#comments-head\" title=\"<txp:text item=\"go_comments\" />\" itemprop=\"discussionUrl\">\n                <span itemprop=\"interactionStatistic\" itemscope itemtype=\"https://schema.org/InteractionCounter\">\n                    <meta itemprop=\"interactionType\" content=\"https://schema.org/CommentAction\" />\n                    <span itemprop=\"userInteractionCount\"><txp:comments_count /></span>\n                </span>\n            </a>\n        <txp:else />\n            <txp:if_comments_allowed>\n                <br>\n                <strong>\n                    <txp:text item=\"comments\" />\n                </strong>\n                <a href=\"<txp:permlink />#comments-head\" title=\"<txp:text item=\"go_comments\" />\" itemprop=\"discussionUrl\">\n                    <span itemprop=\"interactionStatistic\" itemscope itemtype=\"https://schema.org/InteractionCounter\">\n                        <meta itemprop=\"interactionType\" content=\"https://schema.org/CommentAction\" />\n                        <span itemprop=\"userInteractionCount\">0</span>\n                    </span>\n                </a>\n            </txp:if_comments_allowed>\n        </txp:if_comments>\n    </p>\n\n    <txp:if_article_image>\n        <txp:images form=\"images\" />\n    </txp:if_article_image>\n\n    <div itemprop=\"articleBody\">\n        <txp:body />\n    </div>\n\n    <p>\n        <strong>\n            <txp:text item=\"author\" />\n        </strong>\n        <span itemprop=\"author\" itemscope itemtype=\"https://schema.org/Person\">\n            <span itemprop=\"name\">\n                <txp:author link this_section />\n            </span>\n        </span>\n\n        <!-- only display categories if they are actually set for an article, otherwise omit -->\n        <txp:if_article_category>\n            <br>\n            <strong>\n                <txp:text item=\"categories\" />\n            </strong>\n            <span itemprop=\"keywords\">\n                <txp:category_list categories=\'<txp:category1 />,<txp:category2 />\' children=\"0\" break=\", \" trim>\n                    <txp:category title link />\n                </txp:category_list>\n            </span>\n        </txp:if_article_category>\n    </p>\n\n    <!-- if this is an individual article then add the comments section via form: comments_display.article.txp -->\n    <txp:if_individual_article>\n        <txp:output_form form=\"comments_display\" />\n    </txp:if_individual_article>\n\n</article>', 'four-point-eight', NULL),
('search_results', 'article', '<li class=\"article\" itemscope itemtype=\"https://schema.org/Article\">\n    <h4 itemprop=\"headline\">\n        <a href=\"<txp:permlink />\" itemprop=\"url mainEntityOfPage\" title=\"<txp:text item=\"read_more\" />\">\n            <txp:title />\n        </a>\n    </h4>\n\n    <!-- if the article has an excerpt, display that, otherwise show highlighted keywords in context of article -->\n    <txp:if_excerpt>\n        <div itemprop=\"description\">\n            <txp:excerpt />\n        </div>\n    <txp:else />\n        <p>\n            <txp:search_result_excerpt />\n        </p>\n    </txp:if_excerpt>\n\n    <p class=\"footnote\">\n        <txp:text item=\"posted\" />\n        <time datetime=\"<txp:posted format=\"iso8601\" />\" itemprop=\"datePublished\">\n            <txp:posted />\n        </time>\n        <meta itemprop=\"dateModified\" content=\"<txp:modified format=\"iso8601\" />\" />\n        &#183;\n        <txp:text item=\"author\" />\n        <span itemprop=\"author\" itemscope itemtype=\"https://schema.org/Person\">\n            <span itemprop=\"name\">\n                <txp:author link this_section />\n            </span>\n        </span>\n    </p>\n</li>', 'four-point-eight', NULL),
('comments', 'comment', '<!-- load the comment email into a variable. you will be using this below along with author email variable loaded in form: default.article.txp\n     then check the comment email variable against article author email variable, and if it matches add \'comments-author\' class -->\n<txp:variable name=\"this_comment\" value=\'<txp:comment_email />\' />\n<txp:if_variable name=\"this_comment\" value=\'<txp:author_email />\'>\n    <article class=\"comments comments-author\" itemscope itemtype=\"https://schema.org/Comment\">\n<txp:else />\n    <article class=\"comments\" itemscope itemtype=\"https://schema.org/Comment\">\n</txp:if_variable>\n\n    <h4>\n        <span class=\"comment-author\" itemprop=\"author\" itemscope itemtype=\"https://schema.org/Person\">\n            <span itemprop=\"name\">\n                <txp:comment_name />\n            </span>\n        </span>\n\n        <!-- ...now check the comment email variable against article author email variable, and if it matches add \'(author)\' text -->\n        <txp:if_variable name=\"this_comment\" value=\'<txp:author_email />\'>\n            <span class=\"is-author\">\n                (<txp:text item=\"author\" />)\n            </span>\n        </txp:if_variable>\n\n        <!-- add a permlink so people can link direct to this comment -->\n        <span class=\"comment-anchor\" itemprop=\"url\">\n            <txp:comment_permlink>#</txp:comment_permlink>\n        </span>\n\n    </h4>\n\n    <!-- also add a \'since\' to show comment freshness -->\n    <p class=\"footnote\">\n        <time datetime=\"<txp:comment_time format=\"iso8601\" />\" itemprop=\"dateCreated\">\n            <txp:comment_time />\n            (<txp:comment_time format=\"since\" />)\n        </time>\n    </p>\n\n    <div itemprop=\"text\">\n        <txp:comment_message />\n    </div>\n\n</article>', 'four-point-eight', NULL),
('comments_display', 'comment', '<!-- if there are comments, display them (note: example code below overrides the global preference setting for comments wrapping by stating\n     attributes of wraptag=\"\" and break=\"\", you are instead using ol and li tags below)... -->\n<txp:if_comments>\n\n    <section id=\"comments-head\">\n        <h3>\n            <txp:text item=\"comments\" />\n        </h3>\n        <ol class=\"comments-list\">\n\n            <txp:comments wraptag=\"\" break=\"li\" /> <!-- links by default to form: \'comments.comment.txp\' unless you specify a different form -->\n\n            <!-- if this is a comment preview, display it (but only if there is no error) -->\n            <txp:if_comments_preview>\n                <li>\n                    <p id=\"cpreview\">\n                        <txp:text item=\"press_preview_then_submit\" />\n                    </p>\n\n                    <!-- links by default to form: \'comments.comment.txp\' unless you specify a different form -->\n                    <txp:comments_preview wraptag=\"\" />\n\n                </li>\n            </txp:if_comments_preview>\n\n        </ol>\n\n<!-- else if there are no comments yet and user is currently previewing comment, display it (but only if there is no error) -->\n<txp:else />\n\n    <txp:if_comments_preview>\n        <section id=\"comments-head\">\n            <h3>\n                <txp:text item=\"comments\" />\n            </h3>\n            <ol class=\"comments-list\">\n                <li>\n                    <p id=\"cpreview\">\n                        <txp:text item=\"press_preview_then_submit\" />\n                    </p>\n\n                    <!-- links by default to form: \'comments.comment.txp\' unless you specify a different form -->\n                    <txp:comments_preview wraptag=\"\" />\n\n                </li>\n            </ol>\n\n<!-- else just display that there are simply no comments whatsoever :( ...but only if comments are allowed -->\n    <txp:else />\n\n        <txp:if_comments_allowed>\n            <section id=\"comments-head\">\n                <h3>\n                    <txp:text item=\"comments\" />\n                </h3>\n                <p>\n                    <txp:text item=\"no_comments\" />\n                </p>\n\n        </txp:if_comments_allowed>\n    </txp:if_comments_preview>\n</txp:if_comments>\n\n<!-- next, if new comments are allowed for this article then display comment form -->\n<txp:if_comments_allowed>\n\n    <section id=\"comments-form\">\n\n        <!-- comment invite text is taken for the article\'s comment invitation field on the \'write\' screen -->\n        <h3>\n            <txp:comments_invite showcount=\"0\" textonly showalways />\n        </h3>\n\n        <!-- links by default to form: \'comment_form.comment.txp\' unless you specify a different form -->\n        <txp:comments_form />\n\n    </section>\n\n<!-- else display a comments expired message ...but only if comments had previously been allowed -->\n<txp:else />\n\n    <txp:if_comments>\n        <p>\n            <strong>\n                <txp:text item=\"comments_expired\" />\n            </strong>\n        </p>\n    </txp:if_comments>\n\n</txp:if_comments_allowed>\n\n<!-- if a comments section was rendered above, close the tag -->\n<txp:if_comments>\n    </section>\n<txp:else />\n    <txp:if_comments_allowed>\n        </section>\n    </txp:if_comments_allowed>\n</txp:if_comments>', 'four-point-eight', NULL),
('comment_form', 'comment', '<p>\n    <txp:text item=\"enter_comment_here\" />\n</p>\n\n<!-- if there is an error, then inform user -->\n<txp:if_comments_error>\n    <txp:comments_error class=\"error_message\" wraptag=\"ol\" break=\"li\" />\n</txp:if_comments_error>\n\n<p class=\"large\">\n    <label for=\"name\">\n        <txp:text item=\"comment_name\" />\n        <b class=\"required\" title=\"<txp:text item=\"required\" />\">*</b>\n    </label>\n    <br>\n    <txp:comment_name_input size=\"32\" />\n</p>\n\n<p class=\"large\">\n    <label for=\"email\">\n        <txp:text item=\"comment_email\" />\n        <b class=\"required\" title=\"<txp:text item=\"required\" />\">*</b>\n    </label>\n    <br>\n    <txp:comment_email_input size=\"32\" />\n</p>\n\n<p class=\"large\">\n    <label for=\"web\">\n        <txp:text item=\"comment_web\" />\n    </label>\n    <br>\n    <txp:comment_web_input size=\"32\" />\n</p>\n\n<p class=\"small\">\n    <label for=\"message\">\n        <txp:text item=\"comment_message\" />\n        <b class=\"required\" title=\"<txp:text item=\"required\" />\">*</b>\n    </label>\n    <br>\n    <txp:comment_message_input cols=\"64\" rows=\"4\" />\n</p>\n\n<!-- preview and submit buttons (note: submit button will have a class of \'disabled\'\n     applied until you have previewed the message at least once) -->\n<p>\n    <txp:comment_preview />\n    <txp:comment_submit />\n</p>', 'four-point-eight', NULL),
('popup_comments', 'comment', '<!DOCTYPE html>\n<html lang=\"<txp:lang />\" dir=\"<txp:text item=\"lang_dir\" />\">\n\n<head>\n    <meta charset=\"utf-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, viewport-fit=cover\">\n    <title><txp:page_title /></title>\n\n    <!-- CSS -->\n    <txp:css format=\"link\" media=\"\" />\n    <!-- ...or you can use (faster) external CSS files e.g. <link rel=\"stylesheet\" href=\"<txp:page_url type=\"theme_path\" />/styles/default.css\"> -->\n\n    <meta name=\"generator\" content=\"Textpattern CMS\">\n    <meta name=\"robots\" content=\"noindex, follow\">\n</head>\n\n<body class=\"popup-page\">\n    <div class=\"wrapper\">\n        <div class=\"container\">\n\n            <!-- this form is only used if you set \'Comments mode\' to \'popup\' format in preferences -->\n            <txp:popup_comments />\n\n        </div> <!-- /.container -->\n    </div> <!-- /.wrapper -->\n</body>\n</html>', 'four-point-eight', NULL),
('files', 'file', '<div itemscope itemtype=\"https://schema.org/DataDownload\">\n\n    <!-- ...if exists, use the file title, otherwise use file name -->\n    <a href=\"<txp:file_download_link />\" itemprop=\"url contentUrl\">\n        <strong itemprop=\"name\">\n            <txp:evaluate>\n                <txp:file_download_name title />\n            <txp:else />\n                <txp:file_download_name />\n            </txp:evaluate>\n        </strong>\n    </a>\n\n    <!-- ...if exists, use the file description, otherwise omit that line -->\n    <txp:evaluate test>\n        <div itemprop=\"description\">\n            <txp:file_download_description />\n        </div>\n    </txp:evaluate>\n\n    <div class=\"footnote\">\n\n        <!-- ...if exists, use the file category, otherwise omit that line -->\n        <txp:evaluate test=\"file_download_category\">\n            <strong>\n                <txp:text item=\"category\" />\n            </strong>\n            <span itemprop=\"keywords\">\n                <txp:file_download_category title />\n            </span>\n            &#183;\n        </txp:evaluate>\n\n        <strong>\n            <txp:text item=\"author\" />\n        </strong>\n        <span itemprop=\"author\" itemscope itemtype=\"https://schema.org/Person\">\n            <span itemprop=\"name\">\n                <txp:file_download_author link />\n            </span>\n        </span>\n        &#183;\n        <strong>\n            <txp:text item=\"file_size\" />\n        </strong>\n        <span itemprop=\"contentSize\">\n            <txp:file_download_size />\n        </span>\n        &#183;\n        <strong>\n            <txp:text item=\"last_modified\" />\n        </strong>\n        <time datetime=\"<txp:file_download_modified format=\"iso8601\" />\" itemprop=\"dateModified\">\n            <txp:file_download_modified />\n        </time>\n        &#183;\n        <strong>\n            <txp:text item=\"download_count\" />\n        </strong>\n        <span itemprop=\"interactionStatistic\" itemscope itemtype=\"https://schema.org/InteractionCounter\">\n            <meta itemprop=\"interactionType\" content=\"https://schema.org/DownloadAction\" />\n            <span itemprop=\"userInteractionCount\">\n                <txp:file_download_downloads />\n            </span>\n        </span>\n\n    </div>\n\n</div>', 'four-point-eight', NULL),
('plainlinks', 'link', '<!-- This is being used as an external links form, therefore rel is set to \'external\' -->\n<txp:linkdesctitle rel=\"external\" />', 'four-point-eight', NULL),
('body_aside', 'misc', '<aside class=\"complementary-content\">\n    <!-- feed links, default flavor is RSS, so we don\'t need to specify a flavor on the first feed_link -->\n    <p><txp:feed_link class=\"feed-rss\" label=\"RSS\" /> / <txp:feed_link class=\"feed-atom\" flavor=\"atom\" label=\"Atom\" /></p>\n\n    <!-- if links exist, renders a links list -->\n    <txp:evaluate test=\"linklist\">\n        <section>\n            <h4><txp:text item=\"links\" /></h4>\n            <!-- links by default to form: \'plainlinks.txp\' unless you specify a different form -->\n            <txp:linklist wraptag=\"ul\" break=\"li\" />\n        </section>\n    </txp:evaluate>\n</aside>', 'four-point-eight', NULL),
('body_footer', 'misc', '<footer class=\"site-footer\">\n    <p><small><txp:text item=\"published_with\" /> <a rel=\"external\" href=\"https://textpattern.com/\" title=\"<txp:text item=\"go_txp_com\" />\">Textpattern CMS</a></small></p>\n</footer>', 'four-point-eight', NULL),
('body_header', 'misc', '<a class=\"skip-link\" href=\"#main\"><txp:text item=\"go_content\" /></a>\n\n<header class=\"site-header\">\n    <h2><txp:link_to_home><txp:site_name /></txp:link_to_home></h2>\n    <txp:evaluate>\n        <h3><txp:site_slogan /></h3>\n    </txp:evaluate>\n</header>\n\n<nav id=\"navigation\" class=\"site-navigation\" aria-label=\"<txp:text item=\"site_nav\" />\" itemscope itemtype=\"https://schema.org/SiteNavigationElement\">\n    <div>\n        <txp:section_list default_title=\'<txp:text item=\"home\" />\' include_default wraptag=\"ul\" break=\"\">\n            <txp:if_status>\n                <li<txp:if_section name=\'<txp:section />\'> class=\"active\"</txp:if_section>>\n                    <a itemprop=\"url\" href=\"<txp:section url />\"<txp:if_section name=\'<txp:section />\'> aria-current=\"page\"</txp:if_section>>\n                        <txp:section title />\n                    </a>\n                </li>\n            <txp:else />\n                <li>\n                    <a itemprop=\"url\" href=\"<txp:section url />\">\n                        <txp:section title />\n                    </a>\n                </li>\n            </txp:if_status>\n        </txp:section_list>\n\n        <!-- links by default to form: \'search_input.txp\' unless you specify a different form -->\n        <txp:search_input />\n    </div>\n</nav>', 'four-point-eight', NULL),
('images', 'misc', '<!-- set up a variable to check whether an image also has a caption associated with it... -->\n<txp:variable name=\"caption\" value=\'<txp:image_info />\' />\n\n<!-- ...now use that image caption and wrap img inside a figure with figcaption tags, otherwise just use a plain img tag -->\n<txp:if_variable name=\"caption\" value=\"\">\n\n    <p itemprop=\"image\" itemscope itemtype=\"https://schema.org/ImageObject\">\n        <img loading=\"lazy\" itemprop=\"url contentUrl\" src=\"<txp:image_url link=\'0\' />\" alt=\"<txp:image_info type=\'alt\' />\">\n        <meta itemprop=\"width\" content=\"<txp:image_info type=\"w\" />\">\n        <meta itemprop=\"height\" content=\"<txp:image_info type=\"h\" />\">\n    </p>\n\n<txp:else />\n\n    <figure itemprop=\"image\" itemscope itemtype=\"https://schema.org/ImageObject\">\n\n        <img loading=\"lazy\" itemprop=\"url contentUrl\" src=\"<txp:image_url link=\'0\' />\" alt=\"<txp:image_info type=\'alt\' />\">\n        <meta itemprop=\"width\" content=\"<txp:image_info type=\"w\" />\">\n        <meta itemprop=\"height\" content=\"<txp:image_info type=\"h\" />\">\n\n        <!-- you do not need to specify the attribute type=\"caption\" as that is the default setting for <txp:image_info /> tag -->\n        <figcaption itemprop=\"caption\">\n            <txp:image_info />\n        </figcaption>\n\n    </figure>\n\n</txp:if_variable>', 'four-point-eight', NULL),
('search_display', 'misc', '<h1 itemprop=\"name\"><txp:text item=\"search_results\" /></h1>\r\n\r\n<txp:if_search_results>\r\n\r\n    <!-- if search result count greater than 200 then display excessive results message, otherwise show search result count -->\r\n    <txp:if_search_results max=\"200\">\r\n        <h3>\r\n            <txp:search_result_count />\r\n            <txp:text item=\"matching_search_request\" />\r\n            <q><txp:search_term /></q>\r\n        </h3>\r\n    <txp:else />\r\n        <h3>\r\n            <txp:text item=\"too_common_search_term\" />\r\n            <q><txp:search_term /></q>\r\n        </h3>\r\n    </txp:if_search_results>\r\n\r\n<!-- if no search results, then display no search results message -->\r\n<txp:else />\r\n    <h3>\r\n        <txp:text item=\"no_search_matches\" />\r\n    </h3>\r\n\r\n</txp:if_search_results>\r\n\r\n<!-- display resulting articles (10 per page; default setting) -->\r\n<txp:article class=\"article-list\" wraptag=\"ul\" />\r\n\r\n<!-- check if there are further results and provide pagination links depending on the result -->\r\n<txp:if_search_results min=\"11\">\r\n    <nav class=\"paginator\" aria-label=\"<txp:text item=\"page_nav\" />\">\r\n        <txp:evaluate>\r\n            <txp:newer rel=\"prev\">\r\n                <txp:text item=\"prev\" />\r\n            </txp:newer>\r\n            <txp:older rel=\"next\">\r\n                <txp:text item=\"next\" />\r\n            </txp:older>\r\n        </txp:evaluate>\r\n    </nav>\r\n</txp:if_search_results>', 'four-point-eight', NULL),
('search_input', 'misc', '<div class=\"search\" aria-label=\"<txp:text item=\"search\" />\" itemscope itemtype=\"https://schema.org/WebSite\">\n    <meta itemprop=\"url\" content=\"<txp:site_url />\">\n    <form role=\"search\" method=\"get\" action=\"<txp:site_url />\" itemprop=\"potentialAction\" itemscope itemtype=\"https://schema.org/SearchAction\">\n        <meta itemprop=\"target\" content=\"<txp:site_url />?q={q}\">\n        <label class=\"accessibility\" for=\"search\"><txp:text item=\"search\" /></label>\n        <input id=\"search\" name=\"q\" type=\"search\" itemprop=\"query-input\" placeholder=\"<txp:text item=\"search\" />\"<txp:if_search> value=\"<txp:search_term />\"</txp:if_search>>\n    </form>\n</div>', 'four-point-eight', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `txp_image`
--

CREATE TABLE `txp_image` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `category` varchar(64) NOT NULL DEFAULT '',
  `ext` varchar(20) NOT NULL DEFAULT '',
  `w` int(11) NOT NULL DEFAULT 0,
  `h` int(11) NOT NULL DEFAULT 0,
  `alt` varchar(255) NOT NULL DEFAULT '',
  `caption` text NOT NULL,
  `date` datetime NOT NULL,
  `author` varchar(64) NOT NULL DEFAULT '',
  `thumbnail` int(11) NOT NULL DEFAULT 0,
  `thumb_w` int(11) NOT NULL DEFAULT 0,
  `thumb_h` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `txp_image`
--

INSERT INTO `txp_image` (`id`, `name`, `category`, `ext`, `w`, `h`, `alt`, `caption`, `date`, `author`, `thumbnail`, `thumb_w`, `thumb_h`) VALUES
(1, 'Blog_GenerativeAISecurity_BlogHero_202404_V1.webp', '', '.webp', 1561, 829, '', '', '2025-05-24 17:32:44', 'groupA', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `txp_lang`
--

CREATE TABLE `txp_lang` (
  `id` int(11) NOT NULL,
  `lang` varchar(16) NOT NULL,
  `name` varchar(64) NOT NULL,
  `event` varchar(64) NOT NULL,
  `owner` varchar(64) NOT NULL DEFAULT '',
  `data` text DEFAULT NULL,
  `lastmod` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `txp_lang`
--

INSERT INTO `txp_lang` (`id`, `lang`, `name`, `event`, `owner`, `data`, `lastmod`) VALUES
(1, 'en', 'active', 'common', '', 'Active', '2025-05-24 14:33:23'),
(2, 'en', 'add', 'common', '', 'Add', '2025-05-24 14:33:23'),
(3, 'en', 'admin', 'common', '', 'Admin', '2025-05-24 14:33:23'),
(4, 'en', 'ago', 'common', '', '{qty} {period} ago', '2025-05-24 14:33:23'),
(5, 'en', 'all', 'common', '', 'All', '2025-05-24 14:33:23'),
(6, 'en', 'are_you_sure', 'common', '', 'Are you sure?', '2025-05-24 14:33:23'),
(7, 'en', 'article', 'common', '', 'Article', '2025-05-24 14:33:23'),
(8, 'en', 'articles', 'common', '', 'Articles', '2025-05-24 14:33:23'),
(9, 'en', 'article_image', 'common', '', 'Article image', '2025-05-24 14:33:23'),
(10, 'en', 'any', 'common', '', 'Any', '2025-05-24 14:33:23'),
(11, 'en', 'ascending', 'common', '', 'Ascending', '2025-05-24 14:33:23'),
(12, 'en', 'auth_required', 'common', '', 'Authorization required.', '2025-05-24 14:33:23'),
(13, 'en', 'author', 'common', '', 'Author', '2025-05-24 14:33:23'),
(14, 'en', 'authors', 'common', '', 'Authors', '2025-05-24 14:33:23'),
(15, 'en', 'back_to_login', 'common', '', 'Back to Textpattern login', '2025-05-24 14:33:23'),
(16, 'en', 'back_to_top', 'common', '', 'Back to top', '2025-05-24 14:33:23'),
(17, 'en', 'bad_cookie', 'common', '', 'Your session has expired. Please log in again.', '2025-05-24 14:33:23'),
(18, 'en', 'bad_login', 'common', '', 'Could not log in with that username/password.', '2025-05-24 14:33:23'),
(19, 'en', 'breadcrumb_nav', 'common', '', 'Breadcrumb navigation', '2025-05-24 14:33:23'),
(20, 'en', 'browse', 'common', '', 'Browse', '2025-05-24 14:33:23'),
(21, 'en', 'cancel', 'common', '', 'Cancel', '2025-05-24 14:33:23'),
(22, 'en', 'caption', 'common', '', 'Caption', '2025-05-24 14:33:23'),
(23, 'en', 'category', 'common', '', 'Category', '2025-05-24 14:33:23'),
(24, 'en', 'categories', 'common', '', 'Categories', '2025-05-24 14:33:23'),
(25, 'en', 'categorize', 'common', '', 'Categorize', '2025-05-24 14:33:23'),
(26, 'en', 'category1', 'common', '', 'Category 1', '2025-05-24 14:33:23'),
(27, 'en', 'category2', 'common', '', 'Category 2', '2025-05-24 14:33:23'),
(28, 'en', 'choose', 'common', '', 'Choose…', '2025-05-24 14:33:23'),
(29, 'en', 'close', 'common', '', 'Close', '2025-05-24 14:33:23'),
(30, 'en', 'code', 'common', '', 'Code', '2025-05-24 14:33:23'),
(31, 'en', 'comment', 'common', '', 'Comment', '2025-05-24 14:33:23'),
(32, 'en', 'comment_invitation', 'common', '', 'Invitation', '2025-05-24 14:33:23'),
(33, 'en', 'comments', 'common', '', 'Comments', '2025-05-24 14:33:23'),
(34, 'en', 'comments_expired', 'common', '', 'Commenting has expired for this article.', '2025-05-24 14:33:23'),
(35, 'en', 'confirm_delete_popup', 'common', '', 'Really delete?', '2025-05-24 14:33:23'),
(36, 'en', 'contact', 'common', '', 'Contact', '2025-05-24 14:33:23'),
(37, 'en', 'cookies_must_be_enabled', 'common', '', 'Browser cookies must be enabled to use Textpattern.', '2025-05-24 14:33:23'),
(38, 'en', 'copy', 'common', '', 'Copy', '2025-05-24 14:33:23'),
(39, 'en', 'could_not_log_in', 'common', '', 'Could not log in with that username/password.', '2025-05-24 14:33:23'),
(40, 'en', 'create', 'common', '', 'Create', '2025-05-24 14:33:23'),
(41, 'en', 'css', 'common', '', 'Style', '2025-05-24 14:33:23'),
(42, 'en', 'current', 'common', '', 'Current', '2025-05-24 14:33:23'),
(43, 'en', 'date', 'common', '', 'Date', '2025-05-24 14:33:23'),
(44, 'en', 'date_added', 'common', '', 'Date added', '2025-05-24 14:33:23'),
(45, 'en', 'dateformat', 'common', '', 'Date format', '2025-05-24 14:33:23'),
(46, 'en', 'default', 'common', '', 'Default', '2025-05-24 14:33:23'),
(47, 'en', 'delete', 'common', '', 'Delete', '2025-05-24 14:33:23'),
(48, 'en', 'delete_selected', 'common', '', 'Delete selected', '2025-05-24 14:33:23'),
(49, 'en', 'descending', 'common', '', 'Descending', '2025-05-24 14:33:23'),
(50, 'en', 'description', 'common', '', 'Description', '2025-05-24 14:33:23'),
(51, 'en', 'documentation', 'common', '', 'Documentation', '2025-05-24 14:33:23'),
(52, 'en', 'download', 'common', '', 'Download', '2025-05-24 14:33:23'),
(53, 'en', 'download_count', 'common', '', 'Download count', '2025-05-24 14:33:23'),
(54, 'en', 'downloads', 'common', '', 'Downloads', '2025-05-24 14:33:23'),
(55, 'en', 'duplicate', 'common', '', 'Duplicate', '2025-05-24 14:33:23'),
(56, 'en', 'edit', 'common', '', 'Edit', '2025-05-24 14:33:23'),
(57, 'en', 'email', 'common', '', 'Email', '2025-05-24 14:33:23'),
(58, 'en', 'email_address', 'common', '', 'Email address', '2025-05-24 14:33:23'),
(59, 'en', 'exact', 'common', '', 'Exact', '2025-05-24 14:33:23'),
(60, 'en', 'excerpt', 'common', '', 'Excerpt', '2025-05-24 14:33:23'),
(61, 'en', 'expired', 'common', '', 'Expired', '2025-05-24 14:33:23'),
(62, 'en', 'expires', 'common', '', 'Expires', '2025-05-24 14:33:23'),
(63, 'en', 'expire_date', 'common', '', 'Expire date', '2025-05-24 14:33:23'),
(64, 'en', 'expire_time', 'common', '', 'Expire time', '2025-05-24 14:33:23'),
(65, 'en', 'export', 'common', '', 'Export', '2025-05-24 14:33:23'),
(66, 'en', 'extension', 'common', '', 'Extension', '2025-05-24 14:33:23'),
(67, 'en', 'extensions', 'common', '', 'Extensions', '2025-05-24 14:33:23'),
(68, 'en', 'file', 'common', '', 'File', '2025-05-24 14:33:23'),
(69, 'en', 'files', 'common', '', 'Files', '2025-05-24 14:33:23'),
(70, 'en', 'file_download', 'common', '', 'File download', '2025-05-24 14:33:23'),
(71, 'en', 'file_size', 'common', '', 'File size', '2025-05-24 14:33:23'),
(72, 'en', 'forget', 'common', '', 'Forget', '2025-05-24 14:33:23'),
(73, 'en', 'form', 'common', '', 'Form', '2025-05-24 14:33:23'),
(74, 'en', 'form_submission_error', 'common', '', 'Sorry, the form could not be submitted. Please try again later.', '2025-05-24 14:33:23'),
(75, 'en', 'forms', 'common', '', 'Forms', '2025-05-24 14:33:23'),
(76, 'en', 'gallery', 'common', '', 'Gallery', '2025-05-24 14:33:23'),
(77, 'en', 'general_error', 'common', '', 'General error', '2025-05-24 14:33:23'),
(78, 'en', 'go', 'common', '', 'Go', '2025-05-24 14:33:23'),
(79, 'en', 'go_back', 'common', '', 'Go back', '2025-05-24 14:33:23'),
(80, 'en', 'go_comments', 'common', '', 'Go to comments', '2025-05-24 14:33:23'),
(81, 'en', 'go_content', 'common', '', 'Go to content', '2025-05-24 14:33:23'),
(82, 'en', 'go_nav', 'common', '', 'Go to navigation', '2025-05-24 14:33:23'),
(83, 'en', 'go_search', 'common', '', 'Go to search', '2025-05-24 14:33:23'),
(84, 'en', 'go_to', 'common', '', 'Go to', '2025-05-24 14:33:23'),
(85, 'en', 'go_txp_com', 'common', '', 'Go to the Textpattern website', '2025-05-24 14:33:23'),
(86, 'en', 'height', 'common', '', 'Height', '2025-05-24 14:33:23'),
(87, 'en', 'help', 'common', '', 'Help', '2025-05-24 14:33:23'),
(88, 'en', 'hidden', 'common', '', 'Hidden', '2025-05-24 14:33:23'),
(89, 'en', 'home', 'common', '', 'Home', '2025-05-24 14:33:23'),
(90, 'en', 'host', 'common', '', 'Host', '2025-05-24 14:33:23'),
(91, 'en', 'id', 'common', '', 'ID#', '2025-05-24 14:33:23'),
(92, 'en', 'image', 'common', '', 'Image', '2025-05-24 14:33:23'),
(93, 'en', 'images', 'common', '', 'Images', '2025-05-24 14:33:23'),
(94, 'en', 'import', 'common', '', 'Import', '2025-05-24 14:33:23'),
(95, 'en', 'input_day', 'common', '', 'Day', '2025-05-24 14:33:23'),
(96, 'en', 'input_hour', 'common', '', 'Hour', '2025-05-24 14:33:23'),
(97, 'en', 'input_minute', 'common', '', 'Minute', '2025-05-24 14:33:23'),
(98, 'en', 'input_month', 'common', '', 'Month', '2025-05-24 14:33:23'),
(99, 'en', 'input_second', 'common', '', 'Second', '2025-05-24 14:33:23'),
(100, 'en', 'input_year', 'common', '', 'Year', '2025-05-24 14:33:23'),
(101, 'en', 'install', 'common', '', 'Install', '2025-05-24 14:33:23'),
(102, 'en', 'internal_error', 'common', '', 'Internal error', '2025-05-24 14:33:23'),
(103, 'en', 'keywords', 'common', '', 'Keywords', '2025-05-24 14:33:23'),
(104, 'en', 'label', 'common', '', 'Label', '2025-05-24 14:33:23'),
(105, 'en', 'language', 'common', '', 'Language', '2025-05-24 14:33:23'),
(106, 'en', 'last_modification', 'common', '', 'Last modification', '2025-05-24 14:33:23'),
(107, 'en', 'last_modified', 'common', '', 'Last modified', '2025-05-24 14:33:23'),
(108, 'en', 'lightswitch', 'common', '', 'Toggle light/dark mode', '2025-05-24 14:33:23'),
(109, 'en', 'link', 'common', '', 'Link', '2025-05-24 14:33:23'),
(110, 'en', 'links', 'common', '', 'Links', '2025-05-24 14:33:23'),
(111, 'en', 'list', 'common', '', 'List', '2025-05-24 14:33:23'),
(112, 'en', 'list_articles', 'common', '', 'List articles', '2025-05-24 14:33:23'),
(113, 'en', 'list_categories', 'common', '', 'List categories', '2025-05-24 14:33:23'),
(114, 'en', 'list_links', 'common', '', 'List links', '2025-05-24 14:33:23'),
(115, 'en', 'list_options', 'common', '', 'Column display options', '2025-05-24 14:33:23'),
(116, 'en', 'logged_in_as', 'common', '', 'Logged in as', '2025-05-24 14:33:23'),
(117, 'en', 'login', 'common', '', 'Log in', '2025-05-24 14:33:23'),
(118, 'en', 'login_to_textpattern', 'common', '', 'Log in to Textpattern', '2025-05-24 14:33:23'),
(119, 'en', 'logout', 'common', '', 'Log out', '2025-05-24 14:33:23'),
(120, 'en', 'log_in_button', 'common', '', 'Log in', '2025-05-24 14:33:23'),
(121, 'en', 'manual', 'common', '', 'Manual', '2025-05-24 14:33:23'),
(122, 'en', 'message', 'common', '', 'Message', '2025-05-24 14:33:23'),
(123, 'en', 'method', 'common', '', 'Method', '2025-05-24 14:33:23'),
(124, 'en', 'misc', 'common', '', 'Miscellaneous', '2025-05-24 14:33:23'),
(125, 'en', 'modified', 'common', '', 'Modified', '2025-05-24 14:33:23'),
(126, 'en', 'modified_by', 'common', '', 'Last modified by', '2025-05-24 14:33:23'),
(127, 'en', 'month', 'common', '', 'Month', '2025-05-24 14:33:23'),
(128, 'en', 'more', 'common', '', 'More', '2025-05-24 14:33:23'),
(129, 'en', 'more_pages', 'common', '', 'More pages', '2025-05-24 14:33:23'),
(130, 'en', 'navigation', 'common', '', 'Navigation', '2025-05-24 14:33:23'),
(131, 'en', 'name', 'common', '', 'Name', '2025-05-24 14:33:23'),
(132, 'en', 'never', 'common', '', 'Never', '2025-05-24 14:33:23'),
(133, 'en', 'newer', 'common', '', 'Newer', '2025-05-24 14:33:23'),
(134, 'en', 'next', 'common', '', 'Next', '2025-05-24 14:33:23'),
(135, 'en', 'no', 'common', '', 'No', '2025-05-24 14:33:23'),
(136, 'en', 'no_results_found', 'common', '', 'No results found.', '2025-05-24 14:33:23'),
(137, 'en', 'none', 'common', '', 'None', '2025-05-24 14:33:23'),
(138, 'en', 'noscript', 'common', '', '<strong>Note:</strong> JavaScript is currently disabled in your browser.', '2025-05-24 14:33:23'),
(139, 'en', 'of', 'common', '', 'of', '2025-05-24 14:33:23'),
(140, 'en', 'off', 'common', '', 'Off', '2025-05-24 14:33:23'),
(141, 'en', 'older', 'common', '', 'Older', '2025-05-24 14:33:23'),
(142, 'en', 'on', 'common', '', 'On', '2025-05-24 14:33:23'),
(143, 'en', 'opens_external_link', 'common', '', '(opens an external link in a new window)', '2025-05-24 14:33:23'),
(144, 'en', 'options', 'common', '', 'Options', '2025-05-24 14:33:23'),
(145, 'en', 'organization', 'common', '', 'Company/organization', '2025-05-24 14:33:23'),
(146, 'en', 'page', 'common', '', 'Page', '2025-05-24 14:33:23'),
(147, 'en', 'pages', 'common', '', 'Pages', '2025-05-24 14:33:23'),
(148, 'en', 'page_nav', 'common', '', 'Page navigation', '2025-05-24 14:33:23'),
(149, 'en', 'password', 'common', '', 'Password', '2025-05-24 14:33:23'),
(150, 'en', 'password_forgotten', 'common', '', 'Forgot password?', '2025-05-24 14:33:23'),
(151, 'en', 'permlink', 'common', '', 'Permanent link', '2025-05-24 14:33:23'),
(152, 'en', 'pophelp', 'common', '', 'Pop-up help links', '2025-05-24 14:33:23'),
(153, 'en', 'post', 'common', '', 'Post', '2025-05-24 14:33:23'),
(154, 'en', 'posted', 'common', '', 'Posted', '2025-05-24 14:33:23'),
(155, 'en', 'posted_by', 'common', '', 'Posted by', '2025-05-24 14:33:23'),
(156, 'en', 'prev', 'common', '', 'Previous', '2025-05-24 14:33:23'),
(157, 'en', 'preview', 'common', '', 'Preview', '2025-05-24 14:33:23'),
(158, 'en', 'publish', 'common', '', 'Publish', '2025-05-24 14:33:23'),
(159, 'en', 'published_at', 'common', '', 'Published at', '2025-05-24 14:33:23'),
(160, 'en', 'published_with', 'common', '', 'Published with', '2025-05-24 14:33:23'),
(161, 'en', 'publish_date', 'common', '', 'Publish date', '2025-05-24 14:33:23'),
(162, 'en', 'publish_time', 'common', '', 'Publish time', '2025-05-24 14:33:23'),
(163, 'en', 'range', 'common', '', 'Range', '2025-05-24 14:33:23'),
(164, 'en', 'recently', 'common', '', 'Recently', '2025-05-24 14:33:23'),
(165, 'en', 'recent_articles', 'common', '', 'Recent articles', '2025-05-24 14:33:23'),
(166, 'en', 'recent_comments', 'common', '', 'Recent comments', '2025-05-24 14:33:23'),
(167, 'en', 'recent_posts', 'common', '', 'Recent posts', '2025-05-24 14:33:23'),
(168, 'en', 'related_articles', 'common', '', 'Related articles', '2025-05-24 14:33:23'),
(169, 'en', 'reload', 'common', '', 'Reload', '2025-05-24 14:33:23'),
(170, 'en', 'remember', 'common', '', 'Remember', '2025-05-24 14:33:23'),
(171, 'en', 'remove', 'common', '', 'Remove', '2025-05-24 14:33:23'),
(172, 'en', 'required', 'common', '', 'Required', '2025-05-24 14:33:23'),
(173, 'en', 'reset', 'common', '', 'Reset', '2025-05-24 14:33:23'),
(174, 'en', 'restricted_area', 'common', '', 'Restricted area.', '2025-05-24 14:33:23'),
(175, 'en', 'revert', 'common', '', 'Revert', '2025-05-24 14:33:23'),
(176, 'en', 'salutation', 'common', '', 'Dear {name},', '2025-05-24 14:33:23'),
(177, 'en', 'save', 'common', '', 'Save', '2025-05-24 14:33:23'),
(178, 'en', 'save_new', 'common', '', 'Save new', '2025-05-24 14:33:23'),
(179, 'en', 'search', 'common', '', 'Search', '2025-05-24 14:33:23'),
(180, 'en', 'search_results', 'common', '', 'Search results', '2025-05-24 14:33:23'),
(181, 'en', 'section', 'common', '', 'Section', '2025-05-24 14:33:23'),
(182, 'en', 'sections', 'common', '', 'Sections', '2025-05-24 14:33:23'),
(183, 'en', 'select', 'common', '', 'Select', '2025-05-24 14:33:23'),
(184, 'en', 'selected', 'common', '', 'Selected', '2025-05-24 14:33:23'),
(185, 'en', 'send', 'common', '', 'Send', '2025-05-24 14:33:23'),
(186, 'en', 'site', 'common', '', 'Site', '2025-05-24 14:33:23'),
(187, 'en', 'sitename', 'common', '', 'Site name', '2025-05-24 14:33:23'),
(188, 'en', 'siteurl', 'common', '', 'Site URL', '2025-05-24 14:33:23'),
(189, 'en', 'site_slogan', 'common', '', 'Site slogan', '2025-05-24 14:33:23'),
(190, 'en', 'skin', 'common', '', 'Theme', '2025-05-24 14:33:23'),
(191, 'en', 'spam', 'common', '', 'Spam', '2025-05-24 14:33:23'),
(192, 'en', 'status', 'common', '', 'Status', '2025-05-24 14:33:23'),
(193, 'en', 'status_in_use', 'common', '', 'In use', '2025-05-24 14:33:23'),
(194, 'en', 'status_missing', 'common', '', 'Missing', '2025-05-24 14:33:23'),
(195, 'en', 'status_ok', 'common', '', 'OK', '2025-05-24 14:33:23'),
(196, 'en', 'stay_logged_in', 'common', '', 'Remain logged in with this browser', '2025-05-24 14:33:23'),
(197, 'en', 'submit', 'common', '', 'Submit', '2025-05-24 14:33:23'),
(198, 'en', 'tel', 'common', '', 'Phone number', '2025-05-24 14:33:23'),
(199, 'en', 'thumbnail', 'common', '', 'Thumbnail', '2025-05-24 14:33:23'),
(200, 'en', 'time', 'common', '', 'Time', '2025-05-24 14:33:23'),
(201, 'en', 'title', 'common', '', 'Title', '2025-05-24 14:33:23'),
(202, 'en', 'toggle_all_selected', 'common', '', 'Toggle all/none selected', '2025-05-24 14:33:23'),
(203, 'en', 'toggle_yes_no', 'common', '', 'Toggle yes/no', '2025-05-24 14:33:23'),
(204, 'en', 'txt_quote_double_close', 'common', '', '”', '2025-05-24 14:33:23'),
(205, 'en', 'txt_quote_double_open', 'common', '', '“', '2025-05-24 14:33:23'),
(206, 'en', 'txt_quote_single_close', 'common', '', '’', '2025-05-24 14:33:23'),
(207, 'en', 'txt_quote_single_open', 'common', '', '‘', '2025-05-24 14:33:23'),
(208, 'en', 'type', 'common', '', 'Type', '2025-05-24 14:33:23'),
(209, 'en', 'undefined', 'common', '', 'Undefined', '2025-05-24 14:33:23'),
(210, 'en', 'unknown', 'common', '', 'Unknown', '2025-05-24 14:33:23'),
(211, 'en', 'unknown_section', 'common', '', 'Unknown section', '2025-05-24 14:33:23'),
(212, 'en', 'units_b', 'common', '', 'B', '2025-05-24 14:33:23'),
(213, 'en', 'units_e', 'common', '', 'EB', '2025-05-24 14:33:23'),
(214, 'en', 'units_g', 'common', '', 'GB', '2025-05-24 14:33:23'),
(215, 'en', 'units_k', 'common', '', 'kB', '2025-05-24 14:33:23'),
(216, 'en', 'units_m', 'common', '', 'MB', '2025-05-24 14:33:23'),
(217, 'en', 'units_p', 'common', '', 'PB', '2025-05-24 14:33:23'),
(218, 'en', 'units_t', 'common', '', 'TB', '2025-05-24 14:33:23'),
(219, 'en', 'units_y', 'common', '', 'YB', '2025-05-24 14:33:23'),
(220, 'en', 'units_z', 'common', '', 'ZB', '2025-05-24 14:33:23'),
(221, 'en', 'untitled', 'common', '', 'Untitled', '2025-05-24 14:33:23'),
(222, 'en', 'update', 'common', '', 'Update', '2025-05-24 14:33:23'),
(223, 'en', 'upload', 'common', '', 'Upload', '2025-05-24 14:33:23'),
(224, 'en', 'upload_err_cant_write', 'common', '', 'Failed to write file to disk.', '2025-05-24 14:33:23'),
(225, 'en', 'upload_err_extension', 'common', '', 'File upload stopped by PHP extension.', '2025-05-24 14:33:23'),
(226, 'en', 'upload_err_form_size', 'common', '', 'File exceeds the maximum size specified in Textpattern’s preferences.', '2025-05-24 14:33:23'),
(227, 'en', 'upload_err_ini_size', 'common', '', 'File exceeds the <code>upload_max_filesize</code> directive in <code>php.ini</code>.', '2025-05-24 14:33:23'),
(228, 'en', 'upload_err_no_file', 'common', '', 'No file was specified.', '2025-05-24 14:33:23'),
(229, 'en', 'upload_err_partial', 'common', '', 'File was only partially uploaded.', '2025-05-24 14:33:23'),
(230, 'en', 'upload_err_tmp_dir', 'common', '', 'No valid temporary directory was found. Please consult your website host.', '2025-05-24 14:33:23'),
(231, 'en', 'upload_file', 'common', '', 'Upload file', '2025-05-24 14:33:23'),
(232, 'en', 'url', 'common', '', 'URL', '2025-05-24 14:33:23'),
(233, 'en', 'value', 'common', '', 'Value', '2025-05-24 14:33:23'),
(234, 'en', 'version', 'common', '', 'Version', '2025-05-24 14:33:23'),
(235, 'en', 'view', 'common', '', 'View', '2025-05-24 14:33:23'),
(236, 'en', 'viewsite', 'common', '', 'View site', '2025-05-24 14:33:23'),
(237, 'en', 'website', 'common', '', 'Website', '2025-05-24 14:33:23'),
(238, 'en', 'width', 'common', '', 'Width', '2025-05-24 14:33:23'),
(239, 'en', 'with_selected', 'common', '', 'With selected:', '2025-05-24 14:33:23'),
(240, 'en', 'with_selected_option', 'common', '', 'With {count} selected…', '2025-05-24 14:33:23'),
(241, 'en', 'yes', 'common', '', 'Yes', '2025-05-24 14:33:23'),
(242, 'en', 'lang_name', 'common', '', 'English', '2025-05-24 14:33:23'),
(243, 'en', 'lang_code', 'common', '', 'en', '2025-05-24 14:33:23'),
(244, 'en', 'lang_dir', 'common', '', 'ltr', '2025-05-24 14:33:23'),
(245, 'en', 'account_activation', 'admin', '', 'Please activate your account', '2025-05-24 14:33:23'),
(246, 'en', 'account_activation_confirmation', 'admin', '', 'Please use the link below to activate your account and set up a password.', '2025-05-24 14:33:23'),
(247, 'en', 'alias_is_taken', 'admin', '', 'Alias already exists.', '2025-05-24 14:33:23'),
(248, 'en', 'assign_assets_to', 'admin', '', 'Assign author’s content to', '2025-05-24 14:33:23'),
(249, 'en', 'author_already_exists', 'admin', '', 'Author <strong>{name}</strong> already exists.', '2025-05-24 14:33:23'),
(250, 'en', 'author_deleted', 'admin', '', 'Authors deleted: <strong>{name}</strong>.', '2025-05-24 14:33:23'),
(251, 'en', 'author_save_failed', 'admin', '', 'Author <strong>{name}</strong> could not be saved.', '2025-05-24 14:33:23'),
(252, 'en', 'author_updated', 'admin', '', 'Authors updated: <strong>{name}</strong>.', '2025-05-24 14:33:23'),
(253, 'en', 'cannot_assign_assets_to_deletee', 'admin', '', 'You cannot assign assets to a deleted account.', '2025-05-24 14:33:23'),
(254, 'en', 'changeprivilege', 'admin', '', 'Change role', '2025-05-24 14:33:23'),
(255, 'en', 'change_email_address', 'admin', '', 'Change your email address', '2025-05-24 14:33:23'),
(256, 'en', 'change_password', 'admin', '', 'Change your password', '2025-05-24 14:33:23'),
(257, 'en', 'copy_editor', 'admin', '', 'Copy Editor', '2025-05-24 14:33:23'),
(258, 'en', 'could_not_mail', 'admin', '', 'Could not email', '2025-05-24 14:33:23'),
(259, 'en', 'could_not_update_author', 'admin', '', 'Could not update author.', '2025-05-24 14:33:23'),
(260, 'en', 'create_author', 'admin', '', 'New author', '2025-05-24 14:33:23'),
(261, 'en', 'current_password', 'admin', '', 'Current password', '2025-05-24 14:33:23'),
(262, 'en', 'designer', 'admin', '', 'Designer', '2025-05-24 14:33:23'),
(263, 'en', 'edit_author', 'admin', '', 'Edit author', '2025-05-24 14:33:23'),
(264, 'en', 'email_changed', 'admin', '', 'Email address changed to <strong>{email}</strong>.', '2025-05-24 14:33:23'),
(265, 'en', 'error_adding_new_author', 'admin', '', 'Error adding new author.', '2025-05-24 14:33:23'),
(266, 'en', 'from_or_to_address_missing', 'admin', '', 'Sender and/or recipient address is missing.', '2025-05-24 14:33:23'),
(267, 'en', 'freelancer', 'admin', '', 'Freelancer', '2025-05-24 14:33:23'),
(268, 'en', 'invalid_header', 'admin', '', 'Invalid mail header.', '2025-05-24 14:33:23'),
(269, 'en', 'invalid_token', 'admin', '', 'Password reset security token is invalid.', '2025-05-24 14:33:23'),
(270, 'en', 'last_login', 'admin', '', 'Last log in', '2025-05-24 14:33:23'),
(271, 'en', 'link_expires', 'admin', '', 'You have until {day} {month} {year}, {time} to respond before this link expires.', '2025-05-24 14:33:23'),
(272, 'en', 'login_name', 'admin', '', 'Login', '2025-05-24 14:33:23'),
(273, 'en', 'login_sent_to', 'admin', '', 'Login details sent to {email}.', '2025-05-24 14:33:23'),
(274, 'en', 'log_in_at', 'admin', '', 'Log in at', '2025-05-24 14:33:23'),
(275, 'en', 'managing_editor', 'admin', '', 'Managing Editor', '2025-05-24 14:33:23'),
(276, 'en', 'must_reassign_assets', 'admin', '', 'Please reassign author’s content', '2025-05-24 14:33:23'),
(277, 'en', 'new_email', 'admin', '', 'New email', '2025-05-24 14:33:23'),
(278, 'en', 'new_password', 'admin', '', 'New password', '2025-05-24 14:33:23'),
(279, 'en', 'password_changed', 'admin', '', 'Password changed.', '2025-05-24 14:33:23'),
(280, 'en', 'password_change_confirmation', 'admin', '', 'Your password has been changed. If you did not request a change to your password, contact your site administrator.', '2025-05-24 14:33:23'),
(281, 'en', 'password_confirm_button', 'admin', '', 'Set password', '2025-05-24 14:33:23'),
(282, 'en', 'password_invalid', 'admin', '', 'Your password is incorrect.', '2025-05-24 14:33:23'),
(283, 'en', 'password_required', 'admin', '', 'Please provide a new password.', '2025-05-24 14:33:23'),
(284, 'en', 'password_reset', 'admin', '', 'Reset password', '2025-05-24 14:33:23'),
(285, 'en', 'password_reset_button', 'admin', '', 'Reset password', '2025-05-24 14:33:23'),
(286, 'en', 'password_reset_confirmation', 'admin', '', 'Somebody (probably you) has requested to reset your password. Please confirm this reset request using the link below.', '2025-05-24 14:33:23'),
(287, 'en', 'password_reset_confirmation_request', 'admin', '', 'Please confirm your password reset request', '2025-05-24 14:33:23'),
(288, 'en', 'password_reset_confirmation_request_sent', 'admin', '', 'A confirmation message was sent. Please check your email and follow the instructions.', '2025-05-24 14:33:23'),
(289, 'en', 'password_set', 'admin', '', 'Your password has been set', '2025-05-24 14:33:23'),
(290, 'en', 'password_set_confirmation', 'admin', '', 'Your password has been set. If you did not request this, contact your site administrator.', '2025-05-24 14:33:23'),
(291, 'en', 'privileges', 'admin', '', 'Role', '2025-05-24 14:33:23'),
(292, 'en', 'privs_none', 'admin', '', 'None', '2025-05-24 14:33:23'),
(293, 'en', 'publisher', 'admin', '', 'Publisher', '2025-05-24 14:33:23'),
(294, 'en', 'real_name', 'admin', '', 'Real name', '2025-05-24 14:33:23'),
(295, 'en', 'resend_activation', 'admin', '', 'Resend activation link', '2025-05-24 14:33:23'),
(296, 'en', 'resend_activation_request_sent', 'admin', '', 'Activation message sent to {name}.', '2025-05-24 14:33:23'),
(297, 'en', 'resetpassword', 'admin', '', 'Reset password', '2025-05-24 14:33:23'),
(298, 'en', 'search_users', 'admin', '', 'Search users', '2025-05-24 14:33:23'),
(299, 'en', 'sending_failed', 'admin', '', 'The message failed to send.', '2025-05-24 14:33:23'),
(300, 'en', 'set_password', 'admin', '', 'Set your password', '2025-05-24 14:33:23'),
(301, 'en', 'show_password', 'admin', '', 'Show password', '2025-05-24 14:33:23'),
(302, 'en', 'staff_writer', 'admin', '', 'Staff Writer', '2025-05-24 14:33:23'),
(303, 'en', 'token_expired', 'admin', '', 'Password reset security token has expired.', '2025-05-24 14:33:23'),
(304, 'en', 'unable_retrieve_template', 'admin', '', 'Unable to retrieve template.', '2025-05-24 14:33:23'),
(305, 'en', 'unable_retrieve_user', 'admin', '', 'Unable to retrieve user.', '2025-05-24 14:33:23'),
(306, 'en', 'unable_set_template', 'admin', '', 'Unable to set template.', '2025-05-24 14:33:23'),
(307, 'en', 'your_login_info', 'admin', '', 'Your login info', '2025-05-24 14:33:23'),
(308, 'en', 'your_login_is', 'admin', '', 'Your login is', '2025-05-24 14:33:23'),
(309, 'en', 'your_new_password', 'admin', '', 'Your new password', '2025-05-24 14:33:23'),
(310, 'en', 'your_password_is', 'admin', '', 'Your password is', '2025-05-24 14:33:23'),
(311, 'en', 'you_have_been_registered', 'admin', '', 'You have been registered as a contributor to the site', '2025-05-24 14:33:23'),
(312, 'en', 'active_language_ui', 'admin-side', '', 'User language', '2025-05-24 14:33:23'),
(313, 'en', 'advanced_options', 'admin-side', '', 'Advanced options', '2025-05-24 14:33:23'),
(314, 'en', 'auto_dst', 'admin-side', '', 'Automatically adjust Daylight Saving Time?', '2025-05-24 14:33:23'),
(315, 'en', 'body', 'admin-side', '', 'Body', '2025-05-24 14:33:23'),
(316, 'en', 'breadcrumb_title', 'admin-side', '', '/breadcrumb/title', '2025-05-24 14:33:23'),
(317, 'en', 'cannot_delete', 'admin-side', '', 'Cannot delete {thing}.', '2025-05-24 14:33:23'),
(318, 'en', 'cannot_instantiate_theme', 'admin-side', '', 'Theme <strong>{name}</strong> ({class}) failed to load properly from file {path}. The default theme will be used as a fallback when you refresh this page.', '2025-05-24 14:33:23'),
(319, 'en', 'changeauthor', 'admin-side', '', 'Change author', '2025-05-24 14:33:23'),
(320, 'en', 'changecategory', 'admin-side', '', 'Change category', '2025-05-24 14:33:23'),
(321, 'en', 'changecategory1', 'admin-side', '', 'Change category 1', '2025-05-24 14:33:23'),
(322, 'en', 'changecategory2', 'admin-side', '', 'Change category 2', '2025-05-24 14:33:23'),
(323, 'en', 'changecomments', 'admin-side', '', 'Change comments', '2025-05-24 14:33:23'),
(324, 'en', 'changeparent', 'admin-side', '', 'Change parent', '2025-05-24 14:33:23'),
(325, 'en', 'changesection', 'admin-side', '', 'Change section', '2025-05-24 14:33:23'),
(326, 'en', 'changestatus', 'admin-side', '', 'Change status', '2025-05-24 14:33:23'),
(327, 'en', 'collapse_all', 'admin-side', '', 'Collapse all', '2025-05-24 14:33:23'),
(328, 'en', 'convert_linebreaks', 'admin-side', '', 'Convert line breaks', '2025-05-24 14:33:23'),
(329, 'en', 'create_article', 'admin-side', '', 'New article', '2025-05-24 14:33:23'),
(330, 'en', 'custom', 'admin-side', '', 'Custom fields', '2025-05-24 14:33:23'),
(331, 'en', 'date_settings', 'admin-side', '', 'Date and time', '2025-05-24 14:33:23'),
(332, 'en', 'deleteforce', 'admin-side', '', 'Force delete', '2025-05-24 14:33:23'),
(333, 'en', 'detail', 'admin-side', '', 'Detail', '2025-05-24 14:33:23'),
(334, 'en', 'directory_permissions', 'admin-side', '', 'Check directory permissions: <strong>{path}</strong>.', '2025-05-24 14:33:23'),
(335, 'en', 'draft', 'admin-side', '', 'Draft', '2025-05-24 14:33:23'),
(336, 'en', 'expand_all', 'admin-side', '', 'Expand all', '2025-05-24 14:33:23'),
(337, 'en', 'export_to_disk', 'admin-side', '', 'Export to disk', '2025-05-24 14:33:23'),
(338, 'en', 'file_base_path', 'admin-side', '', 'File directory path', '2025-05-24 14:33:23'),
(339, 'en', 'get_off_my_lawn', 'admin-side', '', 'I’m sorry. I’m afraid I can’t do that; <code>{event}</code> <code>{step}</code> is an unsafe operation.', '2025-05-24 14:33:23'),
(340, 'en', 'gmtoffset', 'admin-side', '', 'Time zone (GMT offset in seconds)', '2025-05-24 14:33:23'),
(341, 'en', 'id_title', 'admin-side', '', '/id/title', '2025-05-24 14:33:23'),
(342, 'en', 'img_dir', 'admin-side', '', 'Image directory', '2025-05-24 14:33:23'),
(343, 'en', 'import_from_disk', 'admin-side', '', 'Import from disk', '2025-05-24 14:33:23'),
(344, 'en', 'installed', 'admin-side', '', 'Installed', '2025-05-24 14:33:23'),
(345, 'en', 'invalid_argument', 'admin-side', '', 'Invalid argument', '2025-05-24 14:33:23'),
(346, 'en', 'invalid_article_id', 'admin-side', '', 'Invalid article ID', '2025-05-24 14:33:23'),
(347, 'en', 'invalid_expiredate', 'admin-side', '', 'Invalid expire date or time.', '2025-05-24 14:33:23'),
(348, 'en', 'invalid_json', 'admin-side', '', 'Invalid JSON files: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(349, 'en', 'invalid_postdate', 'admin-side', '', 'Invalid publish date or time.', '2025-05-24 14:33:23'),
(350, 'en', 'is_dst', 'admin-side', '', 'Daylight Saving Time enabled?', '2025-05-24 14:33:23'),
(351, 'en', 'leave_text_untouched', 'admin-side', '', 'Leave text untouched', '2025-05-24 14:33:23'),
(352, 'en', 'live', 'admin-side', '', 'Live', '2025-05-24 14:33:23'),
(353, 'en', 'live_preview', 'admin-side', '', 'Live preview', '2025-05-24 14:33:23'),
(354, 'en', 'locale', 'admin-side', '', 'Locale', '2025-05-24 14:33:23'),
(355, 'en', 'manage', 'admin-side', '', 'Manage', '2025-05-24 14:33:23'),
(356, 'en', 'messy', 'admin-side', '', '?=messy', '2025-05-24 14:33:23'),
(357, 'en', 'meta', 'admin-side', '', 'Meta', '2025-05-24 14:33:23'),
(358, 'en', 'no_sections_available', 'tag', '', 'No sections available.', '2025-05-24 14:33:23'),
(359, 'en', 'on_front_page', 'admin-side', '', 'On default page?', '2025-05-24 14:33:23'),
(360, 'en', 'override', 'admin-side', '', 'Override', '2025-05-24 14:33:23'),
(361, 'en', 'parent', 'admin-side', '', 'Parent', '2025-05-24 14:33:23'),
(362, 'en', 'path_creation_or_writing_failed', 'admin-side', '', 'Unable to create or write in files/directories: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(363, 'en', 'path_not_readable', 'admin-side', '', '<strong>Warning:</strong> cannot read from directories/files <code>{list}</code>.', '2025-05-24 14:33:23'),
(364, 'en', 'path_not_writable', 'admin-side', '', '<strong>Warning:</strong> cannot write to directories/files <code>{list}</code>.', '2025-05-24 14:33:23'),
(365, 'en', 'path_renaming_failed', 'admin-side', '', 'Files or directories renaming failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(366, 'en', 'pending', 'admin-side', '', 'Pending', '2025-05-24 14:33:23'),
(367, 'en', 'permlink_mode', 'admin-side', '', 'Article URL pattern', '2025-05-24 14:33:23'),
(368, 'en', 'plugin_dir', 'admin-side', '', 'Plugin directory', '2025-05-24 14:33:23'),
(369, 'en', 'pophelp_missing', 'admin-side', '', 'Help text is missing.', '2025-05-24 14:33:23'),
(370, 'en', 'preferences_saved', 'admin-side', '', 'Preferences saved', '2025-05-24 14:33:23'),
(371, 'en', 'reset_time', 'admin-side', '', 'Reset timestamp to now', '2025-05-24 14:33:23'),
(372, 'en', 'search_all', 'admin-side', '', 'Search all', '2025-05-24 14:33:23'),
(373, 'en', 'search_clear', 'admin-side', '', 'Clear search', '2025-05-24 14:33:23'),
(374, 'en', 'search_options', 'admin-side', '', 'Search options', '2025-05-24 14:33:23'),
(375, 'en', 'section_category_title', 'admin-side', '', '/section/category/title', '2025-05-24 14:33:23'),
(376, 'en', 'section_id_title', 'admin-side', '', '/section/id/title', '2025-05-24 14:33:23'),
(377, 'en', 'section_title', 'admin-side', '', '/section/title', '2025-05-24 14:33:23'),
(378, 'en', 'set_expire_now', 'admin-side', '', 'Set expiry to now', '2025-05-24 14:33:23'),
(379, 'en', 'set_to_now', 'admin-side', '', 'Set timestamp to now', '2025-05-24 14:33:23'),
(380, 'en', 'show', 'admin-side', '', 'Show', '2025-05-24 14:33:23'),
(381, 'en', 'showing_search_results', 'admin-side', '', 'Showing {from} to {to} of {total}', '2025-05-24 14:33:23'),
(382, 'en', 'skin_dir', 'admin-side', '', 'Theme directory', '2025-05-24 14:33:23'),
(383, 'en', 'sort_value', 'admin-side', '', 'Sort value', '2025-05-24 14:33:23'),
(384, 'en', 'sticky', 'admin-side', '', 'Sticky', '2025-05-24 14:33:23'),
(385, 'en', 'swap_values', 'admin-side', '', 'Swap values', '2025-05-24 14:33:23'),
(386, 'en', 'tab_admin', 'admin-side', '', 'Admin', '2025-05-24 14:33:23'),
(387, 'en', 'tab_comments', 'admin-side', '', 'Comments', '2025-05-24 14:33:23'),
(388, 'en', 'tab_content', 'admin-side', '', 'Content', '2025-05-24 14:33:23'),
(389, 'en', 'tab_diagnostics', 'admin-side', '', 'Diagnostics', '2025-05-24 14:33:23'),
(390, 'en', 'tab_extensions', 'admin-side', '', 'Extensions', '2025-05-24 14:33:23'),
(391, 'en', 'tab_file', 'admin-side', '', 'Files', '2025-05-24 14:33:23'),
(392, 'en', 'tab_forms', 'admin-side', '', 'Forms', '2025-05-24 14:33:23'),
(393, 'en', 'tab_help', 'admin-side', '', 'Help', '2025-05-24 14:33:23'),
(394, 'en', 'tab_image', 'admin-side', '', 'Images', '2025-05-24 14:33:23'),
(395, 'en', 'tab_import', 'admin-side', '', 'Import', '2025-05-24 14:33:23'),
(396, 'en', 'tab_languages', 'admin-side', '', 'Languages', '2025-05-24 14:33:23'),
(397, 'en', 'tab_link', 'admin-side', '', 'Links', '2025-05-24 14:33:23'),
(398, 'en', 'tab_list', 'admin-side', '', 'Articles', '2025-05-24 14:33:23'),
(399, 'en', 'tab_logs', 'admin-side', '', 'Visitor logs', '2025-05-24 14:33:23'),
(400, 'en', 'tab_organise', 'admin-side', '', 'Categories', '2025-05-24 14:33:23'),
(401, 'en', 'tab_pages', 'admin-side', '', 'Pages', '2025-05-24 14:33:23'),
(402, 'en', 'tab_plugins', 'admin-side', '', 'Plugins', '2025-05-24 14:33:23'),
(403, 'en', 'tab_preferences', 'admin-side', '', 'Preferences', '2025-05-24 14:33:23'),
(404, 'en', 'tab_presentation', 'admin-side', '', 'Presentation', '2025-05-24 14:33:23'),
(405, 'en', 'tab_sections', 'admin-side', '', 'Sections', '2025-05-24 14:33:23'),
(406, 'en', 'tab_site_account', 'admin-side', '', 'Account', '2025-05-24 14:33:23'),
(407, 'en', 'tab_site_admin', 'admin-side', '', 'Users', '2025-05-24 14:33:23'),
(408, 'en', 'tab_skin', 'admin-side', '', 'Themes', '2025-05-24 14:33:23'),
(409, 'en', 'tab_start', 'admin-side', '', 'Home', '2025-05-24 14:33:23'),
(410, 'en', 'tab_style', 'admin-side', '', 'Styles', '2025-05-24 14:33:23'),
(411, 'en', 'tab_view_site', 'admin-side', '', 'View site', '2025-05-24 14:33:23'),
(412, 'en', 'tab_write', 'admin-side', '', 'Write', '2025-05-24 14:33:23'),
(413, 'en', 'tagbuilder', 'admin-side', '', 'Tag builder', '2025-05-24 14:33:23'),
(414, 'en', 'tags', 'admin-side', '', 'Tags', '2025-05-24 14:33:23'),
(415, 'en', 'tempdir', 'admin-side', '', 'Temporary directory path', '2025-05-24 14:33:23'),
(416, 'en', 'text', 'admin-side', '', 'Text', '2025-05-24 14:33:23'),
(417, 'en', 'textfilter', 'admin-side', '', 'Format:', '2025-05-24 14:33:23'),
(418, 'en', 'textfilter_help', 'admin-side', '', 'Text formatting help', '2025-05-24 14:33:23'),
(419, 'en', 'theme_name', 'admin-side', '', 'Admin-side theme', '2025-05-24 14:33:23'),
(420, 'en', 'timestamp', 'admin-side', '', 'Timestamp', '2025-05-24 14:33:23'),
(421, 'en', 'title_body', 'admin-side', '', 'Title and body', '2025-05-24 14:33:23'),
(422, 'en', 'title_body_excerpt', 'admin-side', '', 'Title, body and excerpt', '2025-05-24 14:33:23'),
(423, 'en', 'title_only', 'admin-side', '', '/title', '2025-05-24 14:33:23'),
(424, 'en', 'unmoderated', 'admin-side', '', 'Unmoderated', '2025-05-24 14:33:23'),
(425, 'en', 'update_available', 'admin-side', '', 'Update available', '2025-05-24 14:33:23'),
(426, 'en', 'update_from_disk', 'admin-side', '', 'Update from disk', '2025-05-24 14:33:23'),
(427, 'en', 'use_textile', 'admin-side', '', 'Default text formatting', '2025-05-24 14:33:23'),
(428, 'en', 'view_per_page', 'admin-side', '', 'View {page} per page', '2025-05-24 14:33:23'),
(429, 'en', 'view_preview_short', 'admin-side', '', 'Preview', '2025-05-24 14:33:23'),
(430, 'en', 'visible', 'admin-side', '', 'Visible', '2025-05-24 14:33:23'),
(431, 'en', 'year_month_day_title', 'admin-side', '', '/year/month/day/title', '2025-05-24 14:33:23'),
(432, 'en', 'article_expires_before_postdate', 'article', '', 'Error: article expires <strong>before</strong> publish date.', '2025-05-24 14:33:23'),
(433, 'en', 'article_markup', 'article', '', 'Body markup', '2025-05-24 14:33:23'),
(434, 'en', 'article_posted', 'article', '', 'Article posted.', '2025-05-24 14:33:23'),
(435, 'en', 'article_saved', 'article', '', 'Article saved.', '2025-05-24 14:33:23'),
(436, 'en', 'article_saved_draft', 'article', '', 'Article saved as draft.', '2025-05-24 14:33:23'),
(437, 'en', 'article_saved_hidden', 'article', '', 'Article saved as hidden.', '2025-05-24 14:33:23'),
(438, 'en', 'article_saved_pending', 'article', '', 'Article saved as pending.', '2025-05-24 14:33:23'),
(439, 'en', 'article_save_failed', 'article', '', 'The article was not saved due to an error. Please try again.', '2025-05-24 14:33:23'),
(440, 'en', 'comment_settings', 'article', '', 'Comment options', '2025-05-24 14:33:23'),
(441, 'en', 'concurrent_edit_by', 'article', '', 'Article <strong>not</strong> saved. {author} modified the article while you were editing it. If you’re sure, press the ‘Save’ button once more.', '2025-05-24 14:33:23'),
(442, 'en', 'excerpt_markup', 'article', '', 'Excerpt markup', '2025-05-24 14:33:23'),
(443, 'en', 'override_default_form', 'article', '', 'Override form', '2025-05-24 14:33:23'),
(444, 'en', 'problem_creating_article', 'article', '', 'There was a problem creating the article.', '2025-05-24 14:33:23'),
(445, 'en', 'problem_deleting_article', 'article', '', 'There was a problem deleting the article.', '2025-05-24 14:33:23'),
(446, 'en', 'problem_getting_articles', 'article', '', 'There was a problem getting articles.', '2025-05-24 14:33:23'),
(447, 'en', 'problem_retrieving_article', 'article', '', 'There was a problem retrieving the article.', '2025-05-24 14:33:23'),
(448, 'en', 'problem_retrieving_article_categories', 'article', '', 'There was a problem retrieving article categories.', '2025-05-24 14:33:23'),
(449, 'en', 'problem_retrieving_categories', 'article', '', 'There was a problem retrieving categories.', '2025-05-24 14:33:23'),
(450, 'en', 'problem_retrieving_category_info', 'article', '', 'There was a problem retrieving category information.', '2025-05-24 14:33:23'),
(451, 'en', 'problem_retrieving_sections', 'article', '', 'There was a problem retrieving sections.', '2025-05-24 14:33:23'),
(452, 'en', 'problem_saving_article_categories', 'article', '', 'There was a problem saving article categories.', '2025-05-24 14:33:23'),
(453, 'en', 'problem_updating_article', 'article', '', 'There was a problem updating the article.', '2025-05-24 14:33:23'),
(454, 'en', 'sort_display', 'article', '', 'Sort and display', '2025-05-24 14:33:23'),
(455, 'en', 'trying_to_assign_unexisting_category_to_the_article', 'article', '', 'A non-existent category cannot be assigned to an article.', '2025-05-24 14:33:23'),
(456, 'en', 'url_title', 'article', '', 'URL-only title', '2025-05-24 14:33:23'),
(457, 'en', 'url_title_is_blank', 'article', '', 'URL-only title was left blank.', '2025-05-24 14:33:23'),
(458, 'en', 'url_title_is_multiple', 'article', '', 'The same URL-only title is used by {count} different articles.', '2025-05-24 14:33:23'),
(459, 'en', 'write', 'article', '', 'Write', '2025-05-24 14:33:23'),
(460, 'en', 'article_categories_deleted', 'category', '', 'Article categories deleted: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(461, 'en', 'article_category', 'category', '', 'Article category', '2025-05-24 14:33:23'),
(462, 'en', 'article_category_already_exists', 'category', '', 'Article category <strong>{name}</strong> already exists.', '2025-05-24 14:33:23'),
(463, 'en', 'article_category_created', 'category', '', 'Article category <strong>{name}</strong> created.', '2025-05-24 14:33:23'),
(464, 'en', 'article_category_description', 'category', '', 'Article category description', '2025-05-24 14:33:23'),
(465, 'en', 'article_category_invalid', 'category', '', 'Article category <strong>{name}</strong> invalid.', '2025-05-24 14:33:23'),
(466, 'en', 'article_category_name', 'category', '', 'Article category name', '2025-05-24 14:33:23'),
(467, 'en', 'article_category_title', 'category', '', 'Article category title', '2025-05-24 14:33:23'),
(468, 'en', 'article_category_updated', 'category', '', 'Article category <strong>{name}</strong> updated.', '2025-05-24 14:33:23'),
(469, 'en', 'categories_set_parent', 'category', '', '{list} assigned to {type} category parent {parent}', '2025-05-24 14:33:23'),
(470, 'en', 'category_count', 'category', '', 'Items in this category: {num}.', '2025-05-24 14:33:23'),
(471, 'en', 'category_not_found', 'category', '', 'Category not found', '2025-05-24 14:33:23'),
(472, 'en', 'category_save_failed', 'category', '', 'The category was not saved due to an error. Please try again.', '2025-05-24 14:33:23'),
(473, 'en', 'create_category', 'category', '', 'New category', '2025-05-24 14:33:23'),
(474, 'en', 'edit_category', 'category', '', 'Edit category', '2025-05-24 14:33:23'),
(475, 'en', 'file_categories_deleted', 'category', '', 'File categories deleted: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(476, 'en', 'file_category_already_exists', 'category', '', 'File category <strong>{name}</strong> already exists.', '2025-05-24 14:33:23'),
(477, 'en', 'file_category_created', 'category', '', 'File category <strong>{name}</strong> created.', '2025-05-24 14:33:23'),
(478, 'en', 'file_category_description', 'category', '', 'File category description', '2025-05-24 14:33:23'),
(479, 'en', 'file_category_invalid', 'category', '', 'File category <strong>{name}</strong> invalid.', '2025-05-24 14:33:23'),
(480, 'en', 'file_category_name', 'category', '', 'File category name', '2025-05-24 14:33:23'),
(481, 'en', 'file_category_title', 'category', '', 'File category title', '2025-05-24 14:33:23'),
(482, 'en', 'file_category_updated', 'category', '', 'File category <strong>{name}</strong> updated.', '2025-05-24 14:33:23'),
(483, 'en', 'image_categories_deleted', 'category', '', 'Image categories deleted: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(484, 'en', 'image_category_already_exists', 'category', '', 'Image category <strong>{name}</strong> already exists.', '2025-05-24 14:33:23'),
(485, 'en', 'image_category_created', 'category', '', 'Image category <strong>{name}</strong> created.', '2025-05-24 14:33:23'),
(486, 'en', 'image_category_description', 'category', '', 'Image category description', '2025-05-24 14:33:23'),
(487, 'en', 'image_category_invalid', 'category', '', 'Image category <strong>{name}</strong> invalid.', '2025-05-24 14:33:23'),
(488, 'en', 'image_category_name', 'category', '', 'Image category name', '2025-05-24 14:33:23'),
(489, 'en', 'image_category_title', 'category', '', 'Image category title', '2025-05-24 14:33:23'),
(490, 'en', 'image_category_updated', 'category', '', 'Image category <strong>{name}</strong> updated.', '2025-05-24 14:33:23'),
(491, 'en', 'link_categories_deleted', 'category', '', 'Link categories deleted: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(492, 'en', 'link_category_already_exists', 'category', '', 'Link category <strong>{name}</strong> already exists.', '2025-05-24 14:33:23'),
(493, 'en', 'link_category_created', 'category', '', 'Link category <strong>{name}</strong> created.', '2025-05-24 14:33:23'),
(494, 'en', 'link_category_description', 'category', '', 'Link category description', '2025-05-24 14:33:23'),
(495, 'en', 'link_category_invalid', 'category', '', 'Link category <strong>{name}</strong> invalid.', '2025-05-24 14:33:23'),
(496, 'en', 'link_category_name', 'category', '', 'Link category name', '2025-05-24 14:33:23'),
(497, 'en', 'link_category_title', 'category', '', 'Link category title', '2025-05-24 14:33:23'),
(498, 'en', 'link_category_updated', 'category', '', 'Link category <strong>{name}</strong> updated.', '2025-05-24 14:33:23'),
(499, 'en', 'no_categories_exist', 'category', '', 'None exist.', '2025-05-24 14:33:23'),
(500, 'en', 'no_other_categories_exist', 'category', '', 'No other categories exist.', '2025-05-24 14:33:23'),
(501, 'en', 'all_stylesheets', 'css', '', 'All styles', '2025-05-24 14:33:23'),
(502, 'en', 'create_css', 'css', '', 'New style', '2025-05-24 14:33:23'),
(503, 'en', 'css_already_exists', 'css', '', 'Style <strong>{name}</strong> already exists.', '2025-05-24 14:33:23'),
(504, 'en', 'css_code', 'css', '', 'Style code', '2025-05-24 14:33:23'),
(505, 'en', 'css_created', 'css', '', 'Styles created: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(506, 'en', 'css_deleted', 'css', '', 'Styles deleted: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(507, 'en', 'css_name', 'css', '', 'Style name', '2025-05-24 14:33:23'),
(508, 'en', 'css_name_required', 'css', '', 'Please provide a name for your style.', '2025-05-24 14:33:23'),
(509, 'en', 'css_save_failed', 'css', '', 'The style was not saved due to an error. Please try again.', '2025-05-24 14:33:23'),
(510, 'en', 'css_updated', 'css', '', 'Styles updated: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(511, 'en', 'css_used_by_section', 'css', '', 'Style <strong>{name}</strong> not deleted: used by {count} section(s).', '2025-05-24 14:33:23'),
(512, 'en', 'all_checks_passed', 'diag', '', 'All checks passed.', '2025-05-24 14:33:23'),
(513, 'en', 'cgi_header_config', 'diag', '', 'CGI header configuration', '2025-05-24 14:33:23'),
(514, 'en', 'clean_url_data_failed', 'diag', '', 'Clean URL data test failed: {data}', '2025-05-24 14:33:23'),
(515, 'en', 'clean_url_test_failed', 'diag', '', 'Clean URL test failed.', '2025-05-24 14:33:23'),
(516, 'en', 'diag_clear_private', 'diag', '', 'Hide private information', '2025-05-24 14:33:23'),
(517, 'en', 'dev_version_live', 'diag', '', 'You are running a development version of Textpattern on a live server.', '2025-05-24 14:33:23'),
(518, 'en', 'diagnostic_info', 'diag', '', 'Diagnostic info', '2025-05-24 14:33:23'),
(519, 'en', 'dir_not_writable', 'diag', '', '{dirtype} is not writable: {path}', '2025-05-24 14:33:23'),
(520, 'en', 'dns_lookup_fails', 'diag', '', 'DNS lookup failed: {domain}', '2025-05-24 14:33:23'),
(521, 'en', 'file_uploads_disabled', 'diag', '', 'File uploads are disabled.', '2025-05-24 14:33:23'),
(522, 'en', 'high', 'diag', '', 'High', '2025-05-24 14:33:23'),
(523, 'en', 'htaccess_missing', 'diag', '', '.htaccess file is missing.', '2025-05-24 14:33:23'),
(524, 'en', 'low', 'diag', '', 'Low', '2025-05-24 14:33:23'),
(525, 'en', 'missing_files', 'diag', '', 'Missing files: {list}', '2025-05-24 14:33:23'),
(526, 'en', 'modified_files', 'diag', '', 'Some Textpattern files have been modified: {list}', '2025-05-24 14:33:23'),
(527, 'en', 'mod_rewrite_missing', 'diag', '', 'Apache module <code>mod_rewrite</code> is not enabled.', '2025-05-24 14:33:23'),
(528, 'en', 'mysql_table_errors', 'diag', '', 'The following errors were detected in your MySQL tables: {list}', '2025-05-24 14:33:23'),
(529, 'en', 'no_temp_dir', 'diag', '', 'No temporary directory defined.', '2025-05-24 14:33:23'),
(530, 'en', 'old_placeholder', 'diag', '', 'Section named the same as directory: {path}.', '2025-05-24 14:33:23'),
(531, 'en', 'path_inaccessible', 'diag', '', '<strong>{path}</strong> is not accessible.', '2025-05-24 14:33:23'),
(532, 'en', 'php_diagnostics', 'diag', '', 'PHP configuration', '2025-05-24 14:33:23'),
(533, 'en', 'php_extensions', 'diag', '', 'PHP extensions', '2025-05-24 14:33:23'),
(534, 'en', 'php_version_required', 'diag', '', 'Textpattern requires at least version {version} of PHP to be installed on your server.', '2025-05-24 14:33:23'),
(535, 'en', 'preflight_check', 'diag', '', 'Pre-flight check', '2025-05-24 14:33:23'),
(536, 'en', 'problem_connecting_update_server', 'diag', '', 'There was a problem connecting to the Textpattern update server. Please try again later.', '2025-05-24 14:33:23'),
(537, 'en', 'site_trailing_slash', 'diag', '', 'Site URL has a trailing slash: {path}', '2025-05-24 14:33:23'),
(538, 'en', 'site_url_mismatch', 'diag', '', 'Site URL preference might be incorrect: {url}', '2025-05-24 14:33:23'),
(539, 'en', 'some_php_functions_disabled', 'diag', '', 'The following PHP functions (which may be necessary to run Textpattern) are disabled on your server: {list}', '2025-05-24 14:33:23'),
(540, 'en', 'still_exists', 'diag', '', '<strong>{path}</strong> still exists.', '2025-05-24 14:33:23'),
(541, 'en', 'textpattern_update_available', 'diag', '', 'New Textpattern version {version} <a href=\"https://textpattern.com/download\" rel=\"external\">available for download</a>.', '2025-05-24 14:33:23'),
(542, 'en', 'textpattern_update_available_beta', 'diag', '', 'New Textpattern pre-release version {version} available for download. Please <a href=\"https://textpattern.com/download-beta\" rel=\"external\">visit the Textpattern website</a> for more information.', '2025-05-24 14:33:23'),
(543, 'en', 'tmp_plugin_paths_match', 'diag', '', 'Temporary directory path and plugin cache directory path should <strong>not</strong> match.', '2025-05-24 14:33:23'),
(544, 'en', 'warn_mail_unavailable', 'diag', '', 'Your PHP installation is missing the <code>mail()</code> function. Therefore no emails can be sent from Textpattern, which limits certain functionality.', '2025-05-24 14:33:23'),
(545, 'en', 'article_deleted', 'discuss', '', 'Article deleted.', '2025-05-24 14:33:23'),
(546, 'en', 'comments_deleted', 'discuss', '', 'Comments deleted: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(547, 'en', 'comments_marked_spam', 'discuss', '', 'Comments hidden and marked as spam: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(548, 'en', 'comments_marked_unmoderated', 'discuss', '', 'Comments hidden and marked as unmoderated: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(549, 'en', 'comments_marked_visible', 'discuss', '', 'Comments made visible: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(550, 'en', 'comment_not_found', 'discuss', '', 'Comment does not exist, it may have been deleted.', '2025-05-24 14:33:23'),
(551, 'en', 'comment_save_failed', 'discuss', '', 'The comment was not saved due to an error. Please try again.', '2025-05-24 14:33:23'),
(552, 'en', 'comment_updated', 'discuss', '', 'Comment <strong>{id}</strong> updated.', '2025-05-24 14:33:23');
INSERT INTO `txp_lang` (`id`, `lang`, `name`, `event`, `owner`, `data`, `lastmod`) VALUES
(553, 'en', 'edit_comment', 'discuss', '', 'Edit comment', '2025-05-24 14:33:23'),
(554, 'en', 'hide_spam', 'discuss', '', 'Hide (spam)', '2025-05-24 14:33:23'),
(555, 'en', 'hide_unmoderated', 'discuss', '', 'Hide (unmoderated)', '2025-05-24 14:33:23'),
(556, 'en', 'just_spam_results_found', 'discuss', '', 'Only spam comments found. Use ‘Show spam’ to view them.', '2025-05-24 14:33:23'),
(557, 'en', 'no_comments_recorded', 'discuss', '', 'No comments recorded.', '2025-05-24 14:33:23'),
(558, 'en', 'search_comments', 'discuss', '', 'Search comments', '2025-05-24 14:33:23'),
(559, 'en', 'show_spam', 'discuss', '', 'Show spam', '2025-05-24 14:33:23'),
(560, 'en', 'condition', 'file', '', 'Condition', '2025-05-24 14:33:23'),
(561, 'en', 'edit_file', 'file', '', 'Edit file', '2025-05-24 14:33:23'),
(562, 'en', 'existing_file', 'file', '', 'Existing file', '2025-05-24 14:33:23'),
(563, 'en', 'file_already_exists', 'file', '', 'File <strong>{name}</strong> already exists.', '2025-05-24 14:33:23'),
(564, 'en', 'file_cannot_rename', 'file', '', 'File <strong>{name}</strong> could not be renamed.', '2025-05-24 14:33:23'),
(565, 'en', 'file_deleted', 'file', '', 'Files deleted: <strong>{name}</strong>.', '2025-05-24 14:33:23'),
(566, 'en', 'file_delete_failed', 'file', '', 'Failed to delete files: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(567, 'en', 'file_dir_not_writeable', 'file', '', '<strong>Warning:</strong> cannot write to file directory <code>{filedir}</code>.', '2025-05-24 14:33:23'),
(568, 'en', 'file_not_found', 'file', '', 'Files not found: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(569, 'en', 'file_not_updated', 'file', '', 'File <strong>{name}</strong> not updated.', '2025-05-24 14:33:23'),
(570, 'en', 'file_relink', 'file', '', 'Upload/assign file', '2025-05-24 14:33:23'),
(571, 'en', 'file_status', 'file', '', 'File status', '2025-05-24 14:33:23'),
(572, 'en', 'file_unsynchronized', 'file', '', 'File <strong>{name}</strong> has become unsynchronized with the database. Please manually fix filename.', '2025-05-24 14:33:23'),
(573, 'en', 'file_updated', 'file', '', 'Files updated: <strong>{name}</strong>.', '2025-05-24 14:33:23'),
(574, 'en', 'file_uploaded', 'file', '', 'Files uploaded: <strong>{name}</strong>.', '2025-05-24 14:33:23'),
(575, 'en', 'file_upload_failed', 'file', '', 'Failed to upload: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(576, 'en', 'invalid_filename', 'file', '', 'Invalid filenames: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(577, 'en', 'invalid_id', 'file', '', 'Invalid ID <strong>{id}</strong>.', '2025-05-24 14:33:23'),
(578, 'en', 'linked_to_file', 'file', '', 'Files linked: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(579, 'en', 'no_files_recorded', 'file', '', 'No files recorded.', '2025-05-24 14:33:23'),
(580, 'en', 'permissions', 'file', '', 'Permissions', '2025-05-24 14:33:23'),
(581, 'en', 'private', 'file', '', 'Private', '2025-05-24 14:33:23'),
(582, 'en', 'public', 'file', '', 'Public', '2025-05-24 14:33:23'),
(583, 'en', 'replace_file', 'file', '', 'Replace file', '2025-05-24 14:33:23'),
(584, 'en', 'reset_download_count', 'file', '', 'Reset download count', '2025-05-24 14:33:23'),
(585, 'en', 'search_files', 'file', '', 'Search files', '2025-05-24 14:33:23'),
(586, 'en', 'all_forms', 'form', '', 'All forms', '2025-05-24 14:33:23'),
(587, 'en', 'changetype', 'form', '', 'Change type', '2025-05-24 14:33:23'),
(588, 'en', 'create_form', 'form', '', 'New form', '2025-05-24 14:33:23'),
(589, 'en', 'form_already_exists', 'form', '', 'Form <strong>{name}</strong> already exists.', '2025-05-24 14:33:23'),
(590, 'en', 'form_clone', 'form', '', 'Duplicate form', '2025-05-24 14:33:23'),
(591, 'en', 'form_code', 'form', '', 'Form code', '2025-05-24 14:33:23'),
(592, 'en', 'form_created', 'form', '', 'Forms created: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(593, 'en', 'form_deleted', 'form', '', 'Forms deleted: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(594, 'en', 'form_name', 'form', '', 'Form name', '2025-05-24 14:33:23'),
(595, 'en', 'form_name_invalid', 'form', '', 'Form name invalid.', '2025-05-24 14:33:23'),
(596, 'en', 'form_save_failed', 'form', '', 'The form was not saved due to an error. Please try again.', '2025-05-24 14:33:23'),
(597, 'en', 'form_type', 'form', '', 'Form type', '2025-05-24 14:33:23'),
(598, 'en', 'form_type_missing', 'form', '', 'Form type is missing', '2025-05-24 14:33:23'),
(599, 'en', 'form_updated', 'form', '', 'Forms updated: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(600, 'en', 'alt_text', 'image', '', 'Alternate text', '2025-05-24 14:33:23'),
(601, 'en', 'create_thumbnail', 'image', '', 'Create thumbnail', '2025-05-24 14:33:23'),
(602, 'en', 'edit_image', 'image', '', 'Edit image', '2025-05-24 14:33:23'),
(603, 'en', 'image_deleted', 'image', '', 'Images deleted: <strong>{name}</strong>.', '2025-05-24 14:33:23'),
(604, 'en', 'image_delete_failed', 'image', '', 'Images could not be completely deleted: <strong>{name}</strong>.', '2025-05-24 14:33:23'),
(605, 'en', 'image_details', 'image', '', 'Image details', '2025-05-24 14:33:23'),
(606, 'en', 'image_name', 'image', '', 'Image name', '2025-05-24 14:33:23'),
(607, 'en', 'image_save_error', 'image', '', 'There was a problem saving image data.', '2025-05-24 14:33:23'),
(608, 'en', 'image_save_failed', 'image', '', 'The image was not saved due to an error. Please try again.', '2025-05-24 14:33:23'),
(609, 'en', 'image_updated', 'image', '', 'Images updated: <strong>{name}</strong>.', '2025-05-24 14:33:23'),
(610, 'en', 'image_uploaded', 'image', '', 'Images uploaded: <strong>{name}</strong>.', '2025-05-24 14:33:23'),
(611, 'en', 'img_dir_not_writeable', 'image', '', '<strong>Warning:</strong> cannot write to image directory <code>{imgdir}</code>.', '2025-05-24 14:33:23'),
(612, 'en', 'invalid_width_or_height', 'image', '', 'Invalid width or height.', '2025-05-24 14:33:23'),
(613, 'en', 'keep_square_pixels', 'image', '', 'Crop', '2025-05-24 14:33:23'),
(614, 'en', 'no_images_recorded', 'image', '', 'No images recorded.', '2025-05-24 14:33:23'),
(615, 'en', 'only_graphic_files_allowed', 'image', '', 'Only <strong>{formats}</strong> file types allowed.', '2025-05-24 14:33:23'),
(616, 'en', 'replace_image', 'image', '', 'Replace image', '2025-05-24 14:33:23'),
(617, 'en', 'search_images', 'image', '', 'Search images', '2025-05-24 14:33:23'),
(618, 'en', 'thumbnail_delete_failed', 'image', '', 'Thumbnail could not be completely deleted.', '2025-05-24 14:33:23'),
(619, 'en', 'thumbnail_deleted', 'image', '', 'Thumbnail deleted.', '2025-05-24 14:33:23'),
(620, 'en', 'thumbnail_not_saved', 'image', '', 'Thumbnail <strong>{id}</strong> not saved.', '2025-05-24 14:33:23'),
(621, 'en', 'thumbnail_saved', 'image', '', 'Thumbnail <strong>{id}</strong> saved.', '2025-05-24 14:33:23'),
(622, 'en', 'upload_image', 'image', '', 'Upload image', '2025-05-24 14:33:23'),
(623, 'en', 'upload_thumbnail', 'image', '', 'Upload thumbnail', '2025-05-24 14:33:23'),
(624, 'en', 'active_language', 'lang', '', 'Site language', '2025-05-24 14:33:23'),
(625, 'en', 'install_from_textpack', 'lang', '', 'Install from Textpack', '2025-05-24 14:33:23'),
(626, 'en', 'install_textpack', 'lang', '', 'Install Textpack', '2025-05-24 14:33:23'),
(627, 'en', 'language_count_user', 'lang', '', 'Users of this language: {num}.', '2025-05-24 14:33:23'),
(628, 'en', 'language_deleted', 'lang', '', 'Language <strong>{name}</strong> removed.', '2025-05-24 14:33:23'),
(629, 'en', 'language_installed', 'lang', '', 'Language <strong>{name}</strong> installed.', '2025-05-24 14:33:23'),
(630, 'en', 'language_not_installed', 'lang', '', 'Language <strong>{name}</strong> not installed.', '2025-05-24 14:33:23'),
(631, 'en', 'language_preamble', 'lang', '', '<strong>You can help us improve Textpattern!</strong> We welcome additional translations (and corrections to current translations) by our user community. Please visit <a href=\"https://textpattern.com/languages\" rel=\"external\" target=\"_blank\">Textpattern language translations <span class=\"ui-icon ui-icon-extlink\">(opens an external link in a new window)</span></a> for further details.', '2025-05-24 14:33:23'),
(632, 'en', 'language_updated', 'lang', '', 'Language <strong>{name}</strong> updated.', '2025-05-24 14:33:23'),
(633, 'en', 'locale_not_available_for_language', 'lang', '', 'No locale available for language <strong>{name}</strong>. Using default locale instead.', '2025-05-24 14:33:23'),
(634, 'en', 'textpack_strings_installed', 'lang', '', '{count} strings installed from Textpack.', '2025-05-24 14:33:23'),
(635, 'en', 'create_link', 'link', '', 'New link', '2025-05-24 14:33:23'),
(636, 'en', 'edit_link', 'link', '', 'Edit link', '2025-05-24 14:33:23'),
(637, 'en', 'links_deleted', 'link', '', 'Links deleted: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(638, 'en', 'link_created', 'link', '', 'Link <strong>{name}</strong> created.', '2025-05-24 14:33:23'),
(639, 'en', 'link_empty', 'link', '', 'Links should not be empty.', '2025-05-24 14:33:23'),
(640, 'en', 'link_saved', 'link', '', 'Link saved.', '2025-05-24 14:33:23'),
(641, 'en', 'link_save_failed', 'link', '', 'Link could not be saved.', '2025-05-24 14:33:23'),
(642, 'en', 'link_updated', 'link', '', 'Links updated: <strong>{name}</strong>.', '2025-05-24 14:33:23'),
(643, 'en', 'no_links_recorded', 'link', '', 'No links recorded.', '2025-05-24 14:33:23'),
(644, 'en', 'search_links', 'link', '', 'Search links', '2025-05-24 14:33:23'),
(645, 'en', 'articles_deleted', 'list', '', 'Articles deleted: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(646, 'en', 'articles_duplicated', 'list', '', 'Articles duplicated: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(647, 'en', 'articles_modified', 'list', '', 'Articles modified: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(648, 'en', 'no_articles_recorded', 'list', '', 'No articles recorded.', '2025-05-24 14:33:23'),
(649, 'en', 'search_articles', 'list', '', 'Search articles', '2025-05-24 14:33:23'),
(650, 'en', 'logs_deleted', 'log', '', 'Logs deleted: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(651, 'en', 'no_refers_recorded', 'log', '', 'No hits recorded.', '2025-05-24 14:33:23'),
(652, 'en', 'referrer', 'log', '', 'Referrer', '2025-05-24 14:33:23'),
(653, 'en', 'search_logs', 'log', '', 'Search logs', '2025-05-24 14:33:23'),
(654, 'en', 'all_pages', 'page', '', 'All pages', '2025-05-24 14:33:23'),
(655, 'en', 'create_page', 'page', '', 'New page', '2025-05-24 14:33:23'),
(656, 'en', 'page_already_exists', 'page', '', 'Page <strong>{name}</strong> already exists.', '2025-05-24 14:33:23'),
(657, 'en', 'page_code', 'page', '', 'Page code', '2025-05-24 14:33:23'),
(658, 'en', 'page_created', 'page', '', 'Pages created: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(659, 'en', 'page_deleted', 'page', '', 'Pages deleted: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(660, 'en', 'page_name', 'page', '', 'Page name', '2025-05-24 14:33:23'),
(661, 'en', 'page_name_invalid', 'page', '', 'Page name is invalid.', '2025-05-24 14:33:23'),
(662, 'en', 'page_save_failed', 'page', '', 'The page was not saved due to an error. Please try again.', '2025-05-24 14:33:23'),
(663, 'en', 'page_updated', 'page', '', 'Pages updated: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(664, 'en', 'page_used_by_section', 'page', '', 'Page <strong>{name}</strong> not deleted; used by {count} section(s).', '2025-05-24 14:33:23'),
(665, 'en', 'bad_plugin_code', 'plugin', '', 'Badly formed or empty plugin code.', '2025-05-24 14:33:23'),
(666, 'en', 'changeorder', 'plugin', '', 'Change order', '2025-05-24 14:33:23'),
(667, 'en', 'edit_plugin', 'plugin', '', 'Edit plugin <strong>{name}</strong>', '2025-05-24 14:33:23'),
(668, 'en', 'edit_plugins', 'plugin', '', 'Edit plugin', '2025-05-24 14:33:23'),
(669, 'en', 'install_plugin', 'plugin', '', 'Install plugin', '2025-05-24 14:33:23'),
(670, 'en', 'order', 'plugin', '', 'Order', '2025-05-24 14:33:23'),
(671, 'en', 'plugin', 'plugin', '', 'Plugin', '2025-05-24 14:33:23'),
(672, 'en', 'plugin_compression_unsupported', 'plugin', '', 'Plugin decompression is not supported by your server. Contact the plugin author for an uncompressed version.', '2025-05-24 14:33:23'),
(673, 'en', 'plugin_deleted', 'plugin', '', 'Plugins deleted: <strong>{name}</strong>.', '2025-05-24 14:33:23'),
(674, 'en', 'plugin_delete_entirely', 'plugin', '', 'Delete plugin from disk too', '2025-05-24 14:33:23'),
(675, 'en', 'plugin_dir_not_writeable', 'plugin', '', '<strong>Warning:</strong> cannot write to plugin directory <code>{plugindir}</code>.', '2025-05-24 14:33:23'),
(676, 'en', 'plugin_help', 'plugin', '', 'Plugin help', '2025-05-24 14:33:23'),
(677, 'en', 'plugin_installed', 'plugin', '', 'Plugin <strong>{name}</strong> installed.', '2025-05-24 14:33:23'),
(678, 'en', 'plugin_install_failed', 'plugin', '', 'Plugin <strong>{name}</strong> install failed.', '2025-05-24 14:33:23'),
(679, 'en', 'plugin_saved', 'plugin', '', 'Plugin <strong>{name}</strong> saved.', '2025-05-24 14:33:23'),
(680, 'en', 'plugin_updated', 'plugin', '', 'Plugins updated: <strong>{name}</strong>.', '2025-05-24 14:33:23'),
(681, 'en', 'previewing_plugin', 'plugin', '', 'Plugin preview', '2025-05-24 14:33:23'),
(682, 'en', 'search_plugins', 'plugin', '', 'Search plugins', '2025-05-24 14:33:23'),
(683, 'en', 'upload_plugin', 'plugin', '', 'Upload plugin', '2025-05-24 14:33:23'),
(684, 'en', 'verify_plugin', 'plugin', '', 'Verify plugin', '2025-05-24 14:33:23'),
(685, 'en', 'admin_side_plugins', 'prefs', '', 'Use admin-side plugins?', '2025-05-24 14:33:23'),
(686, 'en', 'allow_article_php_scripting', 'prefs', '', 'Allow PHP in articles?', '2025-05-24 14:33:23'),
(687, 'en', 'allow_form_override', 'prefs', '', 'Allow form override?', '2025-05-24 14:33:23'),
(688, 'en', 'allow_page_php_scripting', 'prefs', '', 'Allow PHP in pages?', '2025-05-24 14:33:23'),
(689, 'en', 'all_hits', 'prefs', '', 'All hits', '2025-05-24 14:33:23'),
(690, 'en', 'all_preferences', 'prefs', '', 'All preferences', '2025-05-24 14:33:23'),
(691, 'en', 'archive_dateformat', 'prefs', '', 'Archive date format', '2025-05-24 14:33:23'),
(692, 'en', 'articles_use_excerpts', 'prefs', '', 'Use excerpts on articles?', '2025-05-24 14:33:23'),
(693, 'en', 'attach_titles_to_permalinks', 'prefs', '', 'Attach titles to permalinks?', '2025-05-24 14:33:23'),
(694, 'en', 'category_subcategory', 'prefs', '', '/category/subcategory', '2025-05-24 14:33:23'),
(695, 'en', 'clean', 'prefs', '', '/clean/', '2025-05-24 14:33:23'),
(696, 'en', 'comments_are_ol', 'prefs', '', 'Present comments as a numbered list?', '2025-05-24 14:33:23'),
(697, 'en', 'comments_auto_append', 'prefs', '', 'Automatically append comments to articles?', '2025-05-24 14:33:23'),
(698, 'en', 'comments_dateformat', 'prefs', '', 'Comments date format', '2025-05-24 14:33:23'),
(699, 'en', 'comments_default_invite', 'prefs', '', 'Default comments invite', '2025-05-24 14:33:23'),
(700, 'en', 'comments_disabled_after', 'prefs', '', 'Comments disabled after', '2025-05-24 14:33:23'),
(701, 'en', 'comments_disallow_images', 'prefs', '', 'Allow commenter images in comments?', '2025-05-24 14:33:23'),
(702, 'en', 'comments_mode', 'prefs', '', 'Comments mode', '2025-05-24 14:33:23'),
(703, 'en', 'comments_moderate', 'prefs', '', 'Moderate comments?', '2025-05-24 14:33:23'),
(704, 'en', 'comments_on_default', 'prefs', '', 'Comments on by default?', '2025-05-24 14:33:23'),
(705, 'en', 'comments_require_email', 'prefs', '', 'Comments require commenter’s email address?', '2025-05-24 14:33:23'),
(706, 'en', 'comments_require_name', 'prefs', '', 'Comments require commenter’s name?', '2025-05-24 14:33:23'),
(707, 'en', 'comments_sendmail', 'prefs', '', 'Email comments to author?', '2025-05-24 14:33:23'),
(708, 'en', 'comments_use_fat_textile', 'prefs', '', 'Allow more Textile markup in comments?', '2025-05-24 14:33:23'),
(709, 'en', 'comment_means_site_updated', 'prefs', '', 'New comment means site updated?', '2025-05-24 14:33:23'),
(710, 'en', 'comment_nofollow', 'prefs', '', 'Apply <code>rel=\"nofollow\"</code> to comments?', '2025-05-24 14:33:23'),
(711, 'en', 'custom_10_set', 'prefs', '', 'Custom field 10 name', '2025-05-24 14:33:23'),
(712, 'en', 'custom_1_set', 'prefs', '', 'Custom field 1 name', '2025-05-24 14:33:23'),
(713, 'en', 'custom_2_set', 'prefs', '', 'Custom field 2 name', '2025-05-24 14:33:23'),
(714, 'en', 'custom_3_set', 'prefs', '', 'Custom field 3 name', '2025-05-24 14:33:23'),
(715, 'en', 'custom_4_set', 'prefs', '', 'Custom field 4 name', '2025-05-24 14:33:23'),
(716, 'en', 'custom_5_set', 'prefs', '', 'Custom field 5 name', '2025-05-24 14:33:23'),
(717, 'en', 'custom_6_set', 'prefs', '', 'Custom field 6 name', '2025-05-24 14:33:23'),
(718, 'en', 'custom_7_set', 'prefs', '', 'Custom field 7 name', '2025-05-24 14:33:23'),
(719, 'en', 'custom_8_set', 'prefs', '', 'Custom field 8 name', '2025-05-24 14:33:23'),
(720, 'en', 'custom_9_set', 'prefs', '', 'Custom field 9 name', '2025-05-24 14:33:23'),
(721, 'en', 'custom_form_types', 'prefs', '', 'Custom form template types', '2025-05-24 14:33:23'),
(722, 'en', 'default_event', 'prefs', '', 'Default panel', '2025-05-24 14:33:23'),
(723, 'en', 'default_publish_status', 'prefs', '', 'Default publishing status', '2025-05-24 14:33:23'),
(724, 'en', 'doctype', 'prefs', '', 'Doctype', '2025-05-24 14:33:23'),
(725, 'en', 'module_pophelp', 'prefs', '', 'Display admin-side inline help links', '2025-05-24 14:33:23'),
(726, 'en', 'enable_dev_preview', 'prefs', '', 'Enable development theme preview?', '2025-05-24 14:33:23'),
(727, 'en', 'enable_short_tags', 'prefs', '', 'Enable short tag support?', '2025-05-24 14:33:23'),
(728, 'en', 'enable_xmlrpc_server', 'prefs', '', 'Enable XML-RPC server?', '2025-05-24 14:33:23'),
(729, 'en', 'expire_logs_after', 'prefs', '', 'Logs expire after how many days?', '2025-05-24 14:33:23'),
(730, 'en', 'feeds', 'prefs', '', 'Feeds', '2025-05-24 14:33:23'),
(731, 'en', 'file_max_upload_size', 'prefs', '', 'Maximum file size of uploads (in bytes)', '2025-05-24 14:33:23'),
(732, 'en', 'ham', 'prefs', '', 'All but spam', '2025-05-24 14:33:23'),
(733, 'en', 'hours_days_ago', 'prefs', '', 'hours/days ago', '2025-05-24 14:33:23'),
(734, 'en', 'include_email_atom', 'prefs', '', 'Include email address in Atom feeds?', '2025-05-24 14:33:23'),
(735, 'en', 'logging', 'prefs', '', 'Logging', '2025-05-24 14:33:23'),
(736, 'en', 'logs_expire', 'prefs', '', 'Logs expire after how many days?', '2025-05-24 14:33:23'),
(737, 'en', 'markup_default', 'prefs', '', 'Default markup', '2025-05-24 14:33:23'),
(738, 'en', 'max_url_len', 'prefs', '', 'Maximum URL length (in characters)', '2025-05-24 14:33:23'),
(739, 'en', 'never_display_email', 'prefs', '', 'Hide commenter’s email address?', '2025-05-24 14:33:23'),
(740, 'en', 'no_preferences', 'prefs', '', 'No preferences available.', '2025-05-24 14:33:23'),
(741, 'en', 'override_emailcharset', 'prefs', '', 'Use ISO-8859-1 encoding in emails (default is UTF-8)?', '2025-05-24 14:33:23'),
(742, 'en', 'override_form_types', 'prefs', '', 'Override form types', '2025-05-24 14:33:23'),
(743, 'en', 'path_from_root', 'prefs', '', 'Sub-directory (if any)', '2025-05-24 14:33:23'),
(744, 'en', 'permlink_format', 'prefs', '', 'Permalink title URL pattern', '2025-05-24 14:33:23'),
(745, 'en', 'permlink_hyphenated', 'prefs', '', 'Hyphenated (title-like-this)', '2025-05-24 14:33:23'),
(746, 'en', 'permlink_intercapped', 'prefs', '', 'Intercapped (TitleLikeThis)', '2025-05-24 14:33:23'),
(747, 'en', 'plugin_cache_dir', 'prefs', '', 'Plugin cache directory path', '2025-05-24 14:33:23'),
(748, 'en', 'prefs', 'prefs', '', 'Prefs', '2025-05-24 14:33:23'),
(749, 'en', 'production_debug', 'prefs', '', 'Debugging', '2025-05-24 14:33:23'),
(750, 'en', 'production_live', 'prefs', '', 'Live', '2025-05-24 14:33:23'),
(751, 'en', 'production_status', 'prefs', '', 'Production status', '2025-05-24 14:33:23'),
(752, 'en', 'production_test', 'prefs', '', 'Testing', '2025-05-24 14:33:23'),
(753, 'en', 'publisher_email', 'prefs', '', 'Send login details from this email address', '2025-05-24 14:33:23'),
(754, 'en', 'publish_expired_articles', 'prefs', '', 'Publish expired articles?', '2025-05-24 14:33:23'),
(755, 'en', 'referrers_only', 'prefs', '', 'Referrers only', '2025-05-24 14:33:23'),
(756, 'en', 'rss_how_many', 'prefs', '', 'How many articles should be included in feeds?', '2025-05-24 14:33:23'),
(757, 'en', 'secondpass', 'prefs', '', 'Number of extra parser sweeps', '2025-05-24 14:33:23'),
(758, 'en', 'send_lastmod', 'prefs', '', 'Send \"Last-Modified\" header?', '2025-05-24 14:33:23'),
(759, 'en', 'show_comment_count_in_feed', 'prefs', '', 'Show comment count in feeds?', '2025-05-24 14:33:23'),
(760, 'en', 'smtp_from', 'prefs', '', 'SMTP envelope sender address', '2025-05-24 14:33:23'),
(761, 'en', 'spam_blacklists', 'prefs', '', 'Spam blocklists (comma-separated)', '2025-05-24 14:33:23'),
(762, 'en', 'syndicate_body_or_excerpt', 'prefs', '', 'Syndicate article excerpt only?', '2025-05-24 14:33:23'),
(763, 'en', 'timeoffset', 'prefs', '', 'Time offset (hours)', '2025-05-24 14:33:23'),
(764, 'en', 'txp_evaluate_functions', 'prefs', '', 'PHP functions enabled in <code>txp:evaluate</code>', '2025-05-24 14:33:23'),
(765, 'en', 'tz_timezone', 'prefs', '', 'Time zone', '2025-05-24 14:33:23'),
(766, 'en', 'up_to_date', 'prefs', '', 'Up-to-date', '2025-05-24 14:33:23'),
(767, 'en', 'url_mode', 'prefs', '', 'URL mode', '2025-05-24 14:33:23'),
(768, 'en', 'use_comments', 'prefs', '', 'Accept comments?', '2025-05-24 14:33:23'),
(769, 'en', 'use_mail_on_feeds_id', 'prefs', '', 'Use email address to construct feed ID (default is site URL)?', '2025-05-24 14:33:23'),
(770, 'en', 'use_plugins', 'prefs', '', 'Use plugins?', '2025-05-24 14:33:23'),
(771, 'en', '403_forbidden', 'public', '', 'Forbidden.', '2025-05-24 14:33:23'),
(772, 'en', '404_not_found', 'public', '', 'The requested resource was not found.', '2025-05-24 14:33:23'),
(773, 'en', '410_gone', 'public', '', 'The requested resource is no longer available.', '2025-05-24 14:33:23'),
(774, 'en', '500_internal_server_error', 'public', '', 'Internal server error.', '2025-05-24 14:33:23'),
(775, 'en', 'articles_found', 'public', '', 'articles found', '2025-05-24 14:33:23'),
(776, 'en', 'article_context', 'public', '', 'article', '2025-05-24 14:33:23'),
(777, 'en', 'article_found', 'public', '', 'article found', '2025-05-24 14:33:23'),
(778, 'en', 'atom_feed_title', 'public', '', 'Atom feed', '2025-05-24 14:33:23'),
(779, 'en', 'a_few_seconds', 'public', '', 'a few seconds', '2025-05-24 14:33:23'),
(780, 'en', 'comments_closed', 'public', '', 'Commenting is closed for this article.', '2025-05-24 14:33:23'),
(781, 'en', 'comments_on', 'public', '', 'Comments on', '2025-05-24 14:33:23'),
(782, 'en', 'comments_permlink', 'public', '', 'Permanent link', '2025-05-24 14:33:23'),
(783, 'en', 'comment_comment', 'public', '', 'Comment', '2025-05-24 14:33:23'),
(784, 'en', 'comment_duplicate', 'public', '', 'Duplicate comments are not accepted.', '2025-05-24 14:33:23'),
(785, 'en', 'comment_email', 'public', '', 'Email', '2025-05-24 14:33:23'),
(786, 'en', 'comment_email_required', 'public', '', 'Please enter a valid email address.', '2025-05-24 14:33:23'),
(787, 'en', 'comment_message', 'public', '', 'Message', '2025-05-24 14:33:23'),
(788, 'en', 'comment_moderated', 'public', '', 'Your comment is pending moderation. It will appear after it has been approved.', '2025-05-24 14:33:23'),
(789, 'en', 'comment_name', 'public', '', 'Name', '2025-05-24 14:33:23'),
(790, 'en', 'comment_name_required', 'public', '', 'Please enter your name.', '2025-05-24 14:33:23'),
(791, 'en', 'comment_posted', 'public', '', 'Thank you for adding your comment.', '2025-05-24 14:33:23'),
(792, 'en', 'comment_received', 'public', '', '{site} comment received: {title}', '2025-05-24 14:33:23'),
(793, 'en', 'comment_recorded', 'public', '', 'A comment on your post “{title}” was received.', '2025-05-24 14:33:23'),
(794, 'en', 'comment_required', 'public', '', 'Please enter a comment.', '2025-05-24 14:33:23'),
(795, 'en', 'comment_web', 'public', '', 'Website', '2025-05-24 14:33:23'),
(796, 'en', 'continue_reading', 'public', '', 'Continue reading', '2025-05-24 14:33:23'),
(797, 'en', 'day', 'public', '', 'day', '2025-05-24 14:33:23'),
(798, 'en', 'days', 'public', '', 'days', '2025-05-24 14:33:23'),
(799, 'en', 'enter_comment_here', 'public', '', '<strong>Enter your comment below.</strong> Fields marked <b class=\"required\" title=\"Required\">*</b> are required. You must preview your comment before submitting it.', '2025-05-24 14:33:23'),
(800, 'en', 'file_context', 'public', '', 'file', '2025-05-24 14:33:23'),
(801, 'en', 'hour', 'public', '', 'hour', '2025-05-24 14:33:23'),
(802, 'en', 'hours', 'public', '', 'hours', '2025-05-24 14:33:23'),
(803, 'en', 'image_context', 'public', '', 'image', '2025-05-24 14:33:23'),
(804, 'en', 'link_context', 'public', '', 'link', '2025-05-24 14:33:23'),
(805, 'en', 'main_content', 'public', '', 'Main content', '2025-05-24 14:33:23'),
(806, 'en', 'matching_search_request', 'public', '', 'matching your search request', '2025-05-24 14:33:23'),
(807, 'en', 'minute', 'public', '', 'minute', '2025-05-24 14:33:23'),
(808, 'en', 'minutes', 'public', '', 'minutes', '2025-05-24 14:33:23'),
(809, 'en', 'nopopup', 'public', '', 'current window', '2025-05-24 14:33:23'),
(810, 'en', 'no_comments', 'public', '', 'There are currently no comments on this article.', '2025-05-24 14:33:23'),
(811, 'en', 'no_search_matches', 'public', '', 'Sorry, no results found matching your search request', '2025-05-24 14:33:23'),
(812, 'en', 'permanent_link', 'public', '', 'Permanent link to this article', '2025-05-24 14:33:23'),
(813, 'en', 'popup', 'public', '', 'pop-up window', '2025-05-24 14:33:23'),
(814, 'en', 'press_preview_then_submit', 'public', '', 'The following is a preview of what your comment will look like. When you are happy with your comment, use the <strong><a href=\"#txpCommentSubmit\" title=\"Go to the submit button\">submit</a></strong> button.', '2025-05-24 14:33:23'),
(815, 'en', 'read_more', 'public', '', 'Read more', '2025-05-24 14:33:23'),
(816, 'en', 'rss_feed_title', 'public', '', 'RSS feed', '2025-05-24 14:33:23'),
(817, 'en', 'site_nav', 'public', '', 'Site navigation', '2025-05-24 14:33:23'),
(818, 'en', 'textile_help', 'public', '', 'Textile help', '2025-05-24 14:33:23'),
(819, 'en', 'too_common_search_term', 'public', '', 'It seems like you are looking for a very common search term, maybe try a more specific phrase than', '2025-05-24 14:33:23'),
(820, 'en', 'week', 'public', '', 'week', '2025-05-24 14:33:23'),
(821, 'en', 'weeks', 'public', '', 'weeks', '2025-05-24 14:33:23'),
(822, 'en', 'your_ip_is_blacklisted_by', 'public', '', 'Your IP address has been blocklisted by', '2025-05-24 14:33:23'),
(823, 'en', 'yyyy-mm', 'public', '', 'yyyy-mm', '2025-05-24 14:33:23'),
(824, 'en', 'article_count', 'section', '', 'Articles in this section: {num}.', '2025-05-24 14:33:23'),
(825, 'en', 'change_page_style', 'section', '', 'Change theme/page/style', '2025-05-24 14:33:23'),
(826, 'en', 'create_section', 'section', '', 'New section', '2025-05-24 14:33:23'),
(827, 'en', 'default_section_updated', 'section', '', 'Default section updated', '2025-05-24 14:33:23'),
(828, 'en', 'default_write_section', 'section', '', 'Default publishing section', '2025-05-24 14:33:23'),
(829, 'en', 'dev_theme', 'section', '', 'Development', '2025-05-24 14:33:23'),
(830, 'en', 'dev_to_live', 'section', '', 'Reset to live', '2025-05-24 14:33:23'),
(831, 'en', 'edit_default_section', 'section', '', 'Edit default section', '2025-05-24 14:33:23'),
(832, 'en', 'edit_section', 'section', '', 'Edit section', '2025-05-24 14:33:23'),
(833, 'en', 'include_in_search', 'section', '', 'Searchable?', '2025-05-24 14:33:23'),
(834, 'en', 'live_theme', 'section', '', 'Live', '2025-05-24 14:33:23'),
(835, 'en', 'live_to_dev', 'section', '', 'Deploy to live', '2025-05-24 14:33:23'),
(836, 'en', 'search_sections', 'section', '', 'Search sections', '2025-05-24 14:33:23'),
(837, 'en', 'section_created', 'section', '', 'Section <strong>{name}</strong> created.', '2025-05-24 14:33:23'),
(838, 'en', 'section_delete_failure', 'section', '', 'Could not delete section(s), articles are currently assigned: {name}.', '2025-05-24 14:33:23'),
(839, 'en', 'section_deleted', 'section', '', 'Sections deleted: <strong>{name}</strong>.', '2025-05-24 14:33:23'),
(840, 'en', 'section_head', 'section', '', 'Site sections', '2025-05-24 14:33:23'),
(841, 'en', 'section_longtitle', 'section', '', 'Section title', '2025-05-24 14:33:23'),
(842, 'en', 'section_name', 'section', '', 'Section name', '2025-05-24 14:33:23'),
(843, 'en', 'section_name_already_exists', 'section', '', 'Section <strong>{name}</strong> already exists.', '2025-05-24 14:33:23'),
(844, 'en', 'section_save_failed', 'section', '', 'The section was not saved due to an error. Please try again.', '2025-05-24 14:33:23'),
(845, 'en', 'section_updated', 'section', '', 'Sections updated: <strong>{name}</strong>.', '2025-05-24 14:33:23'),
(846, 'en', 'switch_dev_live', 'section', '', 'Developer preview', '2025-05-24 14:33:23'),
(847, 'en', 'syndicate', 'section', '', 'Syndicate articles?', '2025-05-24 14:33:23'),
(848, 'en', 'uses_page', 'section', '', 'Uses page', '2025-05-24 14:33:23'),
(849, 'en', 'uses_skin', 'section', '', 'Uses theme', '2025-05-24 14:33:23'),
(850, 'en', 'uses_style', 'section', '', 'Uses style', '2025-05-24 14:33:23'),
(851, 'en', 'assign_sections', 'skin', '', 'Assign sections', '2025-05-24 14:33:23'),
(852, 'en', 'create_skin', 'skin', '', 'New theme', '2025-05-24 14:33:23'),
(853, 'en', 'css_creation_failed', 'skin', '', 'Styles creation failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(854, 'en', 'css_deletion_failed', 'skin', '', 'Styles deletion failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(855, 'en', 'css_files_deletion_failed', 'skin', '', 'Styles files deletion failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(856, 'en', 'css_import_failed', 'skin', '', 'Styles import failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(857, 'en', 'css_name_unsafe', 'skin', '', 'Not exportable styles names for: <strong>{list}</strong>. Names must match the following regular expression: <code>^[a-z][a-z0-9_\\-\\.]{0,63}$</code>.', '2025-05-24 14:33:23'),
(858, 'en', 'css_not_found', 'skin', '', 'No style data found for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(859, 'en', 'css_update_failed', 'skin', '', 'Styles update failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(860, 'en', 'edit_skin', 'skin', '', 'Edit theme', '2025-05-24 14:33:23'),
(861, 'en', 'form_creation_failed', 'skin', '', 'Forms creation failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(862, 'en', 'form_deletion_failed', 'skin', '', 'Forms deletion failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(863, 'en', 'form_duplicate_failed', 'skin', '', 'Duplicated forms import failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(864, 'en', 'form_files_deletion_failed', 'skin', '', 'Forms files deletion failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(865, 'en', 'form_import_failed', 'skin', '', 'Forms import failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(866, 'en', 'form_name_unsafe', 'skin', '', 'Not exportable form names for: <strong>{list}</strong>. Names must match the following regular expression: <code>^[a-z][a-z0-9_\\-\\.]{0,63}$</code>.', '2025-05-24 14:33:23'),
(867, 'en', 'form_not_found', 'skin', '', 'No form data found for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(868, 'en', 'form_subdir_error', 'skin', '', 'Form types error for: <strong>{list}</strong>. These forms are used as default by tags and should use defined types.', '2025-05-24 14:33:23'),
(869, 'en', 'form_subdir_invalid', 'skin', '', 'Invalid form type for: <strong>{list}</strong>. Current valid types are: <code>article</code>, <code>category</code>, <code>comment</code>, <code>file</code>, <code>link</code>, <code>section</code> and <code>misc</code>. <code>misc</code> will be used by default.', '2025-05-24 14:33:23'),
(870, 'en', 'form_update_failed', 'skin', '', 'Forms update failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(871, 'en', 'no_skin_recorded', 'skin', '', 'No themes recorded.', '2025-05-24 14:33:23'),
(872, 'en', 'page_creation_failed', 'skin', '', 'Pages creation failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(873, 'en', 'page_deletion_failed', 'skin', '', 'Pages deletion failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(874, 'en', 'page_files_deletion_failed', 'skin', '', 'Pages files deletion failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(875, 'en', 'page_import_failed', 'skin', '', 'Pages import failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(876, 'en', 'page_name_unsafe', 'skin', '', 'Not exportable page names for: <strong>{list}</strong>. Names must match the following regular expression: <code>^[a-z][a-z0-9_\\-\\.]{0,63}$</code>.', '2025-05-24 14:33:23'),
(877, 'en', 'page_not_found', 'skin', '', 'No page data found for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(878, 'en', 'page_update_failed', 'skin', '', 'Pages update failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(879, 'en', 'search_skins', 'skin', '', 'Search themes', '2025-05-24 14:33:23'),
(880, 'en', 'skin_already_exists', 'skin', '', 'Themes already exist in the database or in the themes directory and may cause conflicts: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(881, 'en', 'skin_author', 'skin', '', 'Theme author', '2025-05-24 14:33:23'),
(882, 'en', 'skin_author_uri', 'skin', '', 'Theme website', '2025-05-24 14:33:23'),
(883, 'en', 'skin_count_css', 'skin', '', 'Styles in this theme: {num}.', '2025-05-24 14:33:23'),
(884, 'en', 'skin_count_form', 'skin', '', 'Forms in this theme: {num}.', '2025-05-24 14:33:23'),
(885, 'en', 'skin_count_page', 'skin', '', 'Pages in this theme: {num}.', '2025-05-24 14:33:23'),
(886, 'en', 'skin_count_section', 'skin', '', 'Sections used by this theme: {num}.', '2025-05-24 14:33:23'),
(887, 'en', 'skin_created', 'skin', '', 'Themes created: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(888, 'en', 'skin_creation_failed', 'skin', '', 'Themes creation failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(889, 'en', 'skin_delete_entirely', 'skin', '', 'Delete theme templates from disk too', '2025-05-24 14:33:23'),
(890, 'en', 'skin_delete_from_database', 'skin', '', 'Delete unused templates from database on import', '2025-05-24 14:33:23'),
(891, 'en', 'skin_delete_from_disk', 'skin', '', 'Delete unused templates from disk on export', '2025-05-24 14:33:23'),
(892, 'en', 'skin_deleted', 'skin', '', 'Themes deleted: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(893, 'en', 'skin_deletion_failed', 'skin', '', 'Theme(s) deletion failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(894, 'en', 'skin_description', 'skin', '', 'Theme description', '2025-05-24 14:33:23'),
(895, 'en', 'skin_export_failed', 'skin', '', 'Themes export failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(896, 'en', 'skin_exported', 'skin', '', 'Themes exported: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(897, 'en', 'skin_files_deletion_failed', 'skin', '', 'Theme files deletion failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(898, 'en', 'skin_import_failed', 'skin', '', 'Themes import failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(899, 'en', 'skin_imported', 'skin', '', 'Themes imported: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(900, 'en', 'skin_in_use', 'skin', '', 'Deletion aborted for themes used by sections: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(901, 'en', 'skin_name', 'skin', '', 'Theme name', '2025-05-24 14:33:23'),
(902, 'en', 'skin_name_invalid', 'skin', '', 'Theme name <strong>{name}</strong> invalid.', '2025-05-24 14:33:23'),
(903, 'en', 'skin_name_unsafe', 'skin', '', 'Not exportable theme names for: <strong>{list}</strong>. Names must match the following regular expression: <code>^[a-z][a-z0-9_\\-\\.]{0,63}$</code>.', '2025-05-24 14:33:23'),
(904, 'en', 'skin_not_found', 'skin', '', 'No theme data found for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(905, 'en', 'skin_related_sections_update_failed', 'skin', '', 'Themes related sections update failed for: <strong>{list}</strong>. Please visit the Sections panel to update manually.', '2025-05-24 14:33:23'),
(906, 'en', 'skin_title', 'skin', '', 'Theme title', '2025-05-24 14:33:23'),
(907, 'en', 'skin_unknown', 'skin', '', 'Unknown themes: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(908, 'en', 'skin_update_failed', 'skin', '', 'Themes update failed for: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(909, 'en', 'skin_updated', 'skin', '', 'Themes updated: <strong>{list}</strong>.', '2025-05-24 14:33:23'),
(910, 'en', 'skin_version', 'skin', '', 'Theme version', '2025-05-24 14:33:23'),
(911, 'en', 'active_class', 'tag', '', 'CSS class for active list item', '2025-05-24 14:33:23'),
(912, 'en', 'allowoverride', 'tag', '', 'Allow form to be overridden?', '2025-05-24 14:33:23'),
(913, 'en', 'breadcrumb_linked', 'tag', '', 'Link breadcrumbs?', '2025-05-24 14:33:23'),
(914, 'en', 'breadcrumb_separator', 'tag', '', 'Breadcrumbs separator', '2025-05-24 14:33:23'),
(915, 'en', 'break', 'tag', '', 'List break tag', '2025-05-24 14:33:23'),
(916, 'en', 'breakclass', 'tag', '', 'CSS class for list break tag', '2025-05-24 14:33:23'),
(917, 'en', 'build', 'tag', '', 'Build tag', '2025-05-24 14:33:23'),
(918, 'en', 'button_text', 'tag', '', 'Button text', '2025-05-24 14:33:23'),
(919, 'en', 'category_list_section', 'tag', '', 'Link to specific section?', '2025-05-24 14:33:23'),
(920, 'en', 'category_tags', 'tag', '', 'Category', '2025-05-24 14:33:23'),
(921, 'en', 'class', 'tag', '', 'CSS class', '2025-05-24 14:33:23'),
(922, 'en', 'comments_form', 'tag', '', 'Comments form', '2025-05-24 14:33:23'),
(923, 'en', 'comment_details', 'tag', '', 'Comment details', '2025-05-24 14:33:23'),
(924, 'en', 'comment_form', 'tag', '', 'Comment form', '2025-05-24 14:33:23'),
(925, 'en', 'comment_name_link', 'tag', '', 'Link to commenter’s email address/website?', '2025-05-24 14:33:23'),
(926, 'en', 'decimals', 'tag', '', 'Display # numbers after the decimal point', '2025-05-24 14:33:23'),
(927, 'en', 'default_title', 'tag', '', 'Text to use for default section link', '2025-05-24 14:33:23'),
(928, 'en', 'depth', 'tag', '', 'Depth', '2025-05-24 14:33:23'),
(929, 'en', 'escape', 'tag', '', 'Escape', '2025-05-24 14:33:23'),
(930, 'en', 'exclude', 'tag', '', 'Exclude', '2025-05-24 14:33:23'),
(931, 'en', 'filename', 'tag', '', 'Name', '2025-05-24 14:33:23'),
(932, 'en', 'file_download_tags', 'tag', '', 'File downloads', '2025-05-24 14:33:23'),
(933, 'en', 'flavor', 'tag', '', 'Syndication format', '2025-05-24 14:33:23'),
(934, 'en', 'format', 'tag', '', 'Format', '2025-05-24 14:33:23'),
(935, 'en', 'gmt', 'tag', '', 'Format according to <abbr title=\"Greenwich Mean Time\">GMT</abbr> time?', '2025-05-24 14:33:23'),
(936, 'en', 'has_excerpt', 'tag', '', 'Has excerpt', '2025-05-24 14:33:23'),
(937, 'en', 'hilight', 'tag', '', 'Highlight tag', '2025-05-24 14:33:23'),
(938, 'en', 'hilight_limit', 'tag', '', 'Highlight how many instances?', '2025-05-24 14:33:23'),
(939, 'en', 'html_id', 'tag', '', 'HTML <code>id</code> attribute', '2025-05-24 14:33:23'),
(940, 'en', 'include_default', 'tag', '', 'Include default section?', '2025-05-24 14:33:23'),
(941, 'en', 'inline_style', 'tag', '', 'Inline style (CSS)', '2025-05-24 14:33:23'),
(942, 'en', 'input_size', 'tag', '', 'Input size', '2025-05-24 14:33:23'),
(943, 'en', 'labeltag', 'tag', '', 'Label tag', '2025-05-24 14:33:23'),
(944, 'en', 'limit', 'tag', '', 'Display how many?', '2025-05-24 14:33:23'),
(945, 'en', 'linkclass', 'tag', '', 'CSS class for links', '2025-05-24 14:33:23'),
(946, 'en', 'link_text', 'tag', '', 'Link text', '2025-05-24 14:33:23'),
(947, 'en', 'link_to_this_author', 'tag', '', 'Link to a list of other articles by this author?', '2025-05-24 14:33:23'),
(948, 'en', 'link_to_this_category', 'tag', '', 'Link to a list of other articles in this category?', '2025-05-24 14:33:23'),
(949, 'en', 'link_to_this_section', 'tag', '', 'Link to a list of other articles in this section?', '2025-05-24 14:33:23'),
(950, 'en', 'listform', 'tag', '', 'List form', '2025-05-24 14:33:23'),
(951, 'en', 'match_type', 'tag', '', 'Match type', '2025-05-24 14:33:23'),
(952, 'en', 'media', 'tag', '', 'HTML <code>media</code> attribute', '2025-05-24 14:33:23'),
(953, 'en', 'msgcols', 'tag', '', 'Message textarea columns', '2025-05-24 14:33:23'),
(954, 'en', 'msgrows', 'tag', '', 'Message textarea rows', '2025-05-24 14:33:23'),
(955, 'en', 'no_categories_available', 'tag', '', 'No categories available.', '2025-05-24 14:33:23'),
(956, 'en', 'no_forms_available', 'tag', '', 'No forms available.', '2025-05-24 14:33:23'),
(957, 'en', 'offset', 'tag', '', 'Skip', '2025-05-24 14:33:23'),
(958, 'en', 'page_article_hed', 'tag', '', 'Article output', '2025-05-24 14:33:23'),
(959, 'en', 'page_article_nav_hed', 'tag', '', 'Article navigation', '2025-05-24 14:33:23'),
(960, 'en', 'page_file_hed', 'tag', '', 'File downloads', '2025-05-24 14:33:23'),
(961, 'en', 'page_misc_hed', 'tag', '', 'Miscellaneous', '2025-05-24 14:33:23'),
(962, 'en', 'page_nav_hed', 'tag', '', 'Site navigation', '2025-05-24 14:33:23'),
(963, 'en', 'page_xml_hed', 'tag', '', 'XML feeds', '2025-05-24 14:33:23'),
(964, 'en', 'pageby', 'tag', '', 'Paginate by', '2025-05-24 14:33:23'),
(965, 'en', 'pgonly', 'tag', '', 'Count articles, but show nothing', '2025-05-24 14:33:23'),
(966, 'en', 'random', 'tag', '', 'Random', '2025-05-24 14:33:23'),
(967, 'en', 'rel', 'tag', '', 'HTML <code>rel</code> attribute', '2025-05-24 14:33:23'),
(968, 'en', 'searchall', 'tag', '', 'Search all sections?', '2025-05-24 14:33:23'),
(969, 'en', 'searchsticky', 'tag', '', 'Search sticky articles?', '2025-05-24 14:33:23'),
(970, 'en', 'search_input_form', 'tag', '', 'Search input', '2025-05-24 14:33:23'),
(971, 'en', 'search_results_form', 'tag', '', 'Search results', '2025-05-24 14:33:23'),
(972, 'en', 'section_tags', 'tag', '', 'Section', '2025-05-24 14:33:23'),
(973, 'en', 'separator', 'tag', '', 'Separator', '2025-05-24 14:33:23'),
(974, 'en', 'showalways', 'tag', '', 'Show always', '2025-05-24 14:33:23'),
(975, 'en', 'showcount', 'tag', '', 'Show count?', '2025-05-24 14:33:23'),
(976, 'en', 'size_format', 'tag', '', 'Size format', '2025-05-24 14:33:23'),
(977, 'en', 'sort', 'tag', '', 'Sort by', '2025-05-24 14:33:23'),
(978, 'en', 'tag', 'tag', '', 'Tag', '2025-05-24 14:33:23'),
(979, 'en', 'tag_article', 'tag', '', 'Articles (single or list)', '2025-05-24 14:33:23'),
(980, 'en', 'tag_article_custom', 'tag', '', 'Articles (custom list)', '2025-05-24 14:33:23'),
(981, 'en', 'tag_article_image', 'tag', '', 'Article image', '2025-05-24 14:33:23'),
(982, 'en', 'tag_author', 'tag', '', 'Author', '2025-05-24 14:33:23'),
(983, 'en', 'tag_body', 'tag', '', 'Body', '2025-05-24 14:33:23'),
(984, 'en', 'tag_body_excerpt', 'tag', '', 'Body excerpt', '2025-05-24 14:33:23'),
(985, 'en', 'tag_breadcrumb', 'tag', '', 'Breadcrumb', '2025-05-24 14:33:23'),
(986, 'en', 'tag_category', 'tag', '', 'Category', '2025-05-24 14:33:23'),
(987, 'en', 'tag_category1', 'tag', '', 'Category 1', '2025-05-24 14:33:23'),
(988, 'en', 'tag_category2', 'tag', '', 'Category 2', '2025-05-24 14:33:23'),
(989, 'en', 'tag_category_list', 'tag', '', 'Category list', '2025-05-24 14:33:23'),
(990, 'en', 'tag_comments', 'tag', '', 'Comments', '2025-05-24 14:33:23'),
(991, 'en', 'tag_comments_form', 'tag', '', 'Comments form', '2025-05-24 14:33:23'),
(992, 'en', 'tag_comments_invite', 'tag', '', 'Comments invite', '2025-05-24 14:33:23'),
(993, 'en', 'tag_comments_preview', 'tag', '', 'Comments preview', '2025-05-24 14:33:23'),
(994, 'en', 'tag_comment_anchor', 'tag', '', 'Comment anchor', '2025-05-24 14:33:23'),
(995, 'en', 'tag_comment_email', 'tag', '', 'Comment email', '2025-05-24 14:33:23'),
(996, 'en', 'tag_comment_email_input', 'tag', '', 'Comment email input', '2025-05-24 14:33:23'),
(997, 'en', 'tag_comment_id', 'tag', '', 'Comment ID', '2025-05-24 14:33:23'),
(998, 'en', 'tag_comment_message', 'tag', '', 'Comment message', '2025-05-24 14:33:23'),
(999, 'en', 'tag_comment_message_input', 'tag', '', 'Comment message input', '2025-05-24 14:33:23'),
(1000, 'en', 'tag_comment_name', 'tag', '', 'Comment name', '2025-05-24 14:33:23'),
(1001, 'en', 'tag_comment_name_input', 'tag', '', 'Comment name input', '2025-05-24 14:33:23'),
(1002, 'en', 'tag_comment_permlink', 'tag', '', 'Comment permanent link', '2025-05-24 14:33:23'),
(1003, 'en', 'tag_comment_preview', 'tag', '', 'Comment preview button', '2025-05-24 14:33:23'),
(1004, 'en', 'tag_comment_remember', 'tag', '', 'Remember details checkbox', '2025-05-24 14:33:23'),
(1005, 'en', 'tag_comment_submit', 'tag', '', 'Comment submit button', '2025-05-24 14:33:23'),
(1006, 'en', 'tag_comment_time', 'tag', '', 'Comment time', '2025-05-24 14:33:23'),
(1007, 'en', 'tag_comment_web', 'tag', '', 'Comment website', '2025-05-24 14:33:23'),
(1008, 'en', 'tag_comment_web_input', 'tag', '', 'Comment website input', '2025-05-24 14:33:23'),
(1009, 'en', 'tag_css', 'tag', '', 'CSS link (<code>head</code>)', '2025-05-24 14:33:23'),
(1010, 'en', 'tag_email', 'tag', '', 'Email link (spam-resistant)', '2025-05-24 14:33:23'),
(1011, 'en', 'tag_excerpt', 'tag', '', 'Excerpt', '2025-05-24 14:33:23'),
(1012, 'en', 'tag_feed_link', 'tag', '', 'Articles feed link', '2025-05-24 14:33:23'),
(1013, 'en', 'tag_file_download', 'tag', '', 'File download', '2025-05-24 14:33:23'),
(1014, 'en', 'tag_file_download_category', 'tag', '', 'File category', '2025-05-24 14:33:23'),
(1015, 'en', 'tag_file_download_created', 'tag', '', 'File created time', '2025-05-24 14:33:23'),
(1016, 'en', 'tag_file_download_description', 'tag', '', 'File description', '2025-05-24 14:33:23'),
(1017, 'en', 'tag_file_download_downloads', 'tag', '', 'File download count', '2025-05-24 14:33:23'),
(1018, 'en', 'tag_file_download_id', 'tag', '', 'File ID#', '2025-05-24 14:33:23'),
(1019, 'en', 'tag_file_download_link', 'tag', '', 'File download link', '2025-05-24 14:33:23'),
(1020, 'en', 'tag_file_download_list', 'tag', '', 'File download list', '2025-05-24 14:33:23'),
(1021, 'en', 'tag_file_download_modified', 'tag', '', 'File modified time', '2025-05-24 14:33:23'),
(1022, 'en', 'tag_file_download_name', 'tag', '', 'File name', '2025-05-24 14:33:23'),
(1023, 'en', 'tag_file_download_size', 'tag', '', 'File size', '2025-05-24 14:33:23'),
(1024, 'en', 'tag_home', 'tag', '', 'Home', '2025-05-24 14:33:23'),
(1025, 'en', 'tag_if_category', 'tag', '', 'If category', '2025-05-24 14:33:23'),
(1026, 'en', 'tag_if_section', 'tag', '', 'If section', '2025-05-24 14:33:23'),
(1027, 'en', 'tag_image', 'tag', '', 'Image', '2025-05-24 14:33:23'),
(1028, 'en', 'tag_lang', 'tag', '', 'Language', '2025-05-24 14:33:23'),
(1029, 'en', 'tag_link', 'tag', '', 'Link', '2025-05-24 14:33:23'),
(1030, 'en', 'tag_linkdesctitle', 'tag', '', 'Link, title=description', '2025-05-24 14:33:23'),
(1031, 'en', 'tag_linklist', 'tag', '', 'Links list', '2025-05-24 14:33:23'),
(1032, 'en', 'tag_link_category', 'tag', '', 'Link category', '2025-05-24 14:33:23'),
(1033, 'en', 'tag_link_date', 'tag', '', 'Link date', '2025-05-24 14:33:23'),
(1034, 'en', 'tag_link_description', 'tag', '', 'Link description', '2025-05-24 14:33:23'),
(1035, 'en', 'tag_link_feed_link', 'tag', '', 'Links feed link', '2025-05-24 14:33:23'),
(1036, 'en', 'tag_link_name', 'tag', '', 'Link name', '2025-05-24 14:33:23'),
(1037, 'en', 'tag_link_text', 'tag', '', 'Link name', '2025-05-24 14:33:23'),
(1038, 'en', 'tag_link_to_home', 'tag', '', 'Homepage link', '2025-05-24 14:33:23'),
(1039, 'en', 'tag_link_to_next', 'tag', '', 'Next article link', '2025-05-24 14:33:23'),
(1040, 'en', 'tag_link_to_prev', 'tag', '', 'Previous article link', '2025-05-24 14:33:23'),
(1041, 'en', 'tag_name', 'tag', '', 'Commenter name', '2025-05-24 14:33:23'),
(1042, 'en', 'tag_newer', 'tag', '', 'Newer articles link', '2025-05-24 14:33:23'),
(1043, 'en', 'tag_next_article', 'tag', '', 'Next article', '2025-05-24 14:33:23'),
(1044, 'en', 'tag_next_title', 'tag', '', 'Next article title', '2025-05-24 14:33:23'),
(1045, 'en', 'tag_older', 'tag', '', 'Older articles link', '2025-05-24 14:33:23'),
(1046, 'en', 'tag_output_form', 'tag', '', 'Output form', '2025-05-24 14:33:23'),
(1047, 'en', 'tag_page_title', 'tag', '', 'Page title', '2025-05-24 14:33:23'),
(1048, 'en', 'tag_password_protect', 'tag', '', 'Password protection', '2025-05-24 14:33:23'),
(1049, 'en', 'tag_permlink', 'tag', '', 'Permanent link', '2025-05-24 14:33:23'),
(1050, 'en', 'tag_popup', 'tag', '', 'Pop-up list', '2025-05-24 14:33:23'),
(1051, 'en', 'tag_posted', 'tag', '', 'Posted', '2025-05-24 14:33:23'),
(1052, 'en', 'tag_prev_article', 'tag', '', 'Previous article', '2025-05-24 14:33:23'),
(1053, 'en', 'tag_prev_title', 'tag', '', 'Previous article title', '2025-05-24 14:33:23'),
(1054, 'en', 'tag_recent_articles', 'tag', '', 'Recent articles', '2025-05-24 14:33:23'),
(1055, 'en', 'tag_recent_comments', 'tag', '', 'Recent comments', '2025-05-24 14:33:23'),
(1056, 'en', 'tag_related_articles', 'tag', '', 'Related articles', '2025-05-24 14:33:23'),
(1057, 'en', 'tag_search_input', 'tag', '', 'Search input form', '2025-05-24 14:33:23'),
(1058, 'en', 'tag_search_result_date', 'tag', '', 'Search result date', '2025-05-24 14:33:23'),
(1059, 'en', 'tag_search_result_excerpt', 'tag', '', 'Search result excerpt', '2025-05-24 14:33:23'),
(1060, 'en', 'tag_search_result_title', 'tag', '', 'Search result title', '2025-05-24 14:33:23'),
(1061, 'en', 'tag_search_result_url', 'tag', '', 'Search result URL', '2025-05-24 14:33:23'),
(1062, 'en', 'tag_section', 'tag', '', 'Section', '2025-05-24 14:33:23'),
(1063, 'en', 'tag_section_list', 'tag', '', 'Section list', '2025-05-24 14:33:23'),
(1064, 'en', 'tag_site_name', 'tag', '', 'Site name', '2025-05-24 14:33:23'),
(1065, 'en', 'tag_site_slogan', 'tag', '', 'Site slogan', '2025-05-24 14:33:23'),
(1066, 'en', 'tag_title', 'tag', '', 'Title', '2025-05-24 14:33:23'),
(1067, 'en', 'textonly', 'tag', '', 'Text only?', '2025-05-24 14:33:23'),
(1068, 'en', 'this_section', 'tag', '', 'Link to current section?', '2025-05-24 14:33:23'),
(1069, 'en', 'time_any', 'tag', '', 'Any', '2025-05-24 14:33:23');
INSERT INTO `txp_lang` (`id`, `lang`, `name`, `event`, `owner`, `data`, `lastmod`) VALUES
(1070, 'en', 'time_format', 'tag', '', 'Time format string', '2025-05-24 14:33:23'),
(1071, 'en', 'time_future', 'tag', '', 'Future', '2025-05-24 14:33:23'),
(1072, 'en', 'time_past', 'tag', '', 'Past', '2025-05-24 14:33:23'),
(1073, 'en', 'title_separator', 'tag', '', 'Individual article and site name separator', '2025-05-24 14:33:23'),
(1074, 'en', 'tooltip', 'tag', '', 'Link tooltip', '2025-05-24 14:33:23'),
(1075, 'en', 'use_thumbnail', 'tag', '', 'Use thumbnail?', '2025-05-24 14:33:23'),
(1076, 'en', 'wraptag', 'tag', '', 'Wrap tag', '2025-05-24 14:33:23');

-- --------------------------------------------------------

--
-- Table structure for table `txp_link`
--

CREATE TABLE `txp_link` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `category` varchar(64) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `linkname` varchar(255) NOT NULL DEFAULT '',
  `linksort` varchar(128) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `author` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `txp_link`
--

INSERT INTO `txp_link` (`id`, `date`, `category`, `url`, `linkname`, `linksort`, `description`, `author`) VALUES
(1, '2025-05-24 16:33:23', 'textpattern', 'https://textpattern.com/', 'Textpattern website', '10', '', ''),
(2, '2025-05-24 16:33:23', 'textpattern', 'https://docs.textpattern.com/', 'Textpattern user documentation', '20', '', ''),
(3, '2025-05-24 16:33:23', 'textpattern', 'https://textpattern.com/github', 'Textpattern on GitHub', '30', '', ''),
(4, '2025-05-24 16:33:23', 'textpattern', 'https://textpattern.com/@textpattern', 'Textpattern on Twitter', '40', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `txp_log`
--

CREATE TABLE `txp_log` (
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `page` varchar(255) NOT NULL DEFAULT '',
  `refer` mediumtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 200,
  `method` varchar(16) NOT NULL DEFAULT 'GET'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `txp_page`
--

CREATE TABLE `txp_page` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `user_html` text NOT NULL,
  `skin` varchar(63) NOT NULL DEFAULT 'default',
  `lastmod` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `txp_page`
--

INSERT INTO `txp_page` (`name`, `user_html`, `skin`, `lastmod`) VALUES
('archive', '<!DOCTYPE html>\n<html lang=\"<txp:lang />\" dir=\"<txp:text item=\"lang_dir\" />\">\n\n<head>\n    <meta charset=\"utf-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, viewport-fit=cover\">\n    <title><txp:page_title /></title>\n\n    <!-- CSS -->\n    <txp:css format=\"link\" media=\"\" />\n    <!-- ...or you can use (faster) external CSS files e.g. <link rel=\"stylesheet\" href=\"<txp:page_url type=\"theme_path\" />/styles/default.css\"> -->\n\n    <meta name=\"generator\" content=\"Textpattern CMS\">\n\n    <txp:if_search>\n        <meta name=\"robots\" content=\"none\">\n    <txp:else />\n        <txp:if_author>\n            <meta name=\"robots\" content=\"noindex, follow\">\n        <txp:else />\n            <txp:meta_description />\n            <txp:if_article_list>\n                <txp:variable name=\"page\" value=\'<txp:page_url type=\"pg\" />\' />\n                <txp:if_variable name=\"page\" value=\"1\">\n                    <meta name=\"robots\" content=\"index, follow\">\n                    <link rel=\"canonical\" href=\"<txp:section url />\">\n                    <script type=\"application/ld+json\">\n                        {\n                            \"@context\": \"https://schema.org\",\n                            \"@type\": \"Blog\",\n                            \"headline\": \"<txp:section title escape=\"json\" />\",\n                            <txp:if_description>\"description\": \"<txp:meta_description format=\"\" escape=\"json\" />\",</txp:if_description>\n                            \"url\": \"<txp:section url escape=\"json\" />\"\n                        }\n                    </script>\n                <txp:else />\n                    <meta name=\"robots\" content=\"noindex, follow\">\n                </txp:if_variable>\n            <txp:else />\n                <txp:meta_keywords separator=\",\" />\n                <txp:meta_author title />\n                <meta name=\"robots\" content=\"<txp:if_expires>unavailable_after: <txp:expires gmt format=\"%d-%b-%y %T\" /> GMT<txp:else />index, follow</txp:if_expires>\">\n                <link rel=\"canonical\" href=\"<txp:permlink />\">\n                <meta property=\"og:site_name\" content=\"<txp:site_name />\">\n                <meta property=\"og:type\" content=\"article\">\n                <meta property=\"og:title\" content=\"<txp:title />\">\n                <txp:if_description><meta property=\"og:description\" content=\"<txp:meta_description format=\"\" />\"></txp:if_description>\n                <meta property=\"og:url\" content=\"<txp:permlink />\">\n                <txp:if_article_image>\n                    <txp:images limit=\"1\">\n                        <meta property=\"og:image\" content=\"<txp:image_url />\">\n                        <meta property=\"og:image:width\" content=\"<txp:image_info type=\"w\" />\">\n                        <meta property=\"og:image:height\" content=\"<txp:image_info type=\"h\" />\">\n                        <meta property=\"og:image:alt\" content=\"<txp:image_info type=\"alt\" />\">\n                    </txp:images>\n                </txp:if_article_image>\n                <script type=\"application/ld+json\">\n                    {\n                        \"@context\": \"https://schema.org\",\n                        \"@type\": \"Blog\",\n                        \"blogPost\": [{\n                            \"@type\": \"BlogPosting\",\n                            \"headline\": \"<txp:title escape=\"json\" />\",\n                            <txp:if_description>\"description\": \"<txp:meta_description format=\"\" escape=\"json\" />\",</txp:if_description>\n                            \"url\": \"<txp:permlink escape=\"json\" />\"\n                        }]\n                    }\n                </script>\n            </txp:if_article_list>\n        </txp:if_author>\n    </txp:if_search>\n\n    <!-- content feeds -->\n    <txp:feed_link flavor=\"atom\" format=\"link\" label=\"Atom\" />\n    <txp:feed_link flavor=\"rss\" format=\"link\" label=\"RSS\" />\n</head>\n\n<txp:if_search>\n    <body class=\"search-page\" itemscope itemtype=\"https://schema.org/SearchResultsPage\">\n<txp:else />\n    <txp:if_article_list>\n        <body class=\"<txp:section />-page\" itemscope itemtype=\"https://schema.org/CollectionPage\">\n    <txp:else />\n        <body class=\"<txp:section />-page\" itemscope itemtype=\"https://schema.org/WebPage\">\n    </txp:if_article_list>\n</txp:if_search>\n\n    <txp:output_form form=\"body_header\" />\n\n    <div class=\"wrapper\">\n        <div class=\"container\">\n\n            <!-- Main content -->\n            <main id=\"main\" aria-label=\"<txp:text item=\"main_content\" />\" itemscope itemtype=\"https://schema.org/Blog\">\n\n                <!-- is this the search result page? also omits the pagination links below (uses pagination format within search_display.txp instead) -->\n                <txp:if_search>\n                    <txp:output_form form=\"search_display\" />\n\n                <txp:else />\n                    <txp:if_article_list>\n\n                        <h1 itemprop=\"name\"><txp:section title /></h1>\n                        <txp:article class=\"article-list\" form=\"article_listing\" limit=\"10\" wraptag=\"ul\" />\n                        <!-- ...or if you want to list all articles from all sections instead, then replace txp:article with txp:article_custom -->\n\n                        <!-- add pagination links to foot of article listings if there are more articles available -->\n                        <txp:evaluate test=\"newer,older\">\n                            <nav class=\"paginator\" aria-label=\"<txp:text item=\"page_nav\" />\">\n                                <txp:newer rel=\"prev\">\n                                    <txp:text item=\"newer\" />\n                                </txp:newer>\n                                <txp:older rel=\"next\">\n                                    <txp:text item=\"older\" />\n                                </txp:older>\n                            </nav>\n                        </txp:evaluate>\n\n                    <txp:else />\n                        <txp:article status />\n\n                        <!-- add pagination links to foot of article if there are more articles available -->\n                        <txp:evaluate test=\"link_to_prev,link_to_next\">\n                            <nav class=\"paginator\" aria-label=\"<txp:text item=\"page_nav\" />\">\n                                <txp:link_to_prev>\n                                    <txp:text item=\"prev\" />\n                                </txp:link_to_prev>\n                                <txp:link_to_next>\n                                    <txp:text item=\"next\" />\n                                </txp:link_to_next>\n                            </nav>\n                        </txp:evaluate>\n                    </txp:if_article_list>\n                </txp:if_search>\n\n            </main>\n\n            <txp:output_form form=\"body_aside\" />\n\n        </div> <!-- /.container -->\n    </div> <!-- /.wrapper -->\n\n    <txp:output_form form=\"body_footer\" />\n\n</body>\n</html>', 'four-point-eight', NULL),
('default', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <link rel=\"stylesheet\" href=\"<txp:page_url type=\"theme_path\" />/styles/cyber.css\">\r\n    <meta charset=\"UTF-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>SaF56cyber Hub</title>\r\n</head>\r\n<body >\r\n    <!-- Navigation Menu -->\r\n    <nav class=\"nav\">\r\n        <ul class=\"main_ul\">\r\n            <li><a class=\"link_nav\" href=\"<txp:site_url />\">Home</a></li>\r\n            <li><a class=\"link_nav\" href=\"/textpattern/threats/\">Threats</a></li>\r\n            <li><a class=\"link_nav\" href=\"/textpattern/tips/\">Tips</a></li>\r\n            <li><a class=\"link_nav\" href=\"/textpattern/about/\" >About Us</a></li>\r\n            <li><a class=\"link_nav\" href=\"/textpattern/contact/\" >Contact</a></li>\r\n        </ul>\r\n    </nav>\r\n\r\n    <!-- Main Content -->\r\n    <h1 Class=\"main_h\">Welcome to SaF56Cyber Awareness Hub</h1>\r\n    \r\n    <!-- Hero Image -->\r\n    <section class=\"secI\">\r\n        <h1 style=\"color: #2c3e50; margin-top: 0;\">Welcome to CyberSecurity Hub</h1>\r\n        <img src=\"http://localhost/textpattern/images/1.webp\" alt=\"Cybersecurity\" style=\"width: 100%; />\r\n    </section>\r\n    <!-- Introduction Section -->\r\n    <section class=\"secI\">\r\n        <h2>Why Cybersecurity Matters</h2>\r\n        <p>In today\'s digital world, cybersecurity is critical for protecting:</p>\r\n        <ul>\r\n            <li>Personal data (e.g., passwords, financial details)</li>\r\n            <li>Business systems and intellectual property</li>\r\n            <li>National infrastructure and government networks</li>\r\n        </ul>\r\n        <p>Cyberattacks cost the global economy over <strong>$6 trillion annually</strong> (Source: Cybersecurity Ventures).</p>\r\n    </section>\r\n\r\n    <!-- Featured Video Section -->\r\n    <section class=\"secI\" >\r\n        <h2>What is Cybersecurity</h2>\r\n        <iframe width=\"560\" \r\n        height=\"315\" \r\n        src=\"https://www.youtube.com/embed/inWWhr5tnEA?si=vPGV98Ag0g27ZKc9\" \r\n        title=\"YouTube video player\" \r\n        frameborder=\"0\" \r\n        allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" \r\n        referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen>\r\n        </iframe>\r\n    </section>\r\n\r\n    <!-- Quick Threat Overview -->\r\n    <section class=\"secI\">\r\n        <h2>Top 3 Threats in 2024</h2>\r\n        <ol>\r\n            <li>Ransomware Attacks (e.g., encrypting files for payment)</li>\r\n            <li>Phishing Scams (fraudulent emails/texts)</li>\r\n            <li>IoT Device Vulnerabilities (smart home risks)</li>\r\n        </ol>\r\n        <p>Learn more on our <a href=\"/textpattern/threats/\">Threats</a>.</p>\r\n    </section>\r\n\r\n    <!-- Call-to-Action Section -->\r\n    <section class=\"secI\">\r\n        <h2>Start Protecting Yourself Today</h2>\r\n        <p>Explore our resources:</p>\r\n        <ul>\r\n            <li>👉 <a href=\"/textpattern/tips/\" style=\"color: green; text-decoration: none;\">5 Essential Safety Tips</a></li>\r\n            <li>👉 <a href=\"https://www.cisa.gov/cybersecurity\" target=\"_blank\" style=\"color: green; text-decoration: none;\">Official CISA Guidelines</a></li>\r\n        </ul>\r\n    </section>\r\n\r\n    <!-- Footer -->\r\n    <footer >\r\n        <p>© 2025 SaF56Cyber. Educational project for University of Rwanda.</p>\r\n    </footer>\r\n</body>\r\n\r\n</html>', 'four-point-eight', NULL),
('error_default', '<!DOCTYPE html>\n<html lang=\"<txp:lang />\" dir=\"<txp:text item=\"lang_dir\" />\">\n\n<head>\n    <meta charset=\"utf-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, viewport-fit=cover\">\n    <title><txp:error_status /></title>\n\n    <!-- CSS -->\n    <txp:css format=\"link\" media=\"\" />\n    <!-- ...or you can use (faster) external CSS files e.g. <link rel=\"stylesheet\" href=\"<txp:page_url type=\"theme_path\" />/styles/default.css\"> -->\n\n    <meta name=\"generator\" content=\"Textpattern CMS\">\n    <meta name=\"robots\" content=\"none\">\n\n    <!-- content feeds -->\n    <txp:feed_link flavor=\"atom\" format=\"link\" label=\"Atom\" />\n    <txp:feed_link flavor=\"rss\" format=\"link\" label=\"RSS\" />\n</head>\n\n<body class=\"error-page\" itemscope itemtype=\"https://schema.org/WebPage\">\n\n    <txp:output_form form=\"body_header\" />\n\n    <div class=\"wrapper\">\n        <div class=\"container\">\n\n            <!-- Main content -->\n            <main id=\"main\" aria-label=\"<txp:text item=\"main_content\" />\">\n                <h1 class=\"error-status\"><txp:error_status /></h1>\n                <p class=\"error-msg\"><txp:error_message /></p>\n            </main>\n\n            <txp:output_form form=\"body_aside\" />\n\n        </div> <!-- /.container -->\n    </div> <!-- /.wrapper -->\n\n    <txp:output_form form=\"body_footer\" />\n\n</body>\n</html>', 'four-point-eight', NULL),
('threats', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n    <link rel=\"stylesheet\" href=\"<txp:page_url type=\"theme_path\" />/styles/cyber.css\">\r\n    <title>Cyber Threats Explained</title>\r\n</head>\r\n<body >\r\n    <!-- Navigation (Same as index.html) -->\r\n    <nav class=\"nav\">\r\n        <ul class=\"main_ul\">\r\n            <li><a class=\"link_nav\" href=\"<txp:site_url />\">Home</a></li>\r\n            <li><a class=\"link_nav\" href=\"/textpattern/threats/\">Threats</a></li>\r\n            <li><a class=\"link_nav\" href=\"/textpattern/tips/\">Tips</a></li>\r\n            <li><a class=\"link_nav\" href=\"/textpattern/about/\" >About Us</a></li>\r\n            <li><a class=\"link_nav\" href=\"/textpattern/contact/\" >Contact</a></li>\r\n        </ul>\r\n    </nav>\r\n\r\n    <h1 class=\"main_h\">Top Cybersecurity Threats in 2024</h1>\r\n\r\n    <!-- Phishing Section -->\r\n    <section class=\"secT\">\r\n        <h2 style=\"color: #e74c3c;\">1. Phishing Attacks</h2>\r\n        <p>Phishing involves fraudulent emails, texts, or websites that mimic trusted sources to steal sensitive data.</p>\r\n        <h3>Examples:</h3>\r\n        <ul>\r\n            <li>Fake \"password reset\" emails from banks</li>\r\n            <li>Messages pretending to be IT support</li>\r\n        </ul>\r\n        <h3>Real-World Incident:</h3>\r\n        <p>In 2023, a <strong>Twitter phishing scam</strong> tricked employees into revealing credentials, compromising high-profile accounts.</p>\r\n    </section>\r\n\r\n    <!-- Malware Section -->\r\n    <section class=\"secT\">\r\n        <h2 style=\"color: #e74c3c;\">2. Malware</h2>\r\n        <p>Malicious software designed to damage or gain unauthorized access to systems.</p>\r\n        <h3>Types of Malware:</h3>\r\n        <table border=\"1\" style=\"width: 100%; border-collapse: collapse;\">\r\n            <tr>\r\n                <th style=\"padding: 10px;\">Type</th>\r\n                <th style=\"padding: 10px;\">Description</th>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"padding: 10px;\">Ransomware</td>\r\n                <td style=\"padding: 10px;\">Encrypts files and demands payment for decryption (e.g., WannaCry).</td>\r\n            </tr>\r\n            <tr>\r\n                <td style=\"padding: 10px;\">Spyware</td>\r\n                <td style=\"padding: 10px;\">Secretly monitors user activity (e.g., keyloggers).</td>\r\n            </tr>\r\n        </table>\r\n    </section>\r\n\r\n    <!-- IoT Vulnerabilities Section -->\r\n    <section class=\"secT\">\r\n        <h2 style=\"color: #e74c3c;\">3. IoT Vulnerabilities</h2>\r\n        <p>Weak security in smart devices (cameras, thermostats) allows hackers to infiltrate networks.</p>\r\n        <h3>Recent Statistics:</h3>\r\n        <ul>\r\n            <li>Over 1.5 billion IoT attacks occurred in 2023 (Source: SonicWall).</li>\r\n            <li>Default passwords (e.g., \"admin/admin\") are a major risk.</li>\r\n        </ul>\r\n    </section>\r\n\r\n    <!-- Embedded Video Section -->\r\n    <section style=\"background-color: white; padding: 20px; border-radius: 5px; box-shadow: 0 2px 5px rgba(0,0,0,0.1);\">\r\n        <h2>How Ransomware Works</h2>\r\n        <iframe \r\n        width=\"560\" \r\n        height=\"315\" \r\n        src=\"https://www.youtube.com/embed/-KL9APUjj3E?si=l5FvdVbly-xIe1Nq\" \r\n        title=\"YouTube video player\" \r\n        frameborder=\"0\" \r\n        allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" \r\n        referrerpolicy=\"strict-origin-when-cross-origin\" \r\n        allowfullscreen>\r\n    </iframe>\r\n    </section>\r\n\r\n    <!-- Prevention CTA -->\r\n    <section style=\"background-color: #27ae60; color: white; padding: 20px; text-align: center; margin-top: 20px; border-radius: 5px;\">\r\n        <h2>Protect Yourself!</h2>\r\n        <p>Learn how to defend against these threats on our <a href=\"/textpattern/tips/\" style=\"color: white; text-decoration: underline;\">Safety Tips page</a>.</p>\r\n    </section>\r\n\r\n    <!-- Footer -->\r\n    <footer >\r\n        <p>© 2025 SaF56Cyber. Educational project for University of Rwanda.</p>\r\n    </footer>\r\n</body>\r\n</html>', 'four-point-eight', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `txp_plugin`
--

CREATE TABLE `txp_plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 1,
  `author` varchar(128) NOT NULL DEFAULT '',
  `author_uri` varchar(128) NOT NULL DEFAULT '',
  `version` varchar(255) NOT NULL DEFAULT '1.0',
  `description` text NOT NULL,
  `help` mediumtext NOT NULL,
  `code` mediumtext NOT NULL,
  `code_restore` mediumtext NOT NULL,
  `code_md5` varchar(32) NOT NULL DEFAULT '',
  `textpack` mediumtext NOT NULL,
  `data` mediumtext NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `load_order` tinyint(3) UNSIGNED NOT NULL DEFAULT 5,
  `flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `txp_prefs`
--

CREATE TABLE `txp_prefs` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `val` text NOT NULL,
  `type` smallint(5) UNSIGNED NOT NULL DEFAULT 2,
  `event` varchar(255) NOT NULL DEFAULT 'publish',
  `html` varchar(255) NOT NULL DEFAULT 'text_input',
  `position` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `user_name` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `txp_prefs`
--

INSERT INTO `txp_prefs` (`name`, `val`, `type`, `event`, `html`, `position`, `user_name`) VALUES
('img_dir', 'images', 0, 'admin', 'text_input', 20, ''),
('skin_dir', 'themes', 0, 'admin', 'text_input', 30, ''),
('file_base_path', 'C:\\xampp\\htdocs\\textpattern\\files', 0, 'admin', 'text_input', 40, ''),
('file_max_upload_size', '2000000', 0, 'admin', 'text_input', 60, ''),
('tempdir', 'C:\\xampp\\htdocs\\textpattern\\textpattern\\tmp', 0, 'admin', 'text_input', 80, ''),
('plugin_cache_dir', '', 0, 'admin', 'text_input', 100, ''),
('smtp_from', '', 0, 'admin', 'text_input', 110, ''),
('publisher_email', '', 0, 'admin', 'text_input', 115, ''),
('override_emailcharset', '0', 0, 'admin', 'yesnoradio', 120, ''),
('enable_xmlrpc_server', '0', 0, 'admin', 'yesnoradio', 130, ''),
('default_event', 'article', 0, 'admin', 'default_event', 150, ''),
('theme_name', 'hive', 0, 'admin', 'themename', 160, ''),
('module_pophelp', '1', 0, 'admin', 'module_pophelp', 170, ''),
('advanced_options', '0', 0, 'admin', 'onoffradio', 200, ''),
('comments_on_default', '0', 0, 'comments', 'yesnoradio', 20, ''),
('comments_default_invite', 'Comment', 0, 'comments', 'text_input', 40, ''),
('comments_moderate', '1', 0, 'comments', 'yesnoradio', 60, ''),
('comments_disabled_after', '42', 0, 'comments', 'weeks', 80, ''),
('comments_auto_append', '0', 0, 'comments', 'yesnoradio', 100, ''),
('comments_mode', '0', 0, 'comments', 'commentmode', 120, ''),
('comments_dateformat', '%b %d, %I:%M %p', 0, 'comments', 'dateformats', 140, ''),
('comments_sendmail', '0', 0, 'comments', 'commentsendmail', 160, ''),
('comments_are_ol', '1', 0, 'comments', 'yesnoradio', 180, ''),
('comment_means_site_updated', '1', 0, 'comments', 'yesnoradio', 200, ''),
('comments_require_name', '1', 0, 'comments', 'yesnoradio', 220, ''),
('comments_require_email', '1', 0, 'comments', 'yesnoradio', 240, ''),
('never_display_email', '1', 0, 'comments', 'yesnoradio', 260, ''),
('comment_nofollow', '1', 0, 'comments', 'yesnoradio', 280, ''),
('comments_disallow_images', '0', 0, 'comments', 'yesnoradio', 300, ''),
('comments_use_fat_textile', '0', 0, 'comments', 'yesnoradio', 320, ''),
('spam_blacklists', '', 0, 'comments', 'text_input', 340, ''),
('custom_1_set', 'custom1', 0, 'custom', 'custom_set', 1, ''),
('custom_2_set', 'custom2', 0, 'custom', 'custom_set', 2, ''),
('custom_3_set', '', 0, 'custom', 'custom_set', 3, ''),
('custom_4_set', '', 0, 'custom', 'custom_set', 4, ''),
('custom_5_set', '', 0, 'custom', 'custom_set', 5, ''),
('custom_6_set', '', 0, 'custom', 'custom_set', 6, ''),
('custom_7_set', '', 0, 'custom', 'custom_set', 7, ''),
('custom_8_set', '', 0, 'custom', 'custom_set', 8, ''),
('custom_9_set', '', 0, 'custom', 'custom_set', 9, ''),
('custom_10_set', '', 0, 'custom', 'custom_set', 10, ''),
('syndicate_body_or_excerpt', '1', 0, 'feeds', 'yesnoradio', 20, ''),
('rss_how_many', '5', 0, 'feeds', 'text_input', 40, ''),
('show_comment_count_in_feed', '1', 0, 'feeds', 'yesnoradio', 60, ''),
('include_email_atom', '0', 0, 'feeds', 'yesnoradio', 80, ''),
('use_mail_on_feeds_id', '0', 0, 'feeds', 'yesnoradio', 100, ''),
('articles_use_excerpts', '1', 0, 'publish', 'yesnoradio', 40, ''),
('allow_form_override', '1', 0, 'publish', 'yesnoradio', 60, ''),
('override_form_types', 'article', 0, 'publish', 'overrideTypes', 70, ''),
('attach_titles_to_permalinks', '1', 0, 'publish', 'yesnoradio', 80, ''),
('permlink_format', '1', 0, 'publish', 'permlink_format', 100, ''),
('send_lastmod', '1', 0, 'publish', 'yesnoradio', 120, ''),
('publish_expired_articles', '0', 0, 'publish', 'yesnoradio', 130, ''),
('use_textile', '1', 0, 'publish', 'pref_text', 200, ''),
('enable_short_tags', '1', 0, 'publish', 'yesnoradio', 230, ''),
('use_plugins', '1', 0, 'publish', 'yesnoradio', 260, ''),
('admin_side_plugins', '1', 0, 'publish', 'yesnoradio', 280, ''),
('allow_page_php_scripting', '1', 0, 'publish', 'yesnoradio', 300, ''),
('allow_article_php_scripting', '1', 0, 'publish', 'yesnoradio', 320, ''),
('max_url_len', '1000', 0, 'publish', 'text_input', 340, ''),
('blog_mail_uid', 'ab2e78698e7cd3cea38357d1cfa04d67blog@example.com', 2, 'publish', 'text_input', 0, ''),
('blog_time_uid', '2005', 2, 'publish', 'text_input', 0, ''),
('blog_uid', '50c968252de58de61624177515762e5c', 2, 'publish', 'text_input', 0, ''),
('dbupdatetime', '0', 2, 'publish', 'text_input', 0, ''),
('language', 'en', 2, 'publish', 'text_input', 0, ''),
('lastmod', '2025-05-25 08:31:49', 2, 'publish', 'text_input', 0, ''),
('locale', 'English_United States.1252', 2, 'publish', 'text_input', 0, ''),
('path_from_root', '/', 2, 'publish', 'text_input', 0, ''),
('path_to_site', 'C:\\xampp\\htdocs\\textpattern', 2, 'publish', 'text_input', 0, ''),
('searchable_article_fields', 'Title, Body', 2, 'publish', 'text_input', 0, ''),
('textile_updated', '1', 2, 'publish', 'text_input', 0, ''),
('timeoffset', '0', 2, 'publish', 'text_input', 0, ''),
('timezone_key', 'UTC', 2, 'publish', 'text_input', 0, ''),
('url_mode', '1', 2, 'publish', 'text_input', 0, ''),
('use_categories', '1', 2, 'publish', 'text_input', 0, ''),
('use_sections', '1', 2, 'publish', 'text_input', 0, ''),
('sql_now_posted', '2147483647', 2, 'publish', 'text_input', 0, ''),
('sql_now_expires', '2147483647', 2, 'publish', 'text_input', 0, ''),
('sql_now_created', '2147483647', 2, 'publish', 'text_input', 0, ''),
('version', '4.8.8', 2, 'publish', 'text_input', 0, ''),
('default_section', 'default', 2, 'section', 'text_input', 0, ''),
('sitename', 'SaF56Cyber Awareness Hub', 0, 'site', 'text_input', 20, ''),
('siteurl', 'localhost/textpattern', 0, 'site', 'text_input', 40, ''),
('site_slogan', '', 0, 'site', 'text_input', 60, ''),
('production_status', 'testing', 0, 'site', 'prod_levels', 80, ''),
('gmtoffset', '+7200', 0, 'site', 'gmtoffset_select', 110, ''),
('auto_dst', '0', 0, 'site', 'yesnoradio', 115, ''),
('is_dst', '0', 0, 'site', 'is_dst', 120, ''),
('dateformat', 'since', 0, 'site', 'dateformats', 140, ''),
('archive_dateformat', '%b %d, %I:%M %p', 0, 'site', 'dateformats', 160, ''),
('permlink_mode', 'title_only', 0, 'site', 'permlinkmodes', 180, ''),
('doctype', 'html5', 0, 'site', 'doctypes', 190, ''),
('logging', 'none', 0, 'site', 'logging', 220, ''),
('expire_logs_after', '7', 0, 'site', 'text_input', 230, ''),
('use_comments', '0', 0, 'site', 'yesnoradio', 240, ''),
('txp_evaluate_functions', '', 0, 'advanced_options', 'text_input', 100, ''),
('custom_form_types', ';[js]\n;mediatype=\"application/javascript\"\n;title=\"JavaScript\"', 0, 'advanced_options', 'longtext_input', 200, ''),
('secondpass', '1', 0, 'advanced_options', 'text_input', 300, ''),
('skin_delete_from_database', '', 2, 'skin', 'text_input', 0, 'groupA'),
('enable_dev_preview', '1', 0, 'admin', 'yesnoradio', 180, 'groupA'),
('language_ui', 'en', 2, 'admin', 'text_input', 0, 'groupA'),
('default_publish_status', '4', 0, 'publish', 'defaultPublishStatus', 15, 'groupA'),
('skin_editing', 'four-point-eight', 2, 'skin', 'text_input', 0, 'groupA'),
('last_css_saved', 'cyber', 2, 'css', 'text_input', 0, 'groupA'),
('article_sort_column', 'lastmod', 2, 'list', '', 0, 'groupA'),
('article_sort_dir', 'desc', 2, 'list', '', 0, 'groupA'),
('section_sort_column', 'name', 2, 'section', '', 0, 'groupA'),
('section_sort_dir', 'desc', 2, 'section', '', 0, 'groupA'),
('max_custom_fields', '10', 2, 'publish', 'text_input', 0, ''),
('last_form_saved', 'search_display', 2, 'form', 'text_input', 0, 'groupA'),
('last_update_check', '{\"when\":1748147498,\"msg\":\"\",\"msg2\":\"textpattern_update_available_beta\",\"msgval\":[],\"msgval2\":{\"{version}\":\"4.9.0-beta.2\"},\"response\":true}', 2, 'publish', 'text_input', 0, ''),
('search_options_section', 'skin', 2, 'section', 'text_input', 0, 'groupA'),
('file_sort_column', 'filename', 2, 'file', '', 0, 'groupA'),
('file_sort_dir', 'asc', 2, 'file', '', 0, 'groupA'),
('image_sort_column', 'id', 2, 'image', '', 0, 'groupA'),
('image_sort_dir', 'desc', 2, 'image', '', 0, 'groupA'),
('last_page_saved', 'threats', 2, 'page', 'text_input', 0, 'groupA');

-- --------------------------------------------------------

--
-- Table structure for table `txp_section`
--

CREATE TABLE `txp_section` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `skin` varchar(63) NOT NULL DEFAULT 'default',
  `page` varchar(255) NOT NULL DEFAULT '',
  `css` varchar(255) NOT NULL DEFAULT '',
  `permlink_mode` varchar(63) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `in_rss` int(11) NOT NULL DEFAULT 1,
  `on_frontpage` int(11) NOT NULL DEFAULT 1,
  `searchable` int(11) NOT NULL DEFAULT 1,
  `title` varchar(255) NOT NULL DEFAULT '',
  `dev_skin` varchar(63) NOT NULL DEFAULT '',
  `dev_page` varchar(255) NOT NULL DEFAULT '',
  `dev_css` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `txp_section`
--

INSERT INTO `txp_section` (`name`, `skin`, `page`, `css`, `permlink_mode`, `description`, `in_rss`, `on_frontpage`, `searchable`, `title`, `dev_skin`, `dev_page`, `dev_css`) VALUES
('default', 'four-point-eight', 'default', 'cyber', '', '', 1, 1, 1, 'Default', '', '', ''),
('threats', 'four-point-eight', 'threats', 'cyber', '', '', 1, 0, 1, 'threats', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `txp_skin`
--

CREATE TABLE `txp_skin` (
  `name` varchar(63) NOT NULL DEFAULT 'default',
  `title` varchar(255) NOT NULL DEFAULT 'Default',
  `version` varchar(255) DEFAULT '1.0',
  `description` varchar(10240) DEFAULT '',
  `author` varchar(255) DEFAULT '',
  `author_uri` varchar(255) DEFAULT '',
  `lastmod` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `txp_skin`
--

INSERT INTO `txp_skin` (`name`, `title`, `version`, `description`, `author`, `author_uri`, `lastmod`) VALUES
('four-point-eight', 'Four Point Eight', '4.8.8', 'The default theme shipped with Textpattern CMS 4.8.', 'Team Textpattern', 'https://github.com/textpattern/textpattern-default-theme', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `txp_token`
--

CREATE TABLE `txp_token` (
  `id` int(11) NOT NULL,
  `reference_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `selector` varchar(12) NOT NULL DEFAULT '',
  `token` varchar(255) NOT NULL,
  `expires` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `txp_users`
--

CREATE TABLE `txp_users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `pass` varchar(128) NOT NULL,
  `RealName` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(254) NOT NULL DEFAULT '',
  `privs` tinyint(4) NOT NULL DEFAULT 1,
  `last_access` datetime DEFAULT NULL,
  `nonce` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `txp_users`
--

INSERT INTO `txp_users` (`user_id`, `name`, `pass`, `RealName`, `email`, `privs`, `last_access`, `nonce`) VALUES
(1, 'groupA', '$2y$10$Z7axPOkHTg16ncegc5DBReQ4ELoKiqJchR7ltycPc/Zj8yO6OM7J.', 'groupA', 'groupa@gmail.com', 1, '2025-05-25 10:13:09', '1c18c46510ece1b402eaaaa76811d8ee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `textpattern`
--
ALTER TABLE `textpattern`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `categories_idx` (`Category1`(10),`Category2`(10)),
  ADD KEY `Posted` (`Posted`),
  ADD KEY `Expires_idx` (`Expires`),
  ADD KEY `author_idx` (`AuthorID`),
  ADD KEY `section_status_idx` (`Section`(249),`Status`),
  ADD KEY `url_title_idx` (`url_title`(250));
ALTER TABLE `textpattern` ADD FULLTEXT KEY `searching` (`Title`,`Body`);

--
-- Indexes for table `txp_category`
--
ALTER TABLE `txp_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `txp_css`
--
ALTER TABLE `txp_css`
  ADD UNIQUE KEY `name_skin` (`name`(63),`skin`);

--
-- Indexes for table `txp_discuss`
--
ALTER TABLE `txp_discuss`
  ADD PRIMARY KEY (`discussid`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `txp_discuss_nonce`
--
ALTER TABLE `txp_discuss_nonce`
  ADD PRIMARY KEY (`nonce`(250));

--
-- Indexes for table `txp_file`
--
ALTER TABLE `txp_file`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filename` (`filename`(250)),
  ADD KEY `author_idx` (`author`);

--
-- Indexes for table `txp_form`
--
ALTER TABLE `txp_form`
  ADD UNIQUE KEY `name_skin` (`name`(63),`skin`);

--
-- Indexes for table `txp_image`
--
ALTER TABLE `txp_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_idx` (`author`);

--
-- Indexes for table `txp_lang`
--
ALTER TABLE `txp_lang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lang` (`lang`,`name`),
  ADD KEY `lang_2` (`lang`,`event`),
  ADD KEY `owner` (`owner`);

--
-- Indexes for table `txp_link`
--
ALTER TABLE `txp_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_idx` (`author`);

--
-- Indexes for table `txp_log`
--
ALTER TABLE `txp_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `txp_page`
--
ALTER TABLE `txp_page`
  ADD UNIQUE KEY `name_skin` (`name`(63),`skin`);

--
-- Indexes for table `txp_plugin`
--
ALTER TABLE `txp_plugin`
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `status_type_idx` (`status`,`type`);

--
-- Indexes for table `txp_prefs`
--
ALTER TABLE `txp_prefs`
  ADD UNIQUE KEY `prefs_idx` (`name`(185),`user_name`),
  ADD KEY `name` (`name`(250)),
  ADD KEY `user_name` (`user_name`);

--
-- Indexes for table `txp_section`
--
ALTER TABLE `txp_section`
  ADD KEY `page_skin` (`page`(50),`skin`),
  ADD KEY `css_skin` (`css`(50),`skin`);

--
-- Indexes for table `txp_skin`
--
ALTER TABLE `txp_skin`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `txp_token`
--
ALTER TABLE `txp_token`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref_type` (`reference_id`,`type`(50));

--
-- Indexes for table `txp_users`
--
ALTER TABLE `txp_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `textpattern`
--
ALTER TABLE `textpattern`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `txp_category`
--
ALTER TABLE `txp_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `txp_discuss`
--
ALTER TABLE `txp_discuss`
  MODIFY `discussid` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `txp_file`
--
ALTER TABLE `txp_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `txp_image`
--
ALTER TABLE `txp_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `txp_lang`
--
ALTER TABLE `txp_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1077;

--
-- AUTO_INCREMENT for table `txp_link`
--
ALTER TABLE `txp_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `txp_log`
--
ALTER TABLE `txp_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `txp_token`
--
ALTER TABLE `txp_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `txp_users`
--
ALTER TABLE `txp_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
