use inc::Module::Install;
include 'Module::AutoInstall';

name 'Class-Accessor-Constructor';
all_from 'lib/Class/Accessor/Constructor.pm';
perl_version '5.006';

requires 'Data::Inherited';
requires 'Class::Accessor';
requires 'Class::Accessor::Complex';
requires 'Class::Accessor::Installer';

build_requires 'Test::More' => '0.70';

process_templates(
    first_year => 2007,
    rest_from  => "$ENV{HOME}/.mitlib/standard_pod",
    start_tag  => '{%',
    end_tag    => '%}',
);

use_standard_tests(without => 'pod_coverage');
auto_install;
auto_include;
WriteAll;
