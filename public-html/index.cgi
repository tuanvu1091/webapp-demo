#!/usr/local/bin/perl
use HTML::Template;
use CGI;
use Pg;
#use Jcode;
use DateTime;
use Unicode::Japanese;
use HTTP::Message;
use LWP::UserAgent;
use lib "/home/appli/webapp-demo/library/lib";

require 'config.ph';
require 'gmain.pl';
#require 'master.pl';
require 'load.pl';

$query = new CGI;
if ($query->param('action') eq 'question'){
    view_question();
}else{
    view_systop();
}



