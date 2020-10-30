
-- The first time this runs, you'll want to set all channels non-visible and move to absurdly high number
-- UPDATE channel SET channum = channum+10000, visible=FALSE;
-- Otherwise, just mark as invisible and move on:
UPDATE channel 
SET 
 visible = FALSE;

-- Assign channel numbers for FreeView, make channels visible as desired
-- SD BBC One for local news
UPDATE channel SET channum=1, visible=1, xmltvid="west-midlands.bbc1.bbc.co.uk" WHERE sourceid="1" AND serviceid="4165"; #'BBC ONE West Midlands';
-- Pointless, we have HD 
-- UPDATE channel SET channum=2, visible=1, xmltvid="midlands.bbc2.bbc.co.uk" WHERE sourceid="1" AND serviceid="4287"; #'BBC TWO England';
-- I don't care about ITV local news, maybe you do
-- UPDATE channel SET channum=3, visible=1, xmltvid="central.itv1.itv.co.uk" WHERE sourceid="1" AND serviceid="8262"; #'ITV 1 Central';
-- UPDATE channel SET channum=4, visible=1, xmltvid="channel4.com" WHERE sourceid="1" AND serviceid="8384"; #'Channel 4';
UPDATE channel SET channum=105, visible=1, xmltvid="channel5.co.uk" WHERE sourceid="1" AND serviceid="8500"; #'Channel 5';
UPDATE channel SET channum=113, visible=1, xmltvid="itv2.itv.co.uk" WHERE sourceid="1" AND serviceid="8325"; #'ITV2';
-- HD available
-- UPDATE channel SET channum=7, visible=1, xmltvid="bbcthree.bbc.co.uk" WHERE sourceid="1" AND serviceid="4288"; #'BBC THREE';
-- Not in English
-- UPDATE channel SET channum=8, visible=1, xmltvid="alba.bbc.co.uk" WHERE name='BBC ALBA';
-- HD available
-- UPDATE channel SET channum=9, visible=1, xmltvid="bbcfour.bbc.co.uk" WHERE sourceid="1" AND serviceid="4544"; #'BBC FOUR';
UPDATE channel 
SET 
    channum = 115,
    visible = 1,
    xmltvid = 'itv3.itv.co.uk'
WHERE
    sourceid = '1' AND serviceid = '16048'; #'ITV3';
