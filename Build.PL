use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'POE::Component::App::PNGCrush',
    license             => 'perl',
    dist_author         => 'Zoffix Znet <zoffix@cpan.org>',
    dist_version_from   => 'lib/POE/Component/App/PNGCrush.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Carp'                                     => 0,
        'POE'                                      => 0,
        'POE::Component::NonBlockingWrapper::Base' => 0.002,
        'App::PNGCrush'                            => 0.001,
        perl                                       => '5.006',
    },
    configure_requires => { 'Module::Build' => 0 },
    add_to_cleanup      => [ 'POE-Component-App-PNGCrush-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
