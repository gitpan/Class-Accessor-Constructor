use inc::Module::Install;
include 'Module::AutoInstall';

name 'Class-Accessor-Constructor';
all_from 'lib/Class/Accessor/Constructor.pm';
perl_version '5.006';

requires 'Data::Inherited';
requires 'Class::Accessor';
requires 'Class::Accessor::Complex';
requires 'Class::Accessor::Installer';

recommends 'Test::Pod';
recommends 'Test::Pod::Coverage';

test_requires 'Test::More' => '0.70';
test_requires 'Test::Compile';

auto_install;
auto_include;
WriteAll;
