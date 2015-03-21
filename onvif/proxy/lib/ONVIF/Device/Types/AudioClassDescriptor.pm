package ONVIF::Device::Types::AudioClassDescriptor;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %ClassCandidate_of :ATTR(:get<ClassCandidate>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        ClassCandidate
        Extension

    ) ],
    {
        'ClassCandidate' => \%ClassCandidate_of,
        'Extension' => \%Extension_of,
    },
    {
        'ClassCandidate' => 'ONVIF::Device::Types::AudioClassCandidate',
        'Extension' => 'ONVIF::Device::Types::AudioClassDescriptorExtension',
    },
    {

        'ClassCandidate' => 'ClassCandidate',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Device::Types::AudioClassDescriptor

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
AudioClassDescriptor from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * ClassCandidate


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Device::Types::AudioClassDescriptor
   ClassCandidate =>  { # ONVIF::Device::Types::AudioClassCandidate
     Type => $some_value, # AudioClassType
     Likelihood =>  $some_value, # float
   },
   Extension =>  { # ONVIF::Device::Types::AudioClassDescriptorExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