UPDATE channel SET channum=144, visible=1, xmltvid="sky-three.sky.com" WHERE sourceid="1" AND serviceid="22208"; #'Pick TV';
UPDATE channel SET channum=12, visible=1, xmltvid="yesterday.uktv.co.uk" WHERE sourceid="1" AND serviceid="25792"; #'Yesterday';
UPDATE channel SET channum=121, visible=1, xmltvid="tsod.plus-1.channel4.com" WHERE sourceid="1" AND serviceid="8452"; #'Channel 4+1';
UPDATE channel SET channum=124, visible=1, xmltvid="more4.channel4.com" WHERE sourceid="1" AND serviceid="8442"; #'More 4';
UPDATE channel SET channum=300, visible=1, xmltvid="filmfour.channel4.com" WHERE sourceid="1" AND serviceid="27136"; #'Film4';
UPDATE channel SET channum=301, visible=1, xmltvid="tsod.plus-1.filmfour.channel4.com" WHERE sourceid="1" AND serviceid="27104"; #'Film4+1';
UPDATE channel SET channum=800, visible=1, xmltvid="qvcuk.com"  WHERE sourceid="1" AND serviceid="13120"; #'QVC';
UPDATE channel SET channum=18, visible=1, xmltvid="4music.channel4.com" WHERE sourceid="1" AND serviceid="25664"; #'4Music';
UPDATE channel SET channum=19, visible=1, xmltvid="dave.uktv.co.uk" WHERE sourceid="1" AND serviceid="22272"; #'Dave';
UPDATE channel SET channum=20, visible=1, xmltvid="really.uktv.co.uk" WHERE sourceid="1" AND serviceid="23712"; #'Really';
UPDATE channel SET channum=146, visible=1, xmltvid="uk.viva.tv"  WHERE sourceid="1" AND serviceid="25728"; #'VIVA';
-- UPDATE channel SET channum=812, visible=1, xmltvid="idealworld.tv"  WHERE sourceid="1" AND serviceid="25920"; #'Ideal World';
-- UPDATE channel SET channum=802, visible=1, xmltvid="bid.tv"  WHERE sourceid="1" AND serviceid="14272"; #'Bid TV';
UPDATE channel SET channum=117, visible=1, xmltvid="itv4.itv.co.uk" WHERE sourceid="1" AND serviceid="28032"; #'ITV4';
UPDATE channel SET channum=25, visible=1, xmltvid="tsod.plus-1.dave.uktv.co.uk" WHERE sourceid="1" AND serviceid="23936"; #'Dave ja vu';
UPDATE channel SET channum=114, visible=1, xmltvid="tsod.plus-1.itv2.itv.co.uk" WHERE sourceid="1" AND serviceid="15952"; #'ITV2 +1';
UPDATE channel SET channum=122, visible=1, xmltvid="e4.channel4.com" WHERE sourceid="1" AND serviceid="8448"; #'E4';
UPDATE channel SET channum=123, visible=1, xmltvid="tsod.plus-1.e4.channel4.com" WHERE sourceid="1" AND serviceid="22336"; #'E4+1';
UPDATE channel SET channum=131, visible=1, xmltvid="fiver.channel5.co.uk" WHERE sourceid="1" AND serviceid="12928"; #'5*';
UPDATE channel SET channum=129, visible=1, xmltvid="fiveusa.channel5.co.uk" WHERE sourceid="1" AND serviceid="12992"; #'5 USA';
UPDATE channel SET channum=112, visible=1, xmltvid="tsod.plus-1.central-macro.itv1.itv.co.uk" WHERE sourceid="1" AND serviceid="8362"; #'ITV 1+1';
-- UPDATE channel SET channum=36, visible=1  WHERE sourceid="1" AND serviceid="24384"; #'Create & Craft';
-- UPDATE channel SET channum=801, visible=1, xmltvid="price-drop.tv"  WHERE sourceid="1" AND serviceid="22464"; #'Price-Drop TV';
UPDATE channel SET channum=38, visible=1, xmltvid="quest.discoveryeurope.com" WHERE sourceid="1" AND serviceid="14498"; #'Quest';
-- UPDATE channel SET channum=39, visible=1  WHERE sourceid="1" AND serviceid="14532"; #'The Zone';
-- UPDATE channel SET channum=40, visible=1  WHERE sourceid="1" AND serviceid="27840"; #'Rocks & Co 1';
-- UPDATE channel SET channum=43, visible=1  WHERE sourceid="1" AND serviceid="24448"; #'Gems TV';
UPDATE channel SET channum=128, visible=1, xmltvid="tsod.plus-1.channel5.co.uk" WHERE sourceid="1" AND serviceid="13024"; #'Channel 5+1';
-- UPDATE channel SET channum=45, visible=1  WHERE name='Lottery Xtra';
UPDATE channel SET channum=46, visible=1  WHERE sourceid="1" AND serviceid="22226"; #'Challenge';
-- UPDATE channel SET channum=48, visible=1  WHERE sourceid="1" AND serviceid="28288"; #'QVC Beauty';
UPDATE channel SET channum=403, visible=1, xmltvid="freeview.foodnetwork.com" WHERE sourceid="1" AND serviceid="23040"; #'Food Network';
-- UPDATE channel SET channum=60, visible=1  WHERE sourceid="1" AND serviceid="14372"; #'The Jewellery Channel';
-- HD available
-- UPDATE channel SET channum=70, visible=1, xmltvid="cbbc.bbc.co.uk" WHERE sourceid="1" AND serviceid="4608"; #'CBBC';
-- UPDATE channel SET channum=71, visible=1, xmltvid="cbeebies.bbc.co.uk" WHERE sourceid="1" AND serviceid="4672"; #'CBeebies';
UPDATE channel SET channum=602, visible=1, xmltvid="citv.itv.co.uk" WHERE sourceid="1" AND serviceid="16032"; #'CITV';
-- HD available
-- UPDATE channel SET channum=80, visible=1, xmltvid="news.bbc.co.uk" WHERE sourceid="1" AND serviceid="4352"; #'BBC NEWS';
UPDATE channel SET channum=212, visible=1, xmltvid="hd.news.bbc.co.uk" WHERE sourceid="1" AND serviceid="40960";
UPDATE channel SET channum=201, visible=1, xmltvid="parliament.bbc.co.uk" WHERE sourceid="1" AND serviceid="4736"; #'BBC Parliament';
UPDATE channel SET channum=202, visible=1, xmltvid="sky-news.sky.com" WHERE sourceid="1" AND serviceid="22080"; #'Sky News';
-- RT is in HD
-- UPDATE channel SET channum=85, visible=1  WHERE sourceid="1" AND serviceid="27456"; #'Russia Today';
-- UPDATE channel SET channum=87, visible=1, xmltvid="freeview.communitychannel.org" WHERE sourceid="1" AND serviceid="24064"; #'Community Channel';
-- UPDATE channel SET channum=89, visible=1, xmltvid="freeview.aljazeera.net" WHERE sourceid="1" AND serviceid="27712"; #'Al Jazeera Eng';
UPDATE channel SET channum=101, visible=1, xmltvid="hd.bbc1.bbc.co.uk" WHERE sourceid="1" AND serviceid="17540"; #'BBC One HD';
-- Formerly BBC HD, retains old SID
UPDATE channel SET channum=102, visible=1, xmltvid="hd.bbc2.bbc.co.uk" WHERE sourceid="1" AND serviceid="17472"; #'BBC HD';
UPDATE channel SET channum=103, visible=1, xmltvid="central.itv1.itv.co.uk" WHERE sourceid="1" AND serviceid="17605"; #'ITV 1 HD';
UPDATE channel SET channum=104, visible=1, xmltvid="hd.channel4.com" WHERE sourceid="1" AND serviceid="17664"; #'Channel 4 HD';
UPDATE channel SET channum=147, visible=1, xmltvid="hd.bbcthree.bbc.co.uk" WHERE sourceid="1" AND serviceid="17920"; #'BBC THREE HD';
UPDATE channel SET channum=148, visible=1, xmltvid="hd.bbcfour.bbc.co.uk" WHERE sourceid="1" AND serviceid="40976"; #'BBC FOUR HD';
UPDATE channel SET channum=607, visible=1, xmltvid="hd.cbbc.bbc.co.uk" WHERE sourceid="1" AND serviceid="18112";
UPDATE channel SET channum=608, visible=1, xmltvid="hd.cbeebies.bbc.co.uk" WHERE sourceid="1" AND serviceid="40992";
UPDATE channel SET channum=203, visible=1, xmltvid="freeview.aljazeera.net" WHERE sourceid="1" AND serviceid="41040";

