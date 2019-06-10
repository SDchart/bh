-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-06-10 15:14:39
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bh`
--

-- --------------------------------------------------------

--
-- 表的结构 `bhs_hg_ms`
--

CREATE TABLE `bhs_hg_ms` (
  `hgid` int(11) NOT NULL,
  `hgname` varchar(128) CHARACTER SET utf8 NOT NULL,
  `hguptime` date DEFAULT NULL,
  `hgprice` int(11) DEFAULT NULL,
  `img` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `cont` varchar(512) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `bhs_hg_ms`
--

INSERT INTO `bhs_hg_ms` (`hgid`, `hgname`, `hguptime`, `hgprice`, `img`, `cont`) VALUES
(1, 'HGUC 1/144 グスタフ・カール(ユニコーンVer.)', '2019-02-16', 2592, 'img/hg/hg_3041.jpg', '『機動戦士ガンダムUC』に登場する量産型汎用MSを初立体化！'),
(2, 'HG 1/144 ガンダムザラキエル', '2019-02-09', 2700, 'img/hg/hg_3072.jpg', '外伝『ガンダムビルドダイバーズブレイク』よりアインソフの使用機「ガンダムザラキエル」がキット化！ '),
(3, 'HGUC 1/144 ナラティブガンダム C装備', '2019-03-09', 2484, 'img/hg/hg_3107.jpg', '『機動戦士ガンダムNT』に登場するナラティブガンダム第３の装備を再現！'),
(4, 'HG 1/144 ガンダムベース限定 イフリート改[メタリックグロスインジェクション]', '2019-02-01', 2160, 'img/hg/hg_3110.jpg', '全世界のガンプラファンにむけた、公式ガンプラ総合施設「ガンダムベース」の限定ガンプラです。『機動戦士ガンダム外伝 ＴＨＥ ＢＬＵＥ ＤＥＳＴＩＮＹ』より、イフリート改がメタリックグロスインジェクション仕様となってガンダムベース限定品として登場。'),
(5, 'HG 1/144 ブルーディスティニー2号機“EXAM”[メタリックグロスインジェクション]', '2019-02-01', 1728, 'img/hg/hg_3111.jpg', '「ブルーディスティニー2号機」がメタリックグロスインジェクション仕様となってイベント限定品として登場！'),
(6, 'HG 1/144 ブルーディスティニー3号機“EXAM”[メタリックグロスインジェクション]', '2019-02-01', 1728, 'img/hg/hg_3112.jpg', '「ブルーディスティニー3号機」がメタリックグロスインジェクション仕様となってイベント限定品として登場！'),
(7, 'HGCE 1/144 デスティニーガンダム', '2019-05-31', 2376, 'img/hg/hg_3116.jpg', '『機動戦士ガンダムSEED DESTINY』より主役機デスティニーガンダムをHG最新フォーマットにて立体化！'),
(8, 'HG 1/144 シャア専用ザクII 赤い彗星Ver.', '2019-04-27', 1944, 'img/hg/hg_3122.jpg', '『機動戦士ガンダム THE ORIGIN』に登場するシャア専用ザクIIを新規パッケージと新たな武装でリニューアル！'),
(9, 'HG 1/144 ザクII C-6/R6型', '2019-04-27', 1944, 'img/hg/hg_3123.jpg', '『機動戦士ガンダム THE ORIGIN』に登場するザクII C-6/R6型が登場！'),
(10, 'HGAC 1/144 マグアナック', '2019-04-20', 1296, 'img/hg/hg_3125.jpg', 'TVアニメ『新機動戦記ガンダムW』より、総勢40機からなるMS部隊マグアナック隊の一般機をHGACで立体化！'),
(11, 'HG 1/144 ガンダムベース限定 シナンジュ・スタイン (ナラティブVer.) [エクストラフィニッシュ]', '2019-03-29', 5184, 'img/hg/hg_3206.jpg', '全世界のガンプラファンにむけた、公式ガンプラ総合施設「ガンダムベース」の限定ガンプラです。『機動戦士ガンダムNT』より、NT版シナンジュ・スタインがエクストラフィニッシュ仕様となって登場！'),
(12, 'HG 1/144 ガンダムベース限定 ユニコーンガンダム3号機 フェネクス (デストロイモード) (ナラティブVer.)(最終決戦仕様)', '2019-04-06', 3024, 'img/hg/hg_3233.jpg', '全世界のガンプラファンにむけた、公式ガンプラ総合施設「ガンダムベース」の限定ガンプラです。ユニコーンガンダム3号機 フェネクス（デストロイモード）（ナラティブVer.）が劇中の最終決戦をイメージしたカラーでガンダムベース限定品として登場！'),
(13, 'HG 1/144 ナラティブガンダム C装備 [クリアカラー]', '2019-04-06', 2484, 'img/hg/hg_3235.jpg', '「ナラティブガンダム C装備」がクリアカラーになって、イベント限定品として登場！'),
(14, 'HGUC 1/144 シルヴァ・バレト・サプレッサー', '2019-06-22', 2916, 'img/hg/hg_3238.jpg', '『機動戦士ガンダムNT』に登場する、シルヴァ・バレト・サプレッサーをHGUCで立体化！'),
(15, 'HGCE 1/144 デスティニーガンダム(ハイネ専用機)', '2019-07-01', 2376, 'img/hg/hg_3241.jpg', '＜数量限定生産＞『機動戦士ガンダムSEED DESTINY』に登場したデスティニーガンダムのハイネ専用機がHGCEで立体化！'),
(16, 'HGUC 1/144 ユニコーンガンダム3号機 フェネクス(ユニコーンモード)(ナラティブVer.)[ゴールドコーティング]', '2019-08-01', 5400, 'img/hg/hg_3244.jpg', '『機動戦士ガンダムNT』より、NT版フェネクス（ユニコーンモード）がゴールドコーティングを施し、外装を超豪華なメッキ仕様で登場！'),
(17, 'HGBD 1/144 ガンダムダブルオースカイ [ダイブイントゥディメンションクリア]', '2019-05-11', 1620, 'img/hg/hg_3262.jpg', 'ガンダムダブルオースカイがクリアカラーになって登場！'),
(18, 'HG 1/144 ガンダムサンドロック＆モバイルアプリ プロダクトコードセット(仮)', '2019-09-01', 1620, 'img/hg/hg_3324.jpg', '『新機動戦記ガンダムＷ』より「カトル・ラバーバ・ウィナー」の搭乗機、ガンダムサンドロックがHGで登場！'),
(19, 'HG 1/144 フリーダムガンダムvsフォースインパルスガンダム(運命の対決セット)[メタリック]', '2019-07-01', 4860, 'img/hg/hg_3351.jpg', '『機動戦士ガンダムSEED DESTINY』で激闘を繰り広げたフリーダムガンダム、フォースインパルスガンダムのセットがHGイベント限定カラーで発売！'),
(20, 'HG 1/144 デスティニーガンダム [クリアカラー]', '2019-07-01', 2376, 'img/hg/hg_3352.jpg', '『機動戦士ガンダムSEED DESTINY』より主役機デスティニーガンダムをHG最新フォーマット・クリアカラーにて立体化！');

-- --------------------------------------------------------

--
-- 表的结构 `bhs_hg_ms_pic`
--

CREATE TABLE `bhs_hg_ms_pic` (
  `pid` int(11) NOT NULL,
  `hgmsid` int(11) DEFAULT NULL,
  `hgimg` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `hgbanner` varchar(256) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `bhs_hg_ms_pic`
--

INSERT INTO `bhs_hg_ms_pic` (`pid`, `hgmsid`, `hgimg`, `hgbanner`) VALUES
(1, 1, 'img/hg/detail/detail_3041_1.jpg', NULL),
(2, 1, 'img/hg/detail/detail_3041_2.jpg', NULL),
(3, 1, 'img/hg/detail/detail_3041_3.jpg', NULL),
(4, 1, 'img/hg/detail/detail_3041_4.jpg', NULL),
(5, 1, 'img/hg/detail/detail_3041_5.jpg', NULL),
(6, 2, 'img/hg/detail/detail_3072_1.jpg', NULL),
(7, 2, 'img/hg/detail/detail_3072_2.jpg', NULL),
(8, 2, 'img/hg/detail/detail_3072_3.jpg', NULL),
(9, 2, 'img/hg/detail/detail_3072_4.jpg', NULL),
(10, 2, 'img/hg/detail/detail_3072_5.jpg', NULL),
(11, 2, 'img/hg/detail/detail_3072_6.jpg', NULL),
(12, 2, 'img/hg/detail/detail_3072_7.jpg', NULL),
(13, 2, 'img/hg/detail/detail_3072_8.jpg', NULL),
(14, 3, 'img/hg/detail/detail_3107_1.jpg\r\n', NULL),
(15, 3, 'img/hg/detail/detail_3107_2.jpg', NULL),
(16, 3, 'img/hg/detail/detail_3107_3.jpg', NULL),
(17, 3, 'img/hg/detail/detail_3107_4.jpg', NULL),
(18, 3, 'img/hg/detail/detail_3107_5.jpg', NULL),
(19, 3, 'img/hg/detail/detail_3107_6.jpg', NULL),
(20, 4, 'img/hg/detail/detail_3110_1.jpg', NULL),
(21, 4, 'img/hg/detail/detail_3110_2.jpg', NULL),
(22, 4, 'img/hg/detail/detail_3110_3.jpg', NULL),
(23, 4, 'img/hg/detail/detail_3110_4.jpg', NULL),
(24, 5, 'img/hg/detail/detail_3111_1.jpg', NULL),
(25, 5, 'img/hg/detail/detail_3111_2.jpg', NULL),
(26, 6, 'img/hg/detail/detail_3112_1.jpg', NULL),
(27, 6, 'img/hg/detail/detail_3112_2.jpg', NULL),
(28, 7, 'img/hg/detail/detail_3116_1.jpg', NULL),
(29, 7, 'img/hg/detail/detail_3116_2.jpg', NULL),
(30, 7, 'img/hg/detail/detail_3116_3.jpg', NULL),
(31, 7, 'img/hg/detail/detail_3116_4.jpg', NULL),
(32, 7, 'img/hg/detail/detail_3116_5.jpg', NULL),
(33, 7, 'img/hg/detail/detail_3116_6.jpg', NULL),
(34, 7, 'img/hg/detail/detail_3116_7.jpg', NULL),
(35, 7, 'img/hg/detail/detail_3116_8.jpg', NULL),
(36, 8, 'img/hg/detail/detail_3122_1.jpg', NULL),
(37, 8, 'img/hg/detail/detail_3122_2.jpg', NULL),
(38, 8, 'img/hg/detail/detail_3122_3.jpg', NULL),
(39, 8, 'img/hg/detail/detail_3122_4.jpg', NULL),
(40, 8, 'img/hg/detail/detail_3122_5.jpg', NULL),
(41, 8, 'img/hg/detail/detail_3122_6.jpg', NULL),
(42, 9, 'img/hg/detail/detail_3123_1.jpg', NULL),
(43, 9, 'img/hg/detail/detail_3123_2.jpg', NULL),
(44, 9, 'img/hg/detail/detail_3123_3.jpg', NULL),
(45, 9, 'img/hg/detail/detail_3123_4.jpg', NULL),
(46, 9, 'img/hg/detail/detail_3123_5.jpg', NULL),
(47, 9, 'img/hg/detail/detail_3123_6.jpg', NULL),
(48, 9, 'img/hg/detail/detail_3123_7.jpg', NULL),
(49, 10, 'img/hg/detail/detail_3125_1.jpg', NULL),
(50, 10, 'img/hg/detail/detail_3125_2.jpg', NULL),
(51, 10, 'img/hg/detail/detail_3125_3.jpg', NULL),
(52, 10, 'img/hg/detail/detail_3125_4.jpg', NULL),
(53, 10, 'img/hg/detail/detail_3125_5.jpg', NULL),
(54, 10, 'img/hg/detail/detail_3125_6.jpg', NULL),
(55, 10, 'img/hg/detail/detail_3125_7.jpg', NULL),
(56, 11, 'img/hg/detail/detail_3206_1.jpg', NULL),
(57, 11, 'img/hg/detail/detail_3206_2.jpg', NULL),
(58, 11, 'img/hg/detail/detail_3206_3.jpg', NULL),
(59, 12, 'img/hg/detail/detail_3233_1.jpg', NULL),
(60, 12, 'img/hg/detail/detail_3233_2.jpg', NULL),
(61, 12, 'img/hg/detail/detail_3233_3.jpg', NULL),
(62, 12, 'img/hg/detail/detail_3233_4.jpg', NULL),
(63, 13, 'img/hg/detail/detail_3235_1.jpg', NULL),
(64, 13, 'img/hg/detail/detail_3235_2.jpg', NULL),
(65, 14, 'img/hg/detail/detail_3238_1.jpg', NULL),
(66, 14, 'img/hg/detail/detail_3238_2.jpg', NULL),
(67, 14, 'img/hg/detail/detail_3238_3.jpg', NULL),
(68, 14, 'img/hg/detail/detail_3238_4.jpg', NULL),
(69, 14, 'img/hg/detail/detail_3238_5.jpg', NULL),
(70, 15, 'img/hg/detail/detail_3241_1.jpg', NULL),
(71, 15, 'img/hg/detail/detail_3241_2.jpg', NULL),
(72, 15, 'img/hg/detail/detail_3241_3.jpg', NULL),
(73, 15, 'img/hg/detail/detail_3241_4.jpg', NULL),
(74, 15, 'img/hg/detail/detail_3241_5.jpg', NULL),
(75, 15, 'img/hg/detail/detail_3241_6.jpg', NULL),
(76, 16, 'img/hg/detail/detail_3244_1.jpg', NULL),
(77, 16, 'img/hg/detail/detail_3244_2.jpg', NULL),
(78, 16, 'img/hg/detail/detail_3244_3.jpg', NULL),
(79, 16, 'img/hg/detail/detail_3244_4.jpg', NULL),
(80, 17, 'img/hg/detail/detail_3262_1.jpg', NULL),
(81, 17, 'img/hg/detail/detail_3262_2.jpg', NULL),
(82, 18, 'img/hg/detail/detail_3324_1.jpg', NULL),
(83, 18, 'img/hg/detail/detail_3324_2.jpg', NULL),
(84, 18, 'img/hg/detail/detail_3324_3.jpg', NULL),
(85, 19, 'img/hg/detail/detail_3351_1.jpg', NULL),
(86, 19, 'img/hg/detail/detail_3351_2.jpg', NULL),
(87, 19, 'img/hg/detail/detail_3351_3.jpg', NULL),
(88, 19, 'img/hg/detail/detail_3351_4.jpg', NULL),
(89, 19, 'img/hg/detail/detail_3351_5.jpg', NULL),
(90, 19, 'img/hg/detail/detail_3351_6.jpg', NULL),
(91, 20, 'img/hg/detail/detail_3352_1.jpg', NULL),
(92, 20, 'img/hg/detail/detail_3352_2.jpg', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `bhs_hg_ms_tip`
--

CREATE TABLE `bhs_hg_ms_tip` (
  `tid` int(11) NOT NULL,
  `hgmsid` int(11) DEFAULT NULL,
  `tip` varchar(512) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `bhs_hg_ms_tip`
--

INSERT INTO `bhs_hg_ms_tip` (`tid`, `hgmsid`, `tip`) VALUES
(1, 1, 'プロポーション、可動域、色再現に至るまで徹底考証。'),
(2, 1, '胸部に内蔵されたロケットランチャーの展開ギミックを差し替えなしで再現。'),
(3, 1, 'シールドアームはフレキシブルに可動。'),
(4, 1, 'サイドアーマーにはビーム・サーベルを収納できる。'),
(5, 1, '膝関節のスライド機構により脚部の可動範囲が拡大。'),
(6, 2, '驚愕の3つの形態への変形を忠実に再現！GNブル形態やGNスカイ形態など、劇中の設定を再現可能！'),
(7, 3, '初回生産分のみ、『機動戦士ガンダムNT』を振り返る特別冊子を封入！'),
(8, 3, 'ナラティブガンダムのC装備を新規造形パーツにより再現。'),
(9, 3, 'パーツ分けにより腹部のコア・ファイターや脚部の色分けを再現。ユニコーンガンダムを想起させる意匠を全身に纏っている。'),
(10, 3, 'C装備で初めて装備するビーム・ライフル、サイコフレーム付属のシールドをセット。左右の握り手に加え、武器持ち用の右手パーツも付属。'),
(11, 3, 'コロニー内での戦闘時、NT-D発動状態の赤いデュアルアイを再現するシールが付属。'),
(12, 4, 'イフリート改の機体形状を徹底再現！ＭＳ－０８ＴＸイフリートをベースに、ＥＸＡＭシステムを搭載するために大型化、高出力化された各部機体形状を徹底再現。'),
(13, 4, '腰部にはヒート・サーベルが懸架可能！'),
(14, 4, 'スパイクアーマーの形状・カラーを再現！'),
(15, 4, '６連装ミサイル・ポッド、大出力バーニアを増設した脚部を再現！'),
(16, 4, 'ヒート・サーベルの刀身にはクリアパーツを採用。'),
(17, 5, '宇宙用バックパックは設定通りにブルーディスティニー1号機と同型のバックパックに重ねて装着する仕様！'),
(18, 5, '肩アーマーは赤と青の2種類が付属し、赤い肩でニムバス機、青い肩で“奪われる前”の連邦軍機を選択式で再現できる！'),
(19, 5, 'ツインカメラは選択式で、通常状態とEXAMシステム発動状態を再現可能！'),
(20, 6, '「EXAMシステム発動状態」は選択式で再現できるほか、幅広い可動域により劇中イメージそのままのポージングが可能！'),
(21, 6, '3号機特有の陸戦型シールドが新規造形で再現されているほか、『機動戦士ガンダム外伝 ＴＨＥ ＢＬＵＥ ＤＥＳＴＩＮＹ』でジム・ドミナンスが使用する「二連ビーム・ライフル」が付属！'),
(22, 7, '完全新規造形。胴体に内蔵された二重関節によりデスティニーガンダムに特徴的な前屈するアクションを再現できる。'),
(23, 7, 'サイドアーマーは後方にスライドすることで脚部との干渉を避け、可動範囲を制限しない構造となっている。'),
(24, 7, 'デスティニーガンダムの象徴でもある「光の翼」や掌中ビーム砲「パルマフィオキーナ」 のビームエフェクトはクリアパーツで付属。'),
(25, 7, 'ハンドパーツは武器を保持できる握り手や「パルマフィオキーナ」用の開き手が付属。'),
(26, 7, 'アロンダイト、高エネルギー長射程ビーム砲、ビームブーメラン他、豊富な武装が付属。'),
(27, 8, '新たに付属するザクマシンガンはお馴染みのドラムマガジン式とベルト給弾式の２丁が付属。'),
(28, 8, 'ファルメル隊仕様のマーキングシールが付属。作品中の装甲デザインが再現できる。'),
(29, 8, '潤沢な武装パーツによりバリエーション豊かな飾り方が可能。'),
(30, 9, '劇中同様のファルメル隊を再現したくなる新規造形の武装パーツにより、魅力的な量産機を演出。'),
(31, 9, '各部のマーキングによりデニム曹長機、スレンダー伍長機、ジーン兵長機、パチェコ機が再現可能。'),
(32, 9, '肩のスパイクアーマー接続箇所や胸部装甲のバルカン砲も精密に再現されている。'),
(33, 9, 'ベルト給弾式マシンガンをはじめ、豊富な武装が付属。\r\n'),
(34, 10, '「Fine Build」のコンセプトをもとに、組み立てやすさを追求した構造を採用。'),
(35, 10, 'シールドはバックパックに、ヒートトマホークは腰部にマウントが可能。'),
(36, 10, 'ショルダーアーマーの跳ね上げギミックを搭載。'),
(37, 11, '「袖付き」の特徴である胸部、前腕部のエングレービングをモールド表現とホイルシールで再現。'),
(38, 11, 'HG史上最高峰の可動表現を実現。大きなアクションも自然に再現できる。'),
(39, 11, 'ビーム・ライフルは、シナンジュ・バズーカとの接続が可能。豊富な武装が付属。'),
(40, 12, '全身のサイコフレームはラメ入りのクリアパーツで再現。'),
(41, 12, '特徴的なシルエットを再現するアームド・アーマーDEの取り付け基部。'),
(42, 12, '鳥の飾り羽の様な形状のスタビライザーは可動式。'),
(43, 12, '広範囲の可動域と各ギミックにより迫力のアクションを再現。'),
(44, 13, 'パーツ分けにより腹部のコア・ファイターや脚部の色分けを再現。ユニコーンガンダムを想起させる意匠を全身に纏っている。'),
(45, 13, 'C装備で初めて装備するビーム・ライフル、サイコフレーム付属のシールドをセット。左右の握り手に加え、武器持ち用の右手パーツも付属。'),
(46, 13, 'コロニー内での戦闘時、NT-D発動状態の赤いデュアルアイを再現するシールが付属。'),
(47, 14, 'ビーム・マグナム発射後の破損した右腕部を交換するギミックを再現。バックパックに収納された右腕パーツを腰部のクレーンを使い交換できる。'),
(48, 14, 'ガンダムタイプの頭部形状も設定イメージに合わせ造形。'),
(49, 14, 'ハンドパーツの他に、交換用の右腕部パーツとビーム・マグナムが付属。'),
(50, 15, 'ハイネ・ヴェステンフルスのパーソナルカラーをイメージ。'),
(51, 15, '胴体に内蔵された二重関節により、特徴的な前屈アクションを再現できる。'),
(52, 15, 'サイドアーマーは後方にスライドすることで脚部との干渉を避け、可動範囲を制限しない構造となっている。'),
(53, 15, 'デスティニーガンダムの象徴でもある「光の翼」がクリアパーツで付属。'),
(54, 15, 'ハンドパーツは武器の保持が可能な握り手や「パルマフィオキーナ」用の開き手が付属。'),
(55, 15, '「パルマフィオキーナ」 のビームエフェクトはクリアパーツで再現。'),
(56, 15, 'アロンダイト、高エネルギー長射程ビーム砲、ビームブーメラン他、豊富な武装が付属！'),
(57, 16, 'アームド・アーマーDEに接続するスタビライザーはブロックごとに可動。'),
(58, 16, 'ユニコーンガンダムの特徴的な武装が付属。'),
(59, 17, 'GNドライヴにデスティニーのウイングユニットを組み込んだ本機独自の装備「スカイドライヴユニット」の形状を再現！'),
(60, 17, 'ビームライフル、ビームサーベル、バスターソード、ロングライフルなど多彩な武装が付属し、バスターソードとロングライフルはスカイドライヴユニットに懸架させることが可能！'),
(61, 17, '広い可動域で、劇中同様に迫力あるアクションポーズを楽しめる！'),
(62, 18, 'ベストプロポーションと劇中ポーズの再現を両立！'),
(63, 18, '両腕が背中まで届き、ヒートショーテルを背中から抜くアクションが可能。'),
(64, 18, '手首はヒートショーテルを斜めに構えられる構造。'),
(65, 18, '組み立て易さを追求。計算された関節構造や組むだけで本体カラーを再現できるパーツ分割を随所に施している。'),
(66, 18, '初回生産限定！スマートフォンアプリ用プロダクトコードを同梱！'),
(67, 19, '成形色をメタリックに変更し重厚感をアップ。'),
(68, 19, 'アクションベース4が付属し、迫力あるアクションポーズで飾ることが可能。(ベースは2枚付属)'),
(69, 19, '通常タイプとポージング用のパースの効いたタイプ2本のエクスカリバーが付属。'),
(70, 19, '腹部を貫かれたフリーダムの胴体パーツ(単色成形)が付属し、エクスカリバー、アクションベースと組み合わせることで劇中名シーンを再現できる。'),
(71, 20, '完全新規造形。胴体に内蔵された二重関節によりデスティニーガンダムに特徴的な前屈するアクションを再現できる。'),
(72, 20, 'サイドアーマーは後方にスライドすることで脚部との干渉を避け、可動範囲を制限しない構造となっている。'),
(73, 20, 'ハンドパーツは武器を保持できる握り手や「パルマフィオキーナ」用の開き手が付属。'),
(74, 20, 'アロンダイト、高エネルギー長射程ビーム砲、ビームブーメラン他、豊富な武装が付属。');

-- --------------------------------------------------------

--
-- 表的结构 `bhs_user`
--

CREATE TABLE `bhs_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `upwd` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(32) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `bhs_user`
--

