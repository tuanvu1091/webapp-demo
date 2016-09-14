# load.pl
sub view_html {
    my  ($output) = @_;
    print "Content-type: text/html;CHARSET=$CHARSET\n";
    print "Expires: Mon, 26 Sep 2016 16:00:00 GMT\n";
    print "Cache-Control: no-cache, must-revalidate\n";
    print "Pragma: no-cache\n\n";
    print  $output;
    return 0;
}
1