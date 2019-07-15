-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2019 at 09:31 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vgweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sampul` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isi` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idcat` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `judul`, `foto`, `sampul`, `isi`, `preview`, `kategori`, `idcat`, `deleted`, `view`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum Dolor Sit Amet', 'saya.png', 'meteor.png', '<div id=\"lipsum\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla malesuada enim sit amet mi suscipit accumsan. Nullam interdum ultricies fermentum. Cras tincidunt risus tortor, sit amet volutpat sapien mattis non. Aenean vestibulum massa justo, vitae pharetra purus pretium nec. Praesent eget tincidunt augue, quis pharetra neque. Ut ultricies mi et nisi fringilla, in fermentum nisi porta. Proin faucibus fermentum felis nec rhoncus. In vitae tellus commodo, egestas metus nec, malesuada mauris. Ut vitae auctor nunc. Vivamus posuere turpis quis diam ultricies, a ornare velit venenatis. Donec sit amet dui eu turpis auctor luctus eu id nunc. Vestibulum pharetra, velit sed posuere sollicitudin, erat purus ornare massa, a finibus eros dui vel leo. Vestibulum lectus augue, vestibulum tincidunt mi eget, dignissim mollis orci. Maecenas efficitur tempus pharetra.</p>\r\n\r\n<p>Etiam augue dui, blandit sed porttitor et, accumsan nec libero. Donec at sapien id velit scelerisque iaculis in ut justo. In hac habitasse platea dictumst. Donec ante metus, facilisis eu tortor in, malesuada pharetra nibh. Vivamus consectetur velit nulla, eget sollicitudin magna iaculis sit amet. Suspendisse nec purus vehicula, elementum est in, fringilla est. Mauris lacinia scelerisque mauris a molestie. Phasellus vitae tortor eros. In fringilla sollicitudin massa, vitae pulvinar ligula iaculis maximus. Donec eget mauris ut lacus pretium venenatis in et est. Ut vestibulum lacinia ipsum, vel scelerisque magna. Donec non rhoncus nisl, non luctus tellus. Etiam at neque ultrices, sollicitudin odio sit amet, varius diam.</p>\r\n\r\n<p>Sed enim lacus, pellentesque accumsan felis eget, rhoncus accumsan nulla. Donec pulvinar turpis at elit egestas euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed felis mattis nulla aliquet rhoncus non vel leo. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras suscipit, nunc volutpat aliquet iaculis, quam ligula auctor velit, ac egestas nulla mauris non enim. Vestibulum rutrum orci nibh, vitae facilisis purus pretium id. Suspendisse potenti. Integer vitae ligula a eros egestas tincidunt. In viverra leo a ligula viverra, accumsan varius velit pretium.</p>\r\n\r\n<p>Phasellus cursus ut mauris ac rutrum. Nullam aliquet mauris a elit pellentesque, faucibus sagittis turpis egestas. Curabitur a leo et sem aliquam volutpat eu vitae elit. Phasellus accumsan ornare nisl, at semper nunc sodales at. Praesent tempus laoreet eros et tincidunt. Duis erat neque, pellentesque id tellus eu, semper interdum urna. Proin varius sollicitudin nisi, eu eleifend elit venenatis et. Nulla cursus orci id sodales fringilla. Nam vitae massa mi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vel turpis sit amet mauris feugiat lobortis. Ut nec gravida erat.</p>\r\n\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In eget dolor tellus. Ut ullamcorper mauris sapien, quis dictum nunc mollis eget. Etiam vestibulum fermentum eleifend. Maecenas commodo posuere sem, vel venenatis dolor commodo et. Fusce efficitur dolor non eros sollicitudin eleifend. Donec imperdiet eget libero eu interdum. Vestibulum a egestas velit. Sed id nunc ut ligula rhoncus bibendum vitae sed ante. Donec mattis tortor vitae placerat vehicula. Fusce euismod, lectus at tempus venenatis, velit enim finibus libero, nec porta turpis massa at tortor. Aliquam erat volutpat. Vivamus consequat eros vitae quam luctus aliquet. Aliquam auctor finibus orci. Nam fringilla laoreet odio, non sagittis nisi laoreet eget. Duis molestie massa neque, eget euismod diam tristique nec.</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla malesuada enim sit amet mi suscipit accumsan. Nullam interdum ultricies fermentum. Cras tincidunt risus tortor, sit amet volutpat sapien mattis non. Aenean vestibulum massa justo, vitae pharetra purus pretium nec. Praesent eget tincidunt augue, quis pharetra neque. Ut ultricies mi et nisi fringilla, in fermentum nisi porta. Proin faucibus fermentum felis nec rhoncus. In vitae tellus commodo, egestas metus nec, malesuada mauris. Ut vitae auctor nunc. Vivamus posuere turpis quis diam ultricies, a ornare velit venenatis. Donec sit amet dui eu turpis auctor luctus eu id nunc. Vestibulum pharetra, velit sed posuere sollicitudin, erat purus ornare massa, a finibus eros dui vel leo. Vestibulum lectus augue, vestibulum tincidunt mi eget, dignissim mollis orci. Maecenas efficitur tempus pharetra.', 'Game Development', 1, 0, 1, '2019-07-02 08:46:21', '2019-07-11 22:36:02'),
(3, 'asddddddddddddddd', 'Mute_Portrait.png', 'header.PNG', '<div style=\"background-color:#1e1e1e; color:#d4d4d4; font-family:Consolas,\'Courier New\',monospace; font-size:14px; font-weight:normal; line-height:19px; white-space:pre\">\r\n<div><span style=\"color:#569cd6\">@extends</span><span style=\"color:#d4d4d4\">(</span><span style=\"color:#ce9178\">&#39;atemplate&#39;</span><span style=\"color:#d4d4d4\">)</span></div>\r\n\r\n<div><span style=\"color:#569cd6\">@section</span><span style=\"color:#d4d4d4\">(</span><span style=\"color:#ce9178\">&#39;head&#39;</span><span style=\"color:#d4d4d4\">)</span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">title</span><span style=\"color:#808080\">&gt;</span><span style=\"color:#d4d4d4\">CKEditor</span><span style=\"color:#808080\"><!--</span--><span style=\"color:#569cd6\">title</span><span style=\"color:#808080\">&gt;</span></span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">script</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">src</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;https://cdn.ckeditor.com/4.11.4/full/ckeditor.js&quot;</span><span style=\"color:#808080\">&gt;</span><span style=\"color:#808080\">&lt;</span><span style=\"color:#808080\">/</span><span style=\"color:#569cd6\">script</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#569cd6\">@endsection</span></div>\r\n\r\n<div><span style=\"color:#569cd6\">@section</span><span style=\"color:#d4d4d4\">(</span><span style=\"color:#ce9178\">&#39;main&#39;</span><span style=\"color:#d4d4d4\">)</span></div>\r\n&nbsp;\r\n\r\n<div><span style=\"color:#6a9955\"><!--main content start--></span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">section</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">id</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;main-content&quot;</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#569cd6\">@if </span><span style=\"color:#d4d4d4\">(</span><span style=\"color:#dcdcaa\">session</span><span style=\"color:#d4d4d4\">(</span><span style=\"color:#ce9178\">&#39;success&#39;</span><span style=\"color:#d4d4d4\">)</span><span style=\"color:#d4d4d4\">)</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">div</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;alert alert-success&quot;</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#dcdcaa\">{{</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#dcdcaa\">session</span><span style=\"color:#d4d4d4\">(</span><span style=\"color:#ce9178\">&#39;success&#39;</span><span style=\"color:#d4d4d4\">) </span><span style=\"color:#dcdcaa\">}}</span></div>\r\n\r\n<div><span style=\"color:#808080\"><!--</span--><span style=\"color:#569cd6\">div</span><span style=\"color:#808080\">&gt;</span></span></div>\r\n\r\n<div><span style=\"color:#569cd6\">@endif</span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style=\"color:#569cd6\">@if </span><span style=\"color:#d4d4d4\">(</span><span style=\"color:#dcdcaa\">session</span><span style=\"color:#d4d4d4\">(</span><span style=\"color:#ce9178\">&#39;error&#39;</span><span style=\"color:#d4d4d4\">)</span><span style=\"color:#d4d4d4\">)</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">div</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;alert alert-success&quot;</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#dcdcaa\">{{</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#dcdcaa\">session</span><span style=\"color:#d4d4d4\">(</span><span style=\"color:#ce9178\">&#39;error&#39;</span><span style=\"color:#d4d4d4\">) </span><span style=\"color:#dcdcaa\">}}</span></div>\r\n\r\n<div><span style=\"color:#808080\"><!--</span--><span style=\"color:#569cd6\">div</span><span style=\"color:#808080\">&gt;</span></span></div>\r\n\r\n<div><span style=\"color:#569cd6\">@endif</span></div>\r\n\r\n<div><span style=\"color:#569cd6\">@php</span></div>\r\n\r\n<div><span style=\"color:#569cd6\">use</span><span style=\"color:#d4d4d4\"> App\\</span><span style=\"color:#4ec9b0\">cat</span><span style=\"color:#d4d4d4\">;</span></div>\r\n\r\n<div><span style=\"color:#569cd6\">@endphp</span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">section</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;wrapper site-min-height&quot;</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">form</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">action</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;</span><span style=\"color:#dcdcaa\">{{</span><span style=\"color:#ce9178\"> </span><span style=\"color:#dcdcaa\">url</span><span style=\"color:#ce9178\">(&#39;admin-vg/post&#39;, []) </span><span style=\"color:#dcdcaa\">}}</span><span style=\"color:#ce9178\">&quot;</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">enctype</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;multipart/form-data&quot;</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">method</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;POST&quot;</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#dcdcaa\">{{</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#dcdcaa\">csrf_field</span><span style=\"color:#d4d4d4\">() </span><span style=\"color:#dcdcaa\">}}</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">div</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">h4</span><span style=\"color:#808080\">&gt;&lt;</span><span style=\"color:#569cd6\">i</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;fa fa-angle-right&quot;</span><span style=\"color:#808080\">&gt;<!--</span--><span style=\"color:#569cd6\">i</span><span style=\"color:#808080\">&gt;</span><span style=\"color:#d4d4d4\"> Judul Article</span><span style=\"color:#808080\"><!--</span--><span style=\"color:#569cd6\">h4</span><span style=\"color:#808080\">&gt;</span></span></span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">div</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;row mt&quot;</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">div</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;col-sm-6&quot;</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">input</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">type</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;text&quot;</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;form-control&quot;</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">name</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;judul&quot;</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">id</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;judul&quot;</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">placeholder</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;judul&quot;</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#569cd6\">@if </span><span style=\"color:#d4d4d4\">(</span><span style=\"color:#9cdcfe\">$errors</span><span style=\"color:#d4d4d4\">-&gt;</span><span style=\"color:#dcdcaa\">has</span><span style=\"color:#d4d4d4\">(</span><span style=\"color:#ce9178\">&#39;judul&#39;</span><span style=\"color:#d4d4d4\">)</span><span style=\"color:#d4d4d4\">)</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">p</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;text-danger&quot;</span><span style=\"color:#808080\">&gt;</span><span style=\"color:#dcdcaa\">{{</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">$errors</span><span style=\"color:#d4d4d4\">-&gt;</span><span style=\"color:#dcdcaa\">first</span><span style=\"color:#d4d4d4\">(</span><span style=\"color:#ce9178\">&#39;judul&#39;</span><span style=\"color:#d4d4d4\">) </span><span style=\"color:#dcdcaa\">}}</span><span style=\"color:#808080\"><!--</span--><span style=\"color:#569cd6\">p</span><span style=\"color:#808080\">&gt;</span></span></div>\r\n\r\n<div><span style=\"color:#569cd6\">@endif</span></div>\r\n\r\n<div><span style=\"color:#808080\"><!--</span--><span style=\"color:#569cd6\">div</span><span style=\"color:#808080\">&gt;</span></span></div>\r\n\r\n<div><span style=\"color:#808080\"><!--</span--><span style=\"color:#569cd6\">div</span><span style=\"color:#808080\">&gt;</span><span style=\"color:#d4d4d4\"> </span></span></div>\r\n\r\n<div><span style=\"color:#808080\"><!--</span--><span style=\"color:#569cd6\">div</span><span style=\"color:#808080\">&gt;</span></span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">br</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">div</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">h4</span><span style=\"color:#808080\">&gt;&lt;</span><span style=\"color:#569cd6\">i</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;fa fa-angle-right&quot;</span><span style=\"color:#808080\">&gt;<!--</span--><span style=\"color:#569cd6\">i</span><span style=\"color:#808080\">&gt;</span><span style=\"color:#d4d4d4\"> Gambar Sampul</span><span style=\"color:#808080\"><!--</span--><span style=\"color:#569cd6\">h4</span><span style=\"color:#808080\">&gt;</span></span></span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">div</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;row mt&quot;</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">div</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;col-sm-6&quot;</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">input</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;btn btn-success&quot;</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;form-control&quot;</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">type</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;file&quot;</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">name</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;sampul&quot;</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">id</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;sampul&quot;</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#569cd6\">@if </span><span style=\"color:#d4d4d4\">(</span><span style=\"color:#9cdcfe\">$errors</span><span style=\"color:#d4d4d4\">-&gt;</span><span style=\"color:#dcdcaa\">has</span><span style=\"color:#d4d4d4\">(</span><span style=\"color:#ce9178\">&#39;sampul&#39;</span><span style=\"color:#d4d4d4\">)</span><span style=\"color:#d4d4d4\">)</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">p</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;text-danger&quot;</span><span style=\"color:#808080\">&gt;</span><span style=\"color:#dcdcaa\">{{</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">$errors</span><span style=\"color:#d4d4d4\">-&gt;</span><span style=\"color:#dcdcaa\">first</span><span style=\"color:#d4d4d4\">(</span><span style=\"color:#ce9178\">&#39;sampul&#39;</span><span style=\"color:#d4d4d4\">) </span><span style=\"color:#dcdcaa\">}}</span><span style=\"color:#808080\"><!--</span--><span style=\"color:#569cd6\">p</span><span style=\"color:#808080\">&gt;</span></span></div>\r\n\r\n<div><span style=\"color:#569cd6\">@endif</span></div>\r\n\r\n<div><span style=\"color:#808080\"><!--</span--><span style=\"color:#569cd6\">div</span><span style=\"color:#808080\">&gt;</span></span></div>\r\n\r\n<div><span style=\"color:#808080\"><!--</span--><span style=\"color:#569cd6\">div</span><span style=\"color:#808080\">&gt;</span><span style=\"color:#d4d4d4\"> </span></span></div>\r\n\r\n<div><span style=\"color:#808080\"><!--</span--><span style=\"color:#569cd6\">div</span><span style=\"color:#808080\">&gt;</span></span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">br</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">div</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">h4</span><span style=\"color:#808080\">&gt;&lt;</span><span style=\"color:#569cd6\">i</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;fa fa-angle-right&quot;</span><span style=\"color:#808080\">&gt;<!--</span--><span style=\"color:#569cd6\">i</span><span style=\"color:#808080\">&gt;</span><span style=\"color:#d4d4d4\"> Gambar Preview</span><span style=\"color:#808080\"><!--</span--><span style=\"color:#569cd6\">h4</span><span style=\"color:#808080\">&gt;</span></span></span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">div</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;row mt&quot;</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">div</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;col-sm-6&quot;</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">input</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;btn btn-info&quot;</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;form-control&quot;</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">type</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;file&quot;</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">name</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;foto&quot;</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">id</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;sampul&quot;</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#569cd6\">@if </span><span style=\"color:#d4d4d4\">(</span><span style=\"color:#9cdcfe\">$errors</span><span style=\"color:#d4d4d4\">-&gt;</span><span style=\"color:#dcdcaa\">has</span><span style=\"color:#d4d4d4\">(</span><span style=\"color:#ce9178\">&#39;foto&#39;</span><span style=\"color:#d4d4d4\">)</span><span style=\"color:#d4d4d4\">)</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">p</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;text-danger&quot;</span><span style=\"color:#808080\">&gt;</span><span style=\"color:#dcdcaa\">{{</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">$errors</span><span style=\"color:#d4d4d4\">-&gt;</span><span style=\"color:#dcdcaa\">first</span><span style=\"color:#d4d4d4\">(</span><span style=\"color:#ce9178\">&#39;foto&#39;</span><span style=\"color:#d4d4d4\">) </span><span style=\"color:#dcdcaa\">}}</span><span style=\"color:#808080\"><!--</span--><span style=\"color:#569cd6\">p</span><span style=\"color:#808080\">&gt;</span></span></div>\r\n\r\n<div><span style=\"color:#569cd6\">@endif</span></div>\r\n\r\n<div><span style=\"color:#808080\"><!--</span--><span style=\"color:#569cd6\">div</span><span style=\"color:#808080\">&gt;</span></span></div>\r\n\r\n<div><span style=\"color:#808080\"><!--</span--><span style=\"color:#569cd6\">div</span><span style=\"color:#808080\">&gt;</span><span style=\"color:#d4d4d4\"> </span></span></div>\r\n\r\n<div><span style=\"color:#808080\"><!--</span--><span style=\"color:#569cd6\">div</span><span style=\"color:#808080\">&gt;</span></span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">br</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">div</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">h4</span><span style=\"color:#808080\">&gt;&lt;</span><span style=\"color:#569cd6\">i</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;fa fa-angle-right&quot;</span><span style=\"color:#808080\">&gt;<!--</span--><span style=\"color:#569cd6\">i</span><span style=\"color:#808080\">&gt;</span><span style=\"color:#d4d4d4\"> Kategori</span><span style=\"color:#808080\"><!--</span--><span style=\"color:#569cd6\">h4</span><span style=\"color:#808080\">&gt;</span></span></span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">div</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;row mt&quot;</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">div</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;col-sm-6&quot;</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">input</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">list</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;category&quot;</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">class</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;form-control&quot;</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">placeholder</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;double klik to show list&quot;</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">id</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;kategori&quot;</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">name</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;category&quot;</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">datalist</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">id</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;category&quot;</span><span style=\"color:#808080\">&gt;</span></div>\r\n\r\n<div><span style=\"color:#569cd6\">@php</span><span style=\"color:#d4d4d4\">(</span><span style=\"color:#9cdcfe\">$data</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#4ec9b0\">cat</span><span style=\"color:#d4d4d4\">::</span><span style=\"color:#dcdcaa\">all</span><span style=\"color:#d4d4d4\">()</span><span style=\"color:#d4d4d4\">)</span></div>\r\n\r\n<div><span style=\"color:#569cd6\">@foreach </span><span style=\"color:#d4d4d4\">(</span><span style=\"color:#9cdcfe\">$data</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#d4d4d4\">as</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">$item</span><span style=\"color:#d4d4d4\">) </span></div>\r\n\r\n<div><span style=\"color:#808080\">&lt;</span><span style=\"color:#569cd6\">option</span><span style=\"color:#d4d4d4\"> </span><span style=\"color:#9cdcfe\">value</span><span style=\"color:#d4d4d4\">=</span><span style=\"color:#ce9178\">&quot;</span><span style=\"color:#dcdcaa\">{{</span><span style=\"color:#9cdcfe\">$item</span><span style=\"color:#d4d4d4\">-&gt;</span><span style=\"color:#9cdcfe\">sub_kategori</span><span style=\"color:#dcdcaa\">}}</span><span style=\"color:#ce9178\">&quot;</span><span style=\"color:#808080\">&gt;</span><span style=\"color:#d4d4d4\"> </span></div>\r\n\r\n<div><span style=\"color:#569cd6\">@endforeach</span></div>\r\n\r\n<div><span style=\"color:#808080\"><!--</span--><span style=\"color:#569cd6\">datalist</span><span style=\"color:#808080\">&gt;</span></span></div>\r\n</div>', 'asggggggg ggggggggg gggggggggg gggggggggg gggggggggggsssssssssssss ssssssssss sssssssssssss sssssssssssss sssssssssssssssssssssssssssssssssssasggggggggggg gggggggggggggggggggggggg ggggggggggggssssssss sssssssssssssssssssssssss ssssssssssssssss sssssssssssssssssss ssssssssssssssssasggggggggggggggggggg ggggggggggggggggggggggggggggssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss', 'Game Review', 2, 1, 1, '2019-07-02 08:52:39', '2019-07-11 22:49:23'),
(4, 'Utilizing A Local Scope', 'lorem.jpg', 'meteor.png', '<p><img alt=\"\" src=\"https://cdn.vox-cdn.com/thumbor/6B1JswS2gJhlXh4vw7XhkhLGjhY=/0x0:1680x1050/1200x800/filters:focal(706x391:974x659)/cdn.vox-cdn.com/uploads/chorus_image/image/64001698/gamebuilder.0.jpg\" style=\"height:600px; width:900px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Once the scope has been defined, you may call the scope methods when querying the model. However, you should not include the <code>scope</code> prefix when calling the method. You can even chain calls to various scopes, for example:</p>\r\n\r\n<pre>\r\n<code>$users = App\\User::popular()-&gt;active()-&gt;orderBy(&#39;created_at&#39;)-&gt;get();</code></pre>\r\n\r\n<p>Combining multiple Eloquent model scopes via an <code>or</code> query operator may require the use of Closure callbacks:</p>\r\n\r\n<pre>\r\n<code>$users = App\\User::popular()-&gt;orWhere(function (Builder $query) {\r\n    $query-&gt;active();\r\n})-&gt;get();</code></pre>\r\n\r\n<p>However, since this can be cumbersome, Laravel provides a &quot;higher order&quot; <code>orWhere</code> method that allows you to fluently chain these scopes together without the use of Closures:</p>\r\n\r\n<pre>\r\n<code>$users = App\\User::popular()-&gt;orWhere-&gt;active()-&gt;get();</code></pre>\r\n\r\n<h4>Dynamic Scopes</h4>\r\n\r\n<p>Sometimes you may wish to define a scope that accepts parameters. To get started, just add your additional parameters to your scope. Scope parameters should be defined after the <code>$query</code> parameter:</p>\r\n\r\n<pre>\r\n<code><!--?php\r\n\r\nnamespace App;\r\n\r\nuse Illuminate\\Database\\Eloquent\\Model;\r\n\r\nclass User extends Model\r\n{\r\n    /**\r\n     * Scope a query to only include users of a given type.\r\n     *\r\n     * @param  \\Illuminate\\Database\\Eloquent\\Builder  $query\r\n     * @param  mixed  $type\r\n     * @return \\Illuminate\\Database\\Eloquent\\Builder\r\n     */\r\n    public function scopeOfType($query, $type)\r\n    {\r\n        return $query--->where(&#39;type&#39;, $type);\r\n    }\r\n}</code></pre>\r\n\r\n<p>Now, you may pass the parameters when calling the scope:</p>', 'Once the scope has been defined, you may call the scope methods when querying the model. However, you should not include the scope prefix when calling the method. You can even chain calls to various scopes, for example:', 'Tips & Trick', 1, 0, 20, '2019-07-11 22:47:30', '2019-07-11 22:49:00'),
(5, 'Ini Tips Mudah Mendapatkan Skin Legendary Dalam Gim Apapun!', 'Legendary-Skin.jpg', 'Legendary-Skin.jpg', '<p><img alt=\"\" src=\"https://www.ggwp.id/wp-content/uploads/2019/05/Legendary-Skin.jpg\" style=\"height:451px; width:800px\" /></p>\r\n\r\n<p>Siapa yang tidak ingin mendapatkan&nbsp;<em>skin</em> Legendary dalam gim yang ia mainkan? Dengan mempunyai&nbsp;<em>skin&nbsp;</em>jenis ini, tentunya kalian akan lebih percaya diri dan dapat memamerkan kemampuan kalian dengan lebih&nbsp;<em>stylish,&nbsp;</em>kan?</p>\r\n\r\n<p>Namun, terkadang&nbsp;<em>skin-skin</em> ini hanya berada dalam waktu yang terbatas dan juga ada persyaratan lainnya yang kalian penuhi untuk mendapatkan <em>item</em> paling dicari ini.</p>\r\n\r\n<p>Sebenarnya, tidaklah susah untuk mendapatkan&nbsp;<em>skin-skin</em> ini asal kalian tahu caranya, loh! Penasaran? Simak dulu tips dari GGWP.ID bagaimana cara mendapatkan&nbsp;<em>skin&nbsp;</em>Legendary dengan mudah dalam gim apapun!</p>\r\n\r\n<div class=\"circle-point-article media-left\">\r\n<p><strong>1. Menjalani Quest</strong></p>\r\n</div>\r\n\r\n<p><img alt=\"\" src=\"https://www.ggwp.id/wp-content/uploads/2019/05/Elite-Pass.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Nah ini tentunya yang paling masuk akal dan paling umum dilakukan oleh semua pemain gim online. Menjalani quest dengan sabar dan perlahan tidak membutuhkan banyak biaya untuk dilakukan selama kalian sering bermain.</p>\r\n\r\n<p>Kalian bisa membeli Battle Pass yang ditawarkan oleh gim tersebut untuk mendapatkan bonus barang lain hingga akhirnya mendapatkan&nbsp;<em>skin</em> Legendary tersebut.</p>\r\n\r\n<p>Satu-satunya kelemahan dari cara ini adalah waktu yang dibutuhkan cenderung lama dan membutuhkan sang pemain untuk rajin bermain.</p>\r\n\r\n<p><strong>2.&nbsp; Menggunakan Pihak Ketiga</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.ggwp.id/wp-content/uploads/2019/05/WHO.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Dalam gim online manapun seperti Mobile Legends, Free Fire atau bahkan Dota 2 sekalipun; akan ada banyak sekali pihak ketiga yang menjual item-item Legendary dengan harga miring!</p>\r\n\r\n<p>Terlihat menggiurkan? Memang dan tidak diragukan lagi. Namun apakah kalian sadar dengn resiko yang timbul jika menggunakan pihak ketiga?</p>\r\n\r\n<p>Akun kalian terancam terkena ban karena secara resmi, praktek ini tidak diperbolehkan oleh pihak developer karena dianggap curang dan merugikan pemain lainnya.</p>\r\n\r\n<p>Lalu ada tidak cara yang lebih mudah dan cepat? Rupanya ada, loh!</p>', 'Siapa yang tidak ingin mendapatkan skin Legendary dalam gim yang ia mainkan? Dengan mempunyai skin jenis ini, tentunya kalian akan lebih percaya diri dan dapat memamerkan kemampuan kalian dengan lebih stylish, kan?', 'Tips & Trick', 1, 0, 5, '2019-07-13 22:25:17', '2019-07-13 22:25:17'),
(6, 'Moonton Ungkap Game Mobile Legends: Adventure Bakal Hadirkan Plot yang Unik!', 'mobile-legends-adventure-plot.jpg', 'mobile-legends-adventure-plot.jpg', '<p><img alt=\"\" src=\"https://www.ggwp.id/wp-content/uploads/2019/07/mobile-legends-adventure-plot.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Kapan rilisnya?.. uhuuk.. kabarnya akhir bulan ini slur&hellip; uhuuk..</p>\r\n\r\n<p>Pengembang MLBB, Moonton, sudah menginformasikan akan merilis franchise game dari Mobile Legends yang berjudul Mobile Legends: Adventure. Nah yang terbaru, ada bocoran mengenai plot cerita yang akan hadir.</p>\r\n\r\n<p>Tidak seperti pendahulunya yang kompetitif, Mobile Legends: Adventure mengambil pendekatan yang lebih kasual dalam bentuk Idle RPG Strate gy Card Game . Dalam tambahan terbaru ini, pemain dapat mengontrol sampai dengan 5 Hero di saat yang bersamaan di pertempuran posisi, mengatur susunan terbaik untuk mengalahkan lawan.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.ggwp.id/wp-content/uploads/2019/07/mla.jpg\" style=\"height:436px; width:800px\" /></p>\r\n\r\n<p>Selain dengan format Strategy Card Game , Mobile Legends: Adventure akan mengungkap cerita yang lebih dalam dan berkesinambungan, dengan alur cerita yang menarik dan memikat. Dituturkan dari sudut pandang Layla, plot Mobile Legends: Adventure menemukan para Hero -nya yang terkenal dalam kisah klasik tentang kebaikan melawan kejahatan.</p>\r\n\r\n<p>Di Dunia Mobile Legends , Land of Dawn telah lama terlibat dalam pertarungan abadi antara Light dan Darkness . Sekarang, Darkness mengancam untuk menghabisi Land of Dawn seiring dengan kembalinya Laboratorium 1718, organisasi jahat yang selama ini bersembunyi dalam kegelapan, akan terjun dalam peperangan dan membuat bencana dan krisis.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.ggwp.id/wp-content/uploads/2019/07/mobile-legends-adventure.jpg\" style=\"height:240px; width:800px\" /></p>\r\n\r\n<p>Dihadapkan dengan ujian keberanian sejati, Hero : Miya, Tigreal, Layla, Lancelot dan lainnya harus bertualang, bersatu dengan rekan yang berkemampuan unik yang&nbsp; ditemui disepanjang petualangan. Di Land of Dawn , semua orang berkesempatan untuk menjadi pahlawan.</p>\r\n\r\n<p>Setiap pertarungan adalah tantangan kebijaksanaan dan keberanian. Pemain harus menggunakan akal cerdas mereka untuk membentuk tim terbaik dalam pertarungan sengit untuk menyelamatkan Land of Dawn .</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.ggwp.id/wp-content/uploads/2019/07/Skill3.jpg\" style=\"height:402px; width:800px\" /></p>\r\n\r\n<p><em>&ldquo;Terlepas dari plot yang lebih intens, Mobile Legends: Adventure adalah permainan cepat dan santai. Pemain tidak perlu khawatir jika idle offline, karena dengan Sistem Auto Farming pemain tetap dapat mendapat hadiah. Selain itu, hanya dengan satu bar signal dan tidak perlu memori besar untuk memainkan Mobile Legends: Adventure .&rdquo; </em>tutur Moonton.</p>\r\n\r\n<p>Satu informasi lainnya, Mobile Legends: Adventure dikabarkan akan rilis di Indonesia tidak lama lagi. Menurut rencana akan rilis pada akhir bulan ini, Juli 2019!</p>', 'Kapan rilisnya?.. uhuuk.. kabarnya akhir bulan ini slur… uhuuk..\r\n\r\nPengembang MLBB, Moonton, sudah menginformasikan akan merilis franchise game dari Mobile Legends yang berjudul Mobile Legends: Adventure. Nah yang terbaru, ada bocoran mengenai plot cerita yang akan hadir', 'Game News', 3, 0, 31, '2019-07-13 22:37:14', '2019-07-13 22:37:14'),
(7, 'The King is Back! RRQ Juara PBNC 2018 dan Akan Wakili Indonesia di PBIC Korea', 'juara-pbnc-2018_1.jpg', 'juara-pbnc-2018_1.jpg', '<p><img alt=\"\" src=\"https://www.ggwp.id/wp-content/uploads/2018/09/juara-pbnc-2018_1.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>RRQ Endeavour akan sekali lagi mewakili Indonesia dalam ajang PBIC 2018 yang nanti bakal digelar di Korea</p>\r\n\r\n<p>Kembali <strong>RRQ Endeavour</strong> menunjukkan kelasnya, dengan tampil sebagai juara PBNC 2018 . Layaknya kereta yang melaju cepat, <strong>RRQ Endeavour</strong> menghantam Habis semua lawannya tanpa terkecuali.</p>\r\n\r\n<p>Bukan, bukan setiap lawannya yang bermain jelek atau apa, hanya saja memang <strong>RRQ Endeavour</strong> tampil lebih dominan serta disiplin untuk menunjukkan kelasnya sebagai sang juara PBNC 2018. Banyak yang bilang bahwa ada kutukan tidak ada tim yang bisa menjadi juara PBNC dua kali berturut-turut.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.ggwp.id/wp-content/uploads/2018/09/Juara-PBNC-2018.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Namun <strong>RRQ Endeavour</strong> di bawah komando <strong>NextJack,</strong> memutuskan anggapan serta kutukan tidak beralasan tersebut. Menghajar banyak tim besar seperti <strong>BOOM.ID,</strong> lalu <strong>LIQUID GRC</strong> yang juga tidak bisa menghentikan dominasi sang raja.</p>\r\n\r\n<p>Hingga pada partai final, tim yang baru dua bulan terbentuk yaitu <strong>Alter Ego</strong> yang sebelumnya pada semifinal juga tampil memukau dengan menghajar habis <strong>Capcorn.</strong> Juga tidak bisa menghentikan laju sang raja dalam meraih tahtanya.</p>\r\n\r\n<p>Padahal kalau berbicara soal mutu dan kualitas, <strong>Alter Ego</strong> juga tidak kalah bagusnya jika dibandingkan dengan <strong>RRQ Endeavour.</strong> Perjalanannya menuju babak <em>Grand Final</em> juga tidak lah mudah. <strong>Alter Ego</strong> di halang oleh nama yang tidak kalah ngetop.</p>\r\n\r\n<p>Seperti <strong>XCN VV ENSKY XG</strong> dan juga <strong>Capcorn ID320</strong> pada perempat final dan juga semifinal. Mereka melangkah mulus ke final setelah menghajar <strong>XCN</strong> dengan skor 13-10 dan <strong>Capcorn</strong> dengan skor 10-7.</p>\r\n\r\n<p>Suasana Balai Kartini tempat diselenggarakannya perhelatan <em>Point Blank</em> terbesar se-Indonesia ini, sudah penuh di padati pengunjung sejak pagi. Meskipun <em>gate</em> yang baru dibuka pukul 09.30, para <em>Troopers</em> telah memadati area sejak pagi.</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.ggwp.id/wp-content/uploads/2018/09/juara-pbnc-2018_2.jpg\" style=\"height:450px; width:709px\" /></p>\r\n\r\n<p>Suasana semakin ramai, pada saat <strong>RRQ Endeavour</strong> menaiki panggung, karena memang hampir semua yang datang ke Balai Kartini, merupakan fans atau pendukung setia dari tim yang memiliki arti nama <em>King of Kings</em> ini.</p>\r\n\r\n<p>Terlebih lagi pada saat <strong>NextJack</strong> sang superstar atau bintang utama dari <strong>RRQ,</strong> berhasil menghajar lawan-lawannya dengan menggunakan <em>sniper rifle.</em></p>\r\n\r\n<p>Sorak sorai para pengunjung PBNC 2018 balai kartini semakin menjadi, saat <strong>RRQ</strong> berhasil mengalahkan <strong>Alter Ego</strong> pada babak final dan menjadi juara PBNC 2018. Dengan begitu <strong>Alter Ego</strong> harus puas pada urutan ketiga, sementara pada urutan ketiga ditempati oleh <strong>Capcorn.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://www.ggwp.id/wp-content/uploads/2018/09/Juara-PBNC-2018_3.jpg\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p>Dengan <strong>RRQ Endeavour</strong> yang berhasil menjadi juara PBNC 2018, maka <strong>RRQ Endeavour</strong> akan sekali lagi mewakili Indonesia dalam ajang PBIC 2018 yang nanti bakal digelar di Korea, beberapa bulan mendatang.</p>\r\n\r\n<p>Setelah berhasil mematahkan kutukan untuk menjadi juara PBNC 2018 yang kedua secara beturut-turut, berhasil kan <strong>RRQ Endeavour</strong> kembali mengharumkan nama Indonesia di kancah internasional dengan menjadi juara PBIC 2018?</p>\r\n\r\n<p>Jika memang iya, <strong>RRQ Endeavour</strong> berhasil memecahkan rekor, dengan menjadi juara di kedua ajang ini secara berturut-turut sebanyak dua kali. Kita berdoa saja untuk kemenangan wakil asal Indonesia ini.</p>\r\n\r\n<hr />\r\n<p>Bagaimana tanggapan kalian tentang <strong>RRQ Endeavour</strong> sebagai juara PBNC 2018 ini? Tuliskan dan sampaikan pada kolom komentar. Serta jangan lupa untuk <em>share</em> artikel ini serta <em>tag</em> teman kalian juga ya.</p>', 'RRQ Endeavour akan sekali lagi mewakili Indonesia dalam ajang PBIC 2018 yang nanti bakal digelar di Korea\r\n\r\nKembali RRQ Endeavour menunjukkan kelasnya, dengan tampil sebagai juara PBNC 2018 . Layaknya kereta yang melaju cepat, RRQ Endeavour menghantam Habis semua lawannya tanpa terkecuali.', 'Esport', 3, 0, 19, '2019-07-13 23:38:31', '2019-07-13 23:38:31');
INSERT INTO `articles` (`id`, `judul`, `foto`, `sampul`, `isi`, `preview`, `kategori`, `idcat`, `deleted`, `view`, `created_at`, `updated_at`) VALUES
(8, 'percobaaan2', 'mobile-legends-adventure-plot.jpg', 'mobile-legends-adventure-plot.jpg', '<p><img alt=\"\" src=\"data:image/jpeg;base64,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\" style=\"height:183px; width:275px\" /></p>\r\n\r\n<p>dtjfhraxcjvhkb</p>\r\n\r\n<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div>\r\n\r\n<div>\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scramb', 'Steam', 4, 1, 0, '2019-07-14 00:15:13', '2019-07-14 00:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_kategori` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcat` int(11) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `nama_kategori`, `sub_kategori`, `postcat`, `deleted`, `created_at`, `updated_at`) VALUES
(2, 'Games', 'Game Development', 1, 0, '2019-07-06 10:28:32', '2019-07-06 10:45:10'),
(3, 'Games', 'Review', 1, 1, '2019-07-07 09:25:10', '2019-07-07 09:25:40'),
(4, 'Review', 'Gaming Gear', 2, 0, '2019-07-07 09:25:24', '2019-07-07 09:25:24'),
(5, 'Review', 'Game Review', 2, 0, '2019-07-07 09:26:06', '2019-07-07 09:26:06'),
(6, 'Games', 'Tips & Trick', 1, 0, '2019-07-07 09:26:44', '2019-07-07 11:58:12'),
(7, 'News', 'Esport', 3, 0, '2019-07-07 09:27:09', '2019-07-07 09:27:09'),
(8, 'News', 'Game News', 3, 0, '2019-07-07 09:27:24', '2019-07-07 09:27:24'),
(9, 'Review', 'Games Store', 2, 0, '2019-07-07 11:56:21', '2019-07-07 11:56:21'),
(10, 'Review2', 'Steam', 4, 1, '2019-07-11 22:49:41', '2019-07-11 22:50:21'),
(11, 'Games', 'coba2', 1, 1, '2019-07-14 00:16:51', '2019-07-14 00:17:25'),
(12, 'test', 'twst', 4, 1, '2019-07-14 00:17:37', '2019-07-14 00:17:49');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_artikel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `footer` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider1` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider2` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider3` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paginate` int(11) NOT NULL,
  `mostread` int(11) NOT NULL,
  `facebook` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitor` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `footer`, `logo`, `slider1`, `slider2`, `slider3`, `paginate`, `mostread`, `facebook`, `whatsapp`, `twitter`, `instagram`, `youtube`, `telegram`, `visitor`, `created_at`, `updated_at`) VALUES