INSERT INTO `bhs_user` (`uid`, `uname`, `phone`, `upwd`, `email`) VALUES
(1, 'SDchart', '18674162506', '434a9b811ef01993ee27e45d3480e820', '369999245@qq.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bhs_hg_ms`
--
ALTER TABLE `bhs_hg_ms`
  ADD PRIMARY KEY (`hgid`),
  ADD UNIQUE KEY `hgname` (`hgname`);

--
-- Indexes for table `bhs_hg_ms_pic`
--
ALTER TABLE `bhs_hg_ms_pic`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `hgmsid` (`hgmsid`);

--
-- Indexes for table `bhs_hg_ms_tip`
--
ALTER TABLE `bhs_hg_ms_tip`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `hgmsid` (`hgmsid`);

--
-- Indexes for table `bhs_user`
--
ALTER TABLE `bhs_user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `bhs_hg_ms`
--
ALTER TABLE `bhs_hg_ms`
  MODIFY `hgid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 使用表AUTO_INCREMENT `bhs_hg_ms_pic`
--
ALTER TABLE `bhs_hg_ms_pic`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- 使用表AUTO_INCREMENT `bhs_hg_ms_tip`
--
ALTER TABLE `bhs_hg_ms_tip`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- 使用表AUTO_INCREMENT `bhs_user`
--
ALTER TABLE `bhs_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 限制导出的表
--

--
-- 限制表 `bhs_hg_ms_pic`
--
ALTER TABLE `bhs_hg_ms_pic`
  ADD CONSTRAINT `bhs_hg_ms_pic_ibfk_1` FOREIGN KEY (`hgmsid`) REFERENCES `bhs_hg_ms` (`hgid`);

--
-- 限制表 `bhs_hg_ms_tip`
--
ALTER TABLE `bhs_hg_ms_tip`
  ADD CONSTRAINT `bhs_hg_ms_tip_ibfk_1` FOREIGN KEY (`hgmsid`) REFERENCES `bhs_hg_ms` (`hgid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
