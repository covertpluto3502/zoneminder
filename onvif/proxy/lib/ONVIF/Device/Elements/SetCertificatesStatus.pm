
package ONVIF::Device::Elements::SetCertificatesStatus;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://www.onvif.org/ver10/device/wsdl' }

__PACKAGE__->__set_name('SetCertificatesStatus');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();

use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    SOAP::WSDL::XSD::Typelib::ComplexType
);

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %CertificateStatus_of :ATTR(:get<CertificateStatus>);

__PACKAGE__->_factory(
    [ qw(        CertificateStatus

    ) ],
    {
        'CertificateStatus' => \%CertificateStatus_of,
    },
    {
        'CertificateStatus' => 'ONVIF::Device::Types::CertificateStatus',
    },
    {

        'CertificateStatus' => 'CertificateStatus',
    }
);

} # end BLOCK







} # end of BLOCK



1;


=pod

=head1 NAME

ONVIF::Device::Elements::SetCertificatesStatus

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
SetCertificatesStatus from the namespace http://www.onvif.org/ver10/device/wsdl.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * CertificateStatus

 $element->set_CertificateStatus($data);
 $element->get_CertificateStatus();





=back


=head1 METHODS

=head2 new

 my $element = ONVIF::Device::Elements::SetCertificatesStatus->new($data);

Constructor. The following data structure may be passed to new():

 {
   CertificateStatus =>  { # ONVIF::Device::Types::CertificateStatus
     CertificateID =>  $some_value, # token
     Status =>  $some_value, # boolean
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