(1, '© 2019 | Framework Programming Poltek Tegal', 'logo.png', 'vg2.png', 'vg2.png', '2.png', 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2019-07-06 19:42:45', '2019-07-14 00:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'someone just viewed on asddddddddddddddd', '2019-07-10 00:57:02', '2019-07-10 00:57:02'),
(2, 'someone just viewed on Test Drive Bro', '2019-07-10 01:15:37', '2019-07-10 01:15:37'),
(3, 'someone just viewed on Test Drive Bro', '2019-07-10 01:19:00', '2019-07-10 01:19:00'),
(4, 'someone just viewed on Test Drive Bro', '2019-07-10 01:19:13', '2019-07-10 01:19:13'),
(5, 'You Just Update The Home View ', '2019-07-11 22:35:26', '2019-07-11 22:35:26'),
(6, 'You Just Updated Lorem Ipsum Dolor Sit Amet Article', '2019-07-11 22:36:02', '2019-07-11 22:36:02'),
(7, 'You Just Created Utilizing A Local Scope Created', '2019-07-11 22:47:30', '2019-07-11 22:47:30'),
(8, 'someone just viewed on Utilizing A Local Scope', '2019-07-11 22:47:46', '2019-07-11 22:47:46'),
(9, 'You Just Update The Home View ', '2019-07-11 22:48:25', '2019-07-11 22:48:25'),
(10, 'You Just Updated Utilizing A Local Scope Article', '2019-07-11 22:49:00', '2019-07-11 22:49:00'),
(11, 'someone just viewed on Utilizing A Local Scope', '2019-07-11 22:49:07', '2019-07-11 22:49:07'),
(12, 'You Just Deleted asddddddddddddddd Article', '2019-07-11 22:49:23', '2019-07-11 22:49:23'),
(13, 'you just created new Category Steam', '2019-07-11 22:49:41', '2019-07-11 22:49:41'),
(14, 'you just Updated Steam Category ', '2019-07-11 22:50:02', '2019-07-11 22:50:02'),
(15, 'you just deleted Steam category', '2019-07-11 22:50:21', '2019-07-11 22:50:21'),
(16, 'someone just viewed on Lorem Ipsum Dolor Sit Amet', '2019-07-13 21:34:52', '2019-07-13 21:34:52'),
(17, 'someone just viewed on Lorem Ipsum Dolor Sit Amet', '2019-07-13 21:36:02', '2019-07-13 21:36:02'),
(18, 'someone just viewed on Lorem Ipsum Dolor Sit Amet', '2019-07-13 21:37:21', '2019-07-13 21:37:21'),
(19, 'someone just viewed on Lorem Ipsum Dolor Sit Amet', '2019-07-13 21:39:52', '2019-07-13 21:39:52'),
(20, 'You Just Update The Home View ', '2019-07-13 21:46:32', '2019-07-13 21:46:32'),
(21, 'You Just Update The Home View ', '2019-07-13 21:47:00', '2019-07-13 21:47:00'),
(22, 'You Just Update The Home View ', '2019-07-13 21:47:20', '2019-07-13 21:47:20'),
(23, 'You Just Update The Home View ', '2019-07-13 21:47:55', '2019-07-13 21:47:55'),
(24, 'You Just Update The Home View ', '2019-07-13 21:48:29', '2019-07-13 21:48:29'),
(25, 'You Just Update The Home View ', '2019-07-13 21:52:31', '2019-07-13 21:52:31'),
(26, 'You Just Created Ini Tips Mudah Mendapatkan Skin Legendary Dalam Gim Apapun! Created', '2019-07-13 22:23:50', '2019-07-13 22:23:50'),
(27, 'You Just Created Ini Tips Mudah Mendapatkan Skin Legendary Dalam Gim Apapun! Created', '2019-07-13 22:24:57', '2019-07-13 22:24:57'),
(28, 'You Just Created Ini Tips Mudah Mendapatkan Skin Legendary Dalam Gim Apapun! Created', '2019-07-13 22:25:17', '2019-07-13 22:25:17'),
(29, 'someone just viewed on Ini Tips Mudah Mendapatkan Skin Legendary Dalam Gim Apapun!', '2019-07-13 22:27:20', '2019-07-13 22:27:20'),
(30, 'You Just Created Moonton Ungkap Game Mobile Legends: Adventure Bakal Hadirkan Plot yang Unik! Created', '2019-07-13 22:37:14', '2019-07-13 22:37:14'),
(31, 'You Just Update The Home View ', '2019-07-13 23:10:08', '2019-07-13 23:10:08'),
(32, 'someone just viewed on Moonton Ungkap Game Mobile Legends: Adventure Bakal Hadirkan Plot yang Unik!', '2019-07-13 23:10:21', '2019-07-13 23:10:21'),
(33, 'someone just viewed on Moonton Ungkap Game Mobile Legends: Adventure Bakal Hadirkan Plot yang Unik!', '2019-07-13 23:10:36', '2019-07-13 23:10:36'),
(34, 'someone just viewed on Moonton Ungkap Game Mobile Legends: Adventure Bakal Hadirkan Plot yang Unik!', '2019-07-13 23:10:39', '2019-07-13 23:10:39'),
(35, 'someone just viewed on Moonton Ungkap Game Mobile Legends: Adventure Bakal Hadirkan Plot yang Unik!', '2019-07-13 23:10:42', '2019-07-13 23:10:42'),
(36, 'someone just viewed on Moonton Ungkap Game Mobile Legends: Adventure Bakal Hadirkan Plot yang Unik!', '2019-07-13 23:10:45', '2019-07-13 23:10:45'),
(37, 'someone just viewed on Moonton Ungkap Game Mobile Legends: Adventure Bakal Hadirkan Plot yang Unik!', '2019-07-13 23:10:51', '2019-07-13 23:10:51'),
(38, 'someone just viewed on Moonton Ungkap Game Mobile Legends: Adventure Bakal Hadirkan Plot yang Unik!', '2019-07-13 23:10:54', '2019-07-13 23:10:54'),
(39, 'someone just viewed on Moonton Ungkap Game Mobile Legends: Adventure Bakal Hadirkan Plot yang Unik!', '2019-07-13 23:12:01', '2019-07-13 23:12:01'),
(40, 'You Just Created The King is Back! RRQ Juara PBNC 2018 dan Akan Wakili Indonesia di PBIC Korea Created', '2019-07-13 23:38:31', '2019-07-13 23:38:31'),
(41, 'someone just searched on Games Category', '2019-07-13 23:44:29', '2019-07-13 23:44:29'),
(42, 'someone just searched on Review Category', '2019-07-13 23:44:37', '2019-07-13 23:44:37'),
(43, 'someone just searched on Game Development Category', '2019-07-14 00:09:21', '2019-07-14 00:09:21'),
(44, 'someone just searched on News Category', '2019-07-14 00:09:35', '2019-07-14 00:09:35'),
(45, 'someone just viewed on The King is Back! RRQ Juara PBNC 2018 dan Akan Wakili Indonesia di PBIC Korea', '2019-07-14 00:09:47', '2019-07-14 00:09:47'),
(46, 'someone just searched on Games Category', '2019-07-14 00:11:13', '2019-07-14 00:11:13'),
(47, 'someone just searched on Tips & Trick Category', '2019-07-14 00:11:35', '2019-07-14 00:11:35'),
(48, 'You Just Update The Home View ', '2019-07-14 00:12:40', '2019-07-14 00:12:40'),
(49, 'You Just Update The Home View ', '2019-07-14 00:13:20', '2019-07-14 00:13:20'),
(50, 'You Just Created percobaaan Created', '2019-07-14 00:15:13', '2019-07-14 00:15:13'),
(51, 'You Just Updated percobaaan2 Article', '2019-07-14 00:15:48', '2019-07-14 00:15:48'),
(52, 'You Just Deleted percobaaan2 Article', '2019-07-14 00:15:58', '2019-07-14 00:15:58'),
(53, 'You Just Deleted percobaaan2 Article', '2019-07-14 00:16:30', '2019-07-14 00:16:30'),
(54, 'you just created new Category coba', '2019-07-14 00:16:51', '2019-07-14 00:16:51'),
(55, 'you just Updated coba2 Category ', '2019-07-14 00:17:15', '2019-07-14 00:17:15'),
(56, 'you just deleted coba2 category', '2019-07-14 00:17:25', '2019-07-14 00:17:25'),
(57, 'you just created new Category twst', '2019-07-14 00:17:37', '2019-07-14 00:17:37'),
(58, 'you just deleted twst category', '2019-07-14 00:17:49', '2019-07-14 00:17:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_05_27_125411_comments', 1),
(2, '2019_05_27_125443_notifications', 1),
(3, '2019_05_27_125502_logs', 1),
(4, '2019_05_27_125513_users', 1),
(5, '2019_05_27_125524_articles', 1),
(6, '2019_05_27_125555_categories', 1),
(7, '2019_05_27_125624_replies', 1),
(8, '2019_07_06_192029_create_homes_table', 2),
(9, '2019_07_10_045909_users', 3),
(10, '2019_07_10_050205_password_reset_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset`
--

CREATE TABLE `password_reset` (
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_artikel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ilyas abdurahman yusuf', 'andrenuryana@gmail.com', NULL, '$2y$10$.4yhKwZ2lfcNGJ.MbbkxSelLtfahiihZWP7zbBatt9f9Y9TODQ4BG', 'KP4BKF3HxpNbwCsITVb21lMlI9Sr15o75dTJPqQDpxiZUXX4J6GxOMrLtNcC', '2019-07-09 22:23:01', '2019-07-09 22:23:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_id_unique` (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_id_unique` (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `comments_id_unique` (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `logs_id_unique` (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notifications_id_unique` (`id`);

--
-- Indexes for table `password_reset`
--
ALTER TABLE `password_reset`
  ADD KEY `password_reset_email_index` (`email`),
  ADD KEY `password_reset_token_index` (`token`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `replies_id_unique` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
