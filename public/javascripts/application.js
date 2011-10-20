$(document).ready(function(){
  $('#home-specials').bxSlider();
  getTweets();
  displayHomeFeed();
});

function getTweets() {
	var twitter_name = "jasonmustian";
	var twitter_count = 6;
	var callback_name = "tweet_callback";
	var twitter_search = "http://twitter.com/statuses/user_timeline";
	var return_type = "json";
	var path = "http://twitter.com/statuses/user_timeline/jasonmustian.json?callback=twitterCallback2&count=2";
	var ts = document.createElement('script');
	ts.type = 'text/javascript';
	ts.async = true;
	ts.src = twitter_search + "." + return_type + "?screen_name=" + twitter_name + "&count=" + twitter_count + "&callback=" + callback_name;
	document.getElementsByTagName( 'head' )[ 0 ] || document.getElementsByTagName( 'body' )[ 0 ] ).appendChild( ts );
	
}

function tweet_callback( data ) {
//Loop through the data from twitter
$.each( data, function( i, tweet ) {
//Make sure the text isn't undefined
if( tweet.text != undefined ) {
//Lets do some regex magic to replace urls, hashtags, and usernames
var text = tweet.text.toString().replace( /(\b(https?|ftp|file):\/\/[-A-Z0-9+&@#\/%?=~_|!:,.;]*[-A-Z0-9+&@#\/%=~_|])/ig, '<a href="$1">$1</a>' ).replace( /(^|\s)@(\w+)/, '<a href="http://www.twitter.com/$2">@$2</a>' ).replace( /[#]+[A-Za-z0-9-_]+/ig, function(t) { var tag = t.replace("#","%23"); return t.link("http://search.twitter.com/search?q="+tag); } );
//Lets append each tweet to a ul with the id of tweet_container
$( "#feeds_container" ).append( "<li>" + text + "</li>");
}
} );

function displayHomeFeed() {
	
}