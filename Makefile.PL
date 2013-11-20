
use strict;
use warnings;

use 5.010001;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Mac::Glue-less Addex adapter for Apple Address Book and Addex",
  "AUTHOR" => "Ricardo Signes <rjbs\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "App-Addex-AddressBook-AppleScript",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "App::Addex::AddressBook::AppleScript",
  "PREREQ_PM" => {
    "App::Addex::AddressBook" => 0,
    "App::Addex::Entry" => 0,
    "App::Addex::Entry::EmailAddress" => 0,
    "Encode" => 0,
    "File::Temp" => 0,
    "base" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "Test::More" => "0.96"
  },
  "VERSION" => "0.007",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "App::Addex::AddressBook" => 0,
  "App::Addex::Entry" => 0,
  "App::Addex::Entry::EmailAddress" => 0,
  "Encode" => 0,
  "File::Temp" => 0,
  "Test::More" => "0.96",
  "base" => 0,
  "strict" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



