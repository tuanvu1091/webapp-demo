# master.pl
sub view_systop{
    #$action = @_;
    $faq_url="index.cgi/?action=question";
    $page_layout = HTML::Template->new(filename => $LAYOUT, died_on_bad_params => 0);
    $test_page = HTML::Template->new(filename => $TEST, died_on_bad_params =>0);
    $test_page ->param(faq_url => $faq_url);
    $test_page->param(h1 => "Chuong trinh dau tien");
    $page_layout->param(MAIN => $test_page->output());
    view_html($page_layout->output());
    return 0;
}

sub view_question {
    $page_layout = HTML::Template->new(filename => $LAYOUT, died_on_bad_params =>0);
    $test_page = HTML::Template->new(filename => $TEST, died_on_bad_params => 0);
    $test_page->param(h1 => "You can ask me any question here!");
    $page_layout->param(MAIN => $test_page->output());
    view_html($page_layout->output());
    return 0;
}
1
