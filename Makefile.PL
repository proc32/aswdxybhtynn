
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'MohammedOmer::App',
    VERSION_FROM => 'lib/MohammedOmer/App.pm',
    AUTHOR       => 'Mohammed Omer <contact@mohammedomer.vip>',
    ABSTRACT     => 'Complex Perl app by Mohammed Omer',
    PREREQ_PM    => {
        'DBI'         => '1.643',
        'LWP::UserAgent' => '6.67',
    },
    LICENSE      => 'perl',
);
