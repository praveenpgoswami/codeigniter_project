<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*
|--------------------------------------------------------------------------
| File and Directory Modes
|--------------------------------------------------------------------------
|
| These prefs are used when checking and setting modes when working
| with the file system.  The defaults are fine on servers with proper
| security, but you may wish (or even need) to change the values in
| certain environments (Apache running a separate process for each
| user, PHP under CGI with Apache suEXEC, etc.).  Octal values should
| always be used to set the mode correctly.
|
*/
define('FILE_READ_MODE', 0644);
define('FILE_WRITE_MODE', 0666);
define('DIR_READ_MODE', 0755);
define('DIR_WRITE_MODE', 0777);

/*
|--------------------------------------------------------------------------
| File Stream Modes
|--------------------------------------------------------------------------
|
| These modes are used when working with fopen()/popen()
|
*/

define('FOPEN_READ',							'rb');
define('FOPEN_READ_WRITE',						'r+b');
define('FOPEN_WRITE_CREATE_DESTRUCTIVE',		'wb'); // truncates existing file data, use with care
define('FOPEN_READ_WRITE_CREATE_DESTRUCTIVE',	'w+b'); // truncates existing file data, use with care
define('FOPEN_WRITE_CREATE',					'ab');
define('FOPEN_READ_WRITE_CREATE',				'a+b');
define('FOPEN_WRITE_CREATE_STRICT',				'xb');
define('FOPEN_READ_WRITE_CREATE_STRICT',		'x+b');

/*
|--------------------------------------------------------------------------
| Table Constants
|--------------------------------------------------------------------------
|
*/define('ADMIN_PATH',						'admin');
define('TBL_PREF',						'fc_');

define('ADMIN',							TBL_PREF.'admin');
define('ADMIN_SETTINGS',				TBL_PREF.'admin_settings');
define('SUBADMIN',						TBL_PREF.'subadmin');
define('USERS',							TBL_PREF.'users');
define('CATEGORY',						TBL_PREF.'category');
define('COUPONCARDS',					TBL_PREF.'couponcards');
define('GIFTCARDS',						TBL_PREF.'giftcards');
define('GIFTCARDS_SETTINGS',			TBL_PREF.'giftcards_settings');
define('GIFTCARDS_TEMP',				TBL_PREF.'giftcards_temp');
define('SUBSCRIBERS_LIST',				TBL_PREF.'subscribers_list');
define('NEWSLETTER',					TBL_PREF.'newsletter');
define('CMS',							TBL_PREF.'cms');
define('PRODUCT',						TBL_PREF.'product');
define('PRODUCT_CATEGORY',				TBL_PREF.'product_category');
define('LOCATIONS',						TBL_PREF.'country');
define('COMMISSION',				    TBL_PREF.'commission');
define('PAYMENT_GATEWAY',				TBL_PREF.'payment_gateway');
define('STATE_TAX',						TBL_PREF.'states');
define('CITY',							TBL_PREF.'cities');
define('ATTRIBUTE',						TBL_PREF.'attribute');
define('LISTSPACE',						TBL_PREF.'listspace');
define('PRODUCT_LIKES',					TBL_PREF.'product_likes');
define('PRODUCT_ADDRESS',				TBL_PREF.'product_address');
define('PRODUCT_ADDRESS_NEW',			TBL_PREF.'product_address_new');
define('PRODUCT_FEATURES',				TBL_PREF.'product_features');
define('PRODUCT_BOOKING',				TBL_PREF.'product_booking');
define('PRODUCT_PHOTOS',				TBL_PREF.'rental_photos');
define('REVIEW',						TBL_PREF.'review');
define('RESPONSE_TIME',						TBL_PREF.'response_time');
define('SCHEDULE',						'schedule');
define('CONTACT',						TBL_PREF.'contactus');
define('TESTIMONIALS',					TBL_PREF.'testimonials');
define('LANGUAGES',						TBL_PREF.'languages');
define('SHOPPING_CART',					TBL_PREF.'shopping_carts');
define('PAYMENT',						TBL_PREF.'payment');
define('HOSTPAYMENT',					TBL_PREF.'payment_host');
define('SHIPPING_ADDRESS',				TBL_PREF.'shipping_address');
define('COUNTRY_LIST',		 			TBL_PREF.'country');
define('USER_ACTIVITY',		 			TBL_PREF.'user_activity');
define('LISTS_DETAILS',		 			TBL_PREF.'lists');
define('PREFOOTER',		 			TBL_PREF.'prefooter');
define('WANTS_DETAILS',		 			TBL_PREF.'wants');
define('LIST_VALUES',		 			TBL_PREF.'list_values');
define('LISTSPACE_VALUES',		 			TBL_PREF.'listspace_values');
define('LIST_SUB_VALUES',		 		TBL_PREF.'list_sub_values');
define('FANCYYBOX',		 				TBL_PREF.'fancybox');
define('FANCYYBOX_TEMP', 				TBL_PREF.'fancybox_temp');
define('FANCYYBOX_USES', 				TBL_PREF.'fancybox_uses');
define('USER_PRODUCTS', 				TBL_PREF.'user_product');
define('PRODUCT_COMMENTS', 				TBL_PREF.'product_comments');
define('NOTIFICATIONS', 				TBL_PREF.'notifications');
define('VENDOR_PAYMENT', 				TBL_PREF.'vendor_payment_table');
define('REVIEW_COMMENTS', 				TBL_PREF.'review_comments');
define('BANNER_CATEGORY', 				TBL_PREF.'banner_category');
define('PRODUCT_ATTRIBUTE', 			TBL_PREF.'product_attribute');
define('SUBPRODUCT', 					TBL_PREF.'subproducts');
define('TRANSACTIONS',					TBL_PREF.'transaction');
define('SLIDER',						TBL_PREF.'slider');
define('ADVERT',						TBL_PREF.'advert');
define('REQUIREMENTS',					TBL_PREF.'requirements');
define('LANGUAGES_KNOWN',				TBL_PREF.'languages_known');
define('USERS_DELETE',					TBL_PREF.'users_deleted');
define('RENTALENQUIRY',					TBL_PREF.'rentalsenquiry');
define('CALENDARBOOKING', 				'bookings');
define('BOOKINGCONFIG', 				'bookings_config');
define('INBOX', 						TBL_PREF.'inbox');
define('CONTACTUS', 					'contactus');

define('INBOXNEW', 						TBL_PREF.'inbox_new');
define('DISCUSSION', 					TBL_PREF.'inbox_reply');
define('CURRENCY', 						TBL_PREF.'currency');
define('NEIGHBORHOOD', 					TBL_PREF.'neighborhood');
define('SAVED_NEIGHBORHOOD',			TBL_PREF.'saved_neighborhoods');
define('NOTES', 						TBL_PREF.'notes');
define('PRODUCT_DEALPRICE', 			TBL_PREF.'product_deal_price');
define('LISTINGS', 			TBL_PREF.'listings');


/*
|--------------------------------------------------------------------------
| Path Constants
|--------------------------------------------------------------------------
|
*/
define('SITE_COMMON_DEFINE', 			'');
define('CATEGORY_PATH',					'images/category/');
define('GIFTPATH', 						'images/giftcards/');define('THUMBPRODUCTPATH', 					'server/php/rental/thumbnail/');
define('PRODUCTPATH', 					'server/php/rental/');//server\php\rental\thumbnail
define('FANCYBOXPATH', 					'images/fancyybox/');
//define('SITE_COMMON_DEFINE', 'fancyy-');

/* End of file constants.php */
/* Location: ./application/config/constants.php */