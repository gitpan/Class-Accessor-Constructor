use inc::Module::Install;
name 'Class-Accessor-Constructor';
all_from 'lib/Class/Accessor/Constructor.pm';
perl_version '5.006';

requires 'Data::Inherited';
requires 'Class::Accessor';
requires 'Class::Accessor::Complex';

build_requires 'Test::More' => '0.70';

use_standard_tests(without => 'pod_coverage');
auto_include;
WriteAll;