-- CLASHES with Channel 5 on Freesat: UPDATE channel SET channum=105,visible=1 WHERE sourceid="1" AND serviceid="4416"; #'BBC Red Button';
-- UPDATE channel SET channum=2105,visible=1  WHERE sourceid="1" AND serviceid="4416"; #'BBC Red Button';
-- CLASHES with ITV3 on Freesat: UPDATE channel SET channum=116,visible=1 WHERE sourceid="1" AND serviceid="28416"; #'Racing UK';
-- UPDATE channel SET channum=2116,visible=1  WHERE sourceid="1" AND serviceid="28416"; #'Racing UK';
-- CLASHES UPDATE channel SET channum=301,visible=1 WHERE sourceid="1" AND serviceid="7168"; #'301';
-- UPDATE channel SET channum=2301,visible=1  WHERE sourceid="1" AND serviceid="7168"; #'301';
-- CLASHES UPDATE channel SET channum=307,visible=1 WHERE sourceid="1" AND serviceid="16224"; #'TOPUP Anytime1';
-- UPDATE channel SET channum=2307,visible=1  WHERE sourceid="1" AND serviceid="16224"; #'TOPUP Anytime1';
-- CLASHES UPDATE channel SET channum=309,visible=1 WHERE sourceid="1" AND serviceid="16288"; #'TOPUP Anytime3';
-- UPDATE channel SET channum=2309,visible=1  WHERE sourceid="1" AND serviceid="16288"; #'TOPUP Anytime3';
-- CLASHES UPDATE channel SET channum=310,visible=1 WHERE sourceid="1" AND serviceid="16292"; #'TOPUP Anytime5';
-- UPDATE channel SET channum=2310,visible=1  WHERE sourceid="1" AND serviceid="16292"; #'TOPUP Anytime5';
-- CLASHES UPDATE channel SET channum=311,visible=1 WHERE sourceid="1" AND serviceid="16300"; #'TOPUP Anytime6';
-- UPDATE channel SET channum=2311,visible=1  WHERE sourceid="1" AND serviceid="16300"; #'TOPUP Anytime6';


-- No hanky panky, thank you. (visibile set to false);
UPDATE channel SET channum=93, visible=0  WHERE sourceid="1" AND serviceid="15232"; #'Television X';
UPDATE channel SET channum=94, visible=0  WHERE sourceid="1" AND serviceid="8362"; #'ADULT smileTV2';
UPDATE channel SET channum=95, visible=0  WHERE sourceid="1" AND serviceid="22400"; #'ADULT smileTV3';
UPDATE channel SET channum=96, visible=0  WHERE sourceid="1" AND serviceid="27904"; #'ADULT Babestn';
UPDATE channel SET channum=97, visible=0  WHERE sourceid="1" AND serviceid="24256"; #'ADULT PARTY';
UPDATE channel SET channum=98, visible=0  WHERE sourceid="1" AND serviceid="24128"; #'ADULT Blue';
-- Could CLASH with Freesat
-- UPDATE channel SET channum=193,visible=0  WHERE sourceid="1" AND serviceid="23872"; #'ADULT Babestn2';
UPDATE channel SET channum=2193,visible=0  WHERE sourceid="1" AND serviceid="23872"; #'ADULT Babestn2';
-- UPDATE channel SET channum=194,visible=0  WHERE sourceid="1" AND serviceid="15792"; #'ADULT Playboy';
UPDATE channel SET channum=2194,visible=0  WHERE sourceid="1" AND serviceid="15792"; #'ADULT Playboy';

-- Radio
-- To do!



