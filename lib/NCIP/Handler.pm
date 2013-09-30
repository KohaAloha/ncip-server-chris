package NCIP::Handler;
#
#===============================================================================
#
#         FILE: Hander.pm
#
#  DESCRIPTION:
#
#        FILES: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Chris Cormack (rangi), chrisc@catalyst.net.nz
# ORGANIZATION: Koha Development Team
#      VERSION: 1.0
#      CREATED: 19/09/13 10:43:14
#     REVISION: ---
#===============================================================================

use Modern::Perl;
use Object::Tiny qw{ type namespace };

use NCIP::Handler::LookupItem;

sub new {
    my $class     = shift;
    my $namespace = shift;
    my $type      = shift;
    my $subclass  = __PACKAGE__ . "::" . $type;
    my $self      = bless { type => $type, namspace => $namespace }, $subclass;
    return $self;
}

1;