-- Re-tune all FreeSat channels and set visible
-- Entertainment
-- Not HD
-- UPDATE channel SET channum=101, visible=1, xmltvid="west-midlands.bbc1.bbc.co.uk" WHERE sourceid="2" AND serviceid="10301"; #'BBC 1 West Midlands';
-- UPDATE channel SET channum=102, visible=1, xmltvid="south.bbc2.bbc.co.uk" WHERE sourceid="2" AND serviceid="6302"; #'BBC 2 England';
-- UPDATE channel SET channum=103, visible=1, xmltvid="central.itv1.itv.co.uk" WHERE sourceid="2" AND serviceid="10100"; #'ITV 1 Central';
-- UPDATE channel SET channum=104, visible=1, xmltvid="channel4.com" WHERE sourceid="2" AND serviceid="9213"; #'Channel 4';
UPDATE channel SET channum=105, visible=1, xmltvid="channel5.co.uk" WHERE sourceid="2" AND serviceid="7702"; #'Channel 5';
-- UPDATE channel SET channum=106, visible=1, xmltvid="bbcthree.bbc.co.uk" WHERE sourceid="2" AND serviceid="6319"; #'BBC THREE';
-- UPDATE channel SET channum=107, visible=1, xmltvid="bbcfour.bbc.co.uk" WHERE sourceid="2" AND serviceid="6416"; #'BBC FOUR';
UPDATE channel SET channum=101, visible=1, xmltvid="hd.bbc1.bbc.co.uk" WHERE sourceid="2" AND serviceid="6941"; #'BBC One HD';
-- Formerly BBC HD, retains old SID
UPDATE channel SET channum=102, visible=1, xmltvid="hd.bbc2.bbc.co.uk" WHERE sourceid="2" AND serviceid="6940"; #'BBC HD';
-- Not English
-- UPDATE channel SET channum=110, visible=1, xmltvid="alba.bbc.co.uk" WHERE sourceid="2" AND serviceid="10357"; #'BBC ALBA';
UPDATE channel SET channum=112, visible=1, xmltvid="tsod.plus-1.central-macro.itv1.itv.co.uk" WHERE sourceid="2" AND serviceid="20715"; #'ITV1 +1';
UPDATE channel SET channum=113, visible=1, xmltvid="itv2.itv.co.uk" WHERE sourceid="2" AND serviceid="10070"; #'ITV2';
UPDATE channel SET channum=114, visible=1, xmltvid="tsod.plus-1.itv2.itv.co.uk" WHERE sourceid="2" AND serviceid="10165"; #'ITV2 +1';
UPDATE channel SET channum=115, visible=1, xmltvid="itv3.itv.co.uk" WHERE sourceid="2" AND serviceid="10260"; #'ITV3';
UPDATE channel SET channum=116, visible=1, xmltvid="tsod.plus-1.itv3.itv.co.uk" WHERE sourceid="2" AND serviceid="10261"; #'ITV3 +1';
UPDATE channel SET channum=117, visible=1, xmltvid="itv4.itv.co.uk" WHERE sourceid="2" AND serviceid="10072"; #'ITV4';
UPDATE channel SET channum=118, visible=1, xmltvid="tsod.plus-1.itv4.itv.co.uk" WHERE sourceid="2" AND serviceid="10015"; #'ITV4 +1';
UPDATE channel SET channum=103, visible=1, xmltvid="hd.london-macro.itv1.itv.co.uk" WHERE sourceid="2" AND serviceid="10000"; #'ITV1 HD';
UPDATE channel SET channum=120, visible=1, xmltvid="s4c.co.uk"  WHERE sourceid="2" AND serviceid="7301"; #'S4C';
UPDATE channel SET channum=121, visible=1, xmltvid="tsod.plus-1.channel4.com" WHERE sourceid="2" AND serviceid="8313"; #'Channel 4 +1';
UPDATE channel SET channum=122, visible=1, xmltvid="e4.channel4.com" WHERE sourceid="2" AND serviceid="8305"; #'E4';
UPDATE channel SET channum=123, visible=1, xmltvid="tsod.plus-1.e4.channel4.com" WHERE sourceid="2" AND serviceid="8300"; #'E4 +1';
UPDATE channel SET channum=124, visible=1, xmltvid="more4.channel4.com" WHERE sourceid="2" AND serviceid="8340"; #'More4';
UPDATE channel SET channum=125, visible=1, xmltvid="tsod.plus-1.more4.channel4.com" WHERE sourceid="2" AND serviceid="9230"; #'More4 +1';
UPDATE channel SET channum=126, visible=1, xmltvid="hd.channel4.com" WHERE sourceid="2" AND serviceid="21200"; #'Channel 4 HD';
UPDATE channel SET channum=134, visible=1, xmltvid="drama.cbs.com" WHERE sourceid="2" AND serviceid="50903"; #'CBS Drama';
UPDATE channel SET channum=135, visible=1, xmltvid="reality.cbs.com" WHERE sourceid="2" AND serviceid="53275"; #'CBS Reality';
UPDATE channel SET channum=136, visible=1, xmltvid="tsod.plus-1.reality.cbs.com" WHERE sourceid="2" AND serviceid="52102"; #'CBS Reality +1';
UPDATE channel SET channum=137, visible=1, xmltvid="action.cbs.com" WHERE sourceid="2" AND serviceid="52007"; #'CBS Action';
UPDATE channel SET channum=138, visible=1, xmltvid="horror.cbs.com" WHERE sourceid="2" AND serviceid="52105"; #'Horror Channel';
UPDATE channel SET channum=139, visible=1, xmltvid="tsod.plus-1.horror.cbs.com" WHERE sourceid="2" AND serviceid="52002"; #'Horror Channel +1';
UPDATE channel SET channum=140, visible=1, xmltvid="international.bet.com" WHERE sourceid="2" AND serviceid="53230"; #'Bet';
UPDATE channel SET channum=141, visible=1, xmltvid="tsod.plus-1.international.bet.com" WHERE sourceid="2" AND serviceid="52060"; #'Bet +1';
UPDATE channel SET channum=142, visible=1, xmltvid="entertainment.truemovies.tv" WHERE sourceid="2" AND serviceid="53375"; #'True Ent';
UPDATE channel SET channum=143, visible=1  WHERE sourceid="2" AND serviceid="54110"; #'Men & Movies';
UPDATE channel SET channum=147, visible=1, xmltvid="hd.bbcthree.bbc.co.uk" WHERE sourceid="2" AND serviceid="6951";
UPDATE channel SET channum=148, visible=1, xmltvid="hd.bbcfour.bbc.co.uk" WHERE sourceid="2" AND serviceid="8931";
UPDATE channel SET channum=103, visible=1, xmltvid="central.itv1.itv.co.uk" WHERE sourceid="2" AND serviceid="12130";

-- News & Sport
-- UPDATE channel SET channum=200, visible=1, xmltvid="news.bbc.co.uk" WHERE sourceid="2" AND serviceid="6405"; #'BBC NEWS';
UPDATE channel SET channum=201, visible=1, xmltvid="parliament.bbc.co.uk" WHERE sourceid="2" AND serviceid="10307"; #'BBC Parliament';
-- UPDATE channel SET channum=203, visible=1, xmltvid="aljazeera.net" WHERE sourceid="2" AND serviceid="51107"; #'Al Jazeera Eng';
UPDATE channel SET channum=204, visible=1, xmltvid="euronews.com"  WHERE sourceid="2" AND serviceid="55280"; #'Euronews';
UPDATE channel SET channum=205, visible=1  WHERE sourceid="2" AND serviceid="52570"; #'France 24';
UPDATE channel SET channum=206, visible=1  WHERE sourceid="2" AND serviceid="53148"; #'Russia Today HD';
UPDATE channel SET channum=207, visible=1, xmltvid="europe.cnn.com" WHERE sourceid="2" AND serviceid="7140"; #'CNN';
UPDATE channel SET channum=208, visible=1, xmltvid="bloomberg.com" WHERE sourceid="2" AND serviceid="52550"; #'Bloomberg';
UPDATE channel SET channum=209, visible=1, xmltvid="world.nhk.or.jp" WHERE sourceid="2" AND serviceid="53147"; #'NHK World HD';
UPDATE channel SET channum=210, visible=1, xmltvid="europe.cnbc.com" WHERE sourceid="2" AND serviceid="52111"; #'CNBC';
UPDATE channel SET channum=212, visible=1, xmltvid="hd.news.bbc.co.uk" WHERE sourceid="2" AND serviceid="8921";


-- Movies
UPDATE channel SET channum=300, visible=1, xmltvid="filmfour.channel4.com" WHERE sourceid="2" AND serviceid="9220"; #'Film4';
UPDATE channel SET channum=301, visible=1, xmltvid="tsod.plus-1.filmfour.channel4.com" WHERE sourceid="2" AND serviceid="9225"; #'Film4 +1';
UPDATE channel SET channum=302, visible=1, xmltvid="1.truemovies.tv" WHERE sourceid="2" AND serviceid="53320"; #'True Movies 1';
UPDATE channel SET channum=303, visible=1, xmltvid="2.truemovies.tv" WHERE sourceid="2" AND serviceid="53325"; #'True Movies 2';
UPDATE channel SET channum=304, visible=1, xmltvid="1.movies4men.co.uk" WHERE sourceid="2" AND serviceid="51116"; #'Movies4Men';
UPDATE channel SET channum=304, visible=1, xmltvid="1.movies4men.co.uk" WHERE sourceid="2" AND serviceid="53109"; #'Movies4Men';
UPDATE channel SET channum=305, visible=1, xmltvid="tsod.plus-1.1.movies4men.co.uk" WHERE sourceid="2" AND serviceid="51118"; #'Movies4Men +1';
UPDATE channel SET channum=306, visible=1, xmltvid="2.movies4men.co.uk" WHERE sourceid="2" AND serviceid="51117"; #'Movies4Men 2';
UPDATE channel SET channum=306, visible=1, xmltvid="2.movies4men.co.uk" WHERE sourceid="2" AND serviceid="53110"; #'Movies4Men 2';
UPDATE channel SET channum=307, visible=1, xmltvid="tsod.plus-1.2.movies4men.co.uk" WHERE sourceid="2" AND serviceid="51119"; #'Movies4Men 2 +1';
UPDATE channel SET channum=307, visible=1, xmltvid="tsod.plus-1.2.movies4men.co.uk" WHERE sourceid="2" AND serviceid="52121"; #'Movies4Men 2 +1';

-- Lifestyle
-- UPDATE channel SET channum=400, visible=1, xmltvid="weddingtv.com" WHERE sourceid="2" AND serviceid="53280"; #'Wedding TV';
-- UPDATE channel SET channum=402, visible=1, xmltvid="showcase.information.tv" WHERE sourceid="2" AND serviceid="50880"; #'Information TV';
-- UPDATE channel SET channum=403, visible=1, xmltvid="showcase.information.tv" WHERE sourceid="2" AND serviceid="52125"; #'Showcase';
UPDATE channel SET channum=405, visible=1, xmltvid="foodnetwork.com" WHERE sourceid="2" AND serviceid="53260"; #'Food Network';
UPDATE channel SET channum=406, visible=1, xmltvid="tsod.plus-1.foodnetwork.com" WHERE sourceid="2" AND serviceid="53270"; #'Food Network +1';

-- Music
UPDATE channel SET channum=500, visible=1, xmltvid="chartshow.com" WHERE sourceid="2" AND serviceid="53365"; #'Chart Show TV';
UPDATE channel SET channum=501, visible=1  WHERE sourceid="2" AND serviceid="53355"; #'The Vault';
UPDATE channel SET channum=502, visible=1, xmltvid="essentialflava.com" WHERE sourceid="2" AND serviceid="53300"; #'Flava';
UPDATE channel SET channum=503, visible=1, xmltvid="scuzz.tv"  WHERE sourceid="2" AND serviceid="53310"; #'Scuzz';
UPDATE channel SET channum=504, visible=1, xmltvid="b4utv.com"  WHERE sourceid="2" AND serviceid="52135"; #'B4U Music';
UPDATE channel SET channum=509, visible=1  WHERE sourceid="2" AND serviceid="50470"; #'Zing';
UPDATE channel SET channum=514, visible=1  WHERE sourceid="2" AND serviceid="50879"; #'Clubland TV';
UPDATE channel SET channum=515, visible=1  WHERE sourceid="2" AND serviceid="55022"; #'Vintage TV';
-- UPDATE channel SET channum=516, visible=1 WHERE name='NME TV';
UPDATE channel SET channum=517, visible=1, xmltvid="bliss.co.uk" WHERE sourceid="2" AND serviceid="53305"; #'Bliss';

-- Childrens
-- UPDATE channel SET channum=600, visible=1, xmltvid="cbbc.bbc.co.uk" WHERE sourceid="2" AND serviceid="6317"; #'CBBC Channel';
-- UPDATE channel SET channum=601, visible=1, xmltvid="cbeebies.bbc.co.uk" WHERE sourceid="2" AND serviceid="6418"; #'CBeebies';
UPDATE channel SET channum=602, visible=1, xmltvid="citv.itv.co.uk" WHERE sourceid="2" AND serviceid="10071"; #'CITV';
UPDATE channel SET channum=603, visible=1, xmltvid="popfun.co.uk"  WHERE sourceid="2" AND serviceid="53340"; #'POP';
UPDATE channel SET channum=604, visible=1  WHERE sourceid="2" AND serviceid="53360"; #'PopGirl';
UPDATE channel SET channum=605, visible=1, xmltvid="tinypop.com" WHERE sourceid="2" AND serviceid="53330"; #'Tiny Pop';
UPDATE channel SET channum=606, visible=1  WHERE sourceid="2" AND serviceid="53350"; #'Kix!';
UPDATE channel SET channum=607, visible=1, xmltvid="hd.cbbc.bbc.co.uk" WHERE sourceid="2" AND serviceid="6952";
UPDATE channel SET channum=608, visible=1, xmltvid="hd.cbeebies.bbc.co.uk" WHERE sourceid="2" AND serviceid="8932";


-- Special Interest
-- UPDATE channel SET channum=650, visible=1  WHERE sourceid="2" AND serviceid="54345"; #'OceanFinance';
-- UPDATE channel SET channum=651, visible=1  WHERE sourceid="2" AND serviceid="52162"; #'Renault TV';
-- UPDATE channel SET channum=652, visible=1  WHERE sourceid="2" AND serviceid="55226"; #'Psychic TV';
-- UPDATE channel SET channum=690, visible=1  WHERE sourceid="2" AND serviceid="51019"; #'Inspiration';
-- UPDATE channel SET channum=691, visible=1  WHERE sourceid="2" AND serviceid="52110"; #'DAYSTAR';
-- UPDATE channel SET channum=692, visible=1  WHERE sourceid="2" AND serviceid="52127"; #'revelation';
-- UPDATE channel SET channum=693, visible=1  WHERE sourceid="2" AND serviceid="50335"; #'Islam Channel';
-- UPDATE channel SET channum=694, visible=1, xmltvid="god.tv"  WHERE sourceid="2" AND serviceid="51035"; #'GOD Channel';

-- Radio
UPDATE channel SET channum=700, visible=1  WHERE sourceid="2" AND serviceid="6751"; #'BBC R1';
UPDATE channel SET channum=701, visible=1  WHERE sourceid="2" AND serviceid="6766"; #'BBC R1X';
UPDATE channel SET channum=702, visible=1  WHERE sourceid="2" AND serviceid="6752"; #'BBC R2';
UPDATE channel SET channum=703, visible=1  WHERE sourceid="2" AND serviceid="6753"; #'BBC R3';
UPDATE channel SET channum=704, visible=1  WHERE sourceid="2" AND serviceid="6754"; #'BBC R4 FM';
UPDATE channel SET channum=705, visible=1  WHERE sourceid="2" AND serviceid="6401"; #'BBC R5L';
UPDATE channel SET channum=706, visible=1  WHERE sourceid="2" AND serviceid="6464"; #'BBC R5SX';
UPDATE channel SET channum=707, visible=1  WHERE sourceid="2" AND serviceid="6767"; #'BBC 6 Music';
UPDATE channel SET channum=708, visible=1  WHERE sourceid="2" AND serviceid="6768"; #'BBC R4 Ex';
UPDATE channel SET channum=709, visible=1  WHERE sourceid="2" AND serviceid="6760"; #'BBC Asian';
UPDATE channel SET channum=710, visible=1  WHERE sourceid="2" AND serviceid="6755"; #'BBC R4 LW';
UPDATE channel SET channum=711, visible=1  WHERE sourceid="2" AND serviceid="6761"; #'BBC WS';
UPDATE channel SET channum=712, visible=1  WHERE sourceid="2" AND serviceid="6757"; #'BBC R Scot.';
UPDATE channel SET channum=713, visible=1  WHERE sourceid="2" AND serviceid="6769"; #'BBC R n Gael';
UPDATE channel SET channum=714, visible=1  WHERE sourceid="2" AND serviceid="6758"; #'BBC R Wales';
UPDATE channel SET channum=715, visible=1  WHERE sourceid="2" AND serviceid="6763"; #'BBC R Cymru';
UPDATE channel SET channum=716, visible=1  WHERE sourceid="2" AND serviceid="6759"; #'BBC R Ulster';
UPDATE channel SET channum=718, visible=1  WHERE sourceid="2" AND serviceid="6770"; #'BBC London';
UPDATE channel SET channum=719, visible=1  WHERE sourceid="2" AND serviceid="9560"; #'Capital FM';
UPDATE channel SET channum=720, visible=1  WHERE sourceid="2" AND serviceid="9549"; #'Choice FM';
UPDATE channel SET channum=721, visible=1  WHERE sourceid="2" AND serviceid="9570"; #'Classic FM';
UPDATE channel SET channum=722, visible=1  WHERE sourceid="2" AND serviceid="9561"; #'Gold';
UPDATE channel SET channum=723, visible=1  WHERE sourceid="2" AND serviceid="9559"; #'XFM';
UPDATE channel SET channum=724, visible=1  WHERE sourceid="2" AND serviceid="53121"; #'Absolute';
UPDATE channel SET channum=725, visible=1  WHERE sourceid="2" AND serviceid="53120"; #'Absolute CR';
UPDATE channel SET channum=726, visible=1  WHERE sourceid="2" AND serviceid="53122"; #'Absolute80s';
-- UPDATE channel SET channum=727, visible=1 WHERE name='NME';
UPDATE channel SET channum=728, visible=1  WHERE sourceid="2" AND serviceid="53135"; #'WRN Europe';
UPDATE channel SET channum=729, visible=1  WHERE sourceid="2" AND serviceid="53142"; #'Jazz FM';
UPDATE channel SET channum=730, visible=1  WHERE sourceid="2" AND serviceid="9575"; #'Planet Rock';
UPDATE channel SET channum=731, visible=1  WHERE sourceid="2" AND serviceid="10238"; #'TalkSport';
UPDATE channel SET channum=732, visible=1  WHERE sourceid="2" AND serviceid="55015"; #'Smooth';
UPDATE channel SET channum=733, visible=1  WHERE sourceid="2" AND serviceid="52030"; #'Heart';
UPDATE channel SET channum=750, visible=1  WHERE sourceid="2" AND serviceid="9611"; #'RTE Radio 1';
UPDATE channel SET channum=751, visible=1  WHERE sourceid="2" AND serviceid="9612"; #'RTE 2FM';
UPDATE channel SET channum=752, visible=1  WHERE sourceid="2" AND serviceid="9614"; #'RTE Lyric fm';
UPDATE channel SET channum=753, visible=1  WHERE sourceid="2" AND serviceid="9613"; #'RTE R na G';
UPDATE channel SET channum=777, visible=1  WHERE sourceid="2" AND serviceid="53124"; #'InsightRadio';
UPDATE channel SET channum=786, visible=1  WHERE sourceid="2" AND serviceid="52028"; #'BFBS Radio';
UPDATE channel SET channum=790, visible=1  WHERE sourceid="2" AND serviceid="53133"; #'TWR';

-- Shopping
-- UPDATE channel SET channum=800, visible=1, xmltvid="qvcuk.com"  WHERE sourceid="2" AND serviceid="7230"; #'QVC';
-- UPDATE channel SET channum=801, visible=1, xmltvid="price-drop.tv" WHERE sourceid="2" AND serviceid="52510"; #'Price-Drop TV';
-- UPDATE channel SET channum=802, visible=1, xmltvid="bid.tv"  WHERE sourceid="2" AND serviceid="7250"; #'Bid TV';
-- UPDATE channel SET channum=803, visible=1 WHERE sourceid="2" AND serviceid="54360"; #'Pitch TV';
-- UPDATE channel SET channum=804, visible=1  WHERE sourceid="2" AND serviceid="54360"; #'Pitch World';
-- UPDATE channel SET channum=805, visible=1, xmltvid="gemstv.co.uk"  WHERE sourceid="2" AND serviceid="55110"; #'Gems TV';
-- UPDATE channel SET channum=806, visible=1  WHERE sourceid="2" AND serviceid="9531"; #'TV SHOP';
-- UPDATE channel SET channum=807, visible=1  WHERE sourceid="2" AND serviceid="52006"; #'Jewelry Maker';
-- UPDATE channel SET channum=808, visible=1  WHERE sourceid="2" AND serviceid="54150"; #'JML';
-- UPDATE channel SET channum=809, visible=1 WHERE name='JML Choice';
-- UPDATE channel SET channum=810, visible=1  WHERE sourceid="2" AND serviceid="52233"; #'Ideal Extra';
-- UPDATE channel SET channum=812, visible=1  WHERE sourceid="2" AND serviceid="52232"; #'Ideal World';
-- UPDATE channel SET channum=813, visible=1  WHERE sourceid="2" AND serviceid="52234"; #'Create & Craft';
-- UPDATE channel SET channum=814, visible=1  WHERE sourceid="2" AND serviceid="52546"; #'speedauctiontv';
-- UPDATE channel SET channum=815, visible=1  WHERE sourceid="2" AND serviceid="50340"; #'Jewellery Ch.';
-- UPDATE channel SET channum=816, visible=1  WHERE sourceid="2" AND serviceid="54113"; #'QVC Beauty';
-- UPDATE channel SET channum=817, visible=1  WHERE sourceid="2" AND serviceid="9533"; #'Rocks & Co 1';
-- UPDATE channel SET channum=818, visible=1  WHERE sourceid="2" AND serviceid="55104"; #'Gems TV Extra';

-- Adult
-- UPDATE channel SET channum=870, visible=0  WHERE sourceid="2" AND serviceid="55207"; #'Babestation';
-- UPDATE channel SET channum=874, visible=1 WHERE name='Filth';

-- Regional Variations
UPDATE channel SET channum=950, visible=1, xmltvid="london.bbc1.bbc.co.uk" WHERE sourceid="2" AND serviceid="6301"; #'BBC 1 London';
UPDATE channel SET channum=951, visible=1, xmltvid="ci.south-west.bbc1.bbc.co.uk" WHERE sourceid="2" AND serviceid="6361"; #'BBC 1 CI';
UPDATE channel SET channum=952, visible=1, xmltvid="east-midlands.bbc1.bbc.co.uk" WHERE sourceid="2" AND serviceid="10305"; #'BBC 1 E Mids';
UPDATE channel SET channum=953, visible=1, xmltvid="east.bbc1.bbc.co.uk" WHERE sourceid="2" AND serviceid="10306"; #'BBC 1 East (E)';
-- UPDATE channel SET channum=954, visible=1, xmltvid="west.east.bbc1.bbc.co.uk" WHERE sourceid="2" AND serviceid="6341"; #'BBC 1 East (W)';
UPDATE channel SET channum=955, visible=1, xmltvid="north-west.bbc1.bbc.co.uk" WHERE sourceid="2" AND serviceid="6441"; #'BBC 1 N West';
UPDATE channel SET channum=956, visible=1, xmltvid="north-east.bbc1.bbc.co.uk" WHERE sourceid="2" AND serviceid="10355"; #'BBC 1 NE & C';
UPDATE channel SET channum=957, visible=1, xmltvid="northern-ireland.bbc1.bbc.co.uk" WHERE sourceid="2" AND serviceid="10361"; #'BBC 1 NI';
UPDATE channel SET channum=958, visible=1, xmltvid="oxford.south.bbc1.bbc.co.uk" WHERE sourceid="2" AND serviceid="10356"; #'BBC 1 Oxford';
UPDATE channel SET channum=959, visible=1, xmltvid="south-east.bbc1.bbc.co.uk" WHERE sourceid="2" AND serviceid="6461"; #'BBC 1 S East';
UPDATE channel SET channum=960, visible=1, xmltvid="scotland.bbc1.bbc.co.uk" WHERE sourceid="2" AND serviceid="6421"; #'BBC 1 Scotland';
UPDATE channel SET channum=961, visible=1, xmltvid="south.bbc1.bbc.co.uk" WHERE sourceid="2" AND serviceid="10353"; #'BBC 1 South';
UPDATE channel SET channum=962, visible=1, xmltvid="south-west.bbc1.bbc.co.uk" WHERE sourceid="2" AND serviceid="10354"; #'BBC 1 S West';
-- UPDATE channel SET channum=963, visible=1, xmltvid="west-midlands.bbc1.bbc.co.uk" WHERE sourceid="2" AND serviceid="10301"; #'BBC 1 W Mids';
UPDATE channel SET channum=964, visible=1, xmltvid="wales.bbc1.bbc.co.uk" WHERE sourceid="2" AND serviceid="10311"; #'BBC 1 Wales';
UPDATE channel SET channum=965, visible=1, xmltvid="west.bbc1.bbc.co.uk" WHERE sourceid="2" AND serviceid="6341"; #'BBC 1 West';
UPDATE channel SET channum=966, visible=1, xmltvid="yorkshire.bbc1.bbc.co.uk" WHERE sourceid="2" AND serviceid="6451"; #'BBC 1 Yorks';
UPDATE channel SET channum=967, visible=1, xmltvid="yorkslincs.bbc1.bbc.co.uk" WHERE sourceid="2" AND serviceid="10303"; #'BBC 1 Yrks&Lin';
-- UPDATE channel SET channum=968, visible=1, xmltvid="south.bbc2.bbc.co.uk" WHERE sourceid="2" AND serviceid="6302"; #'BBC 2 England';
UPDATE channel SET channum=969, visible=1, xmltvid="northern-ireland.bbc2.bbc.co.uk" WHERE sourceid="2" AND serviceid="10362"; #'BBC 2 NI';
UPDATE channel SET channum=970, visible=1, xmltvid="scotland.bbc2.bbc.co.uk" WHERE sourceid="2" AND serviceid="6422"; #'BBC 2 Scotland';
UPDATE channel SET channum=971, visible=1, xmltvid="wales.bbc2.bbc.co.uk" WHERE sourceid="2" AND serviceid="10312"; #'BBC 2 Wales';
-- UPDATE channel SET channum=974, visible=1  WHERE sourceid="2" AND serviceid="9211"; #'C4 l';
UPDATE channel SET channum=977, visible=1, xmltvid="london.itv1.itv.co.uk" WHERE sourceid="2" AND serviceid="10060"; #'ITV1 London';

-- Mark BBC channels as addfree and not requiring commercial flagging.
UPDATE channel set commmethod=-2 WHERE name LIKE '%BBC%' OR name LIKE '%CBeebies';
