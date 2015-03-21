package ONVIF::Media::Types::PTZSpeed;
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

my %PanTilt_of :ATTR(:get<PanTilt>);
my %Zoom_of :ATTR(:get<Zoom>);

__PACKAGE__->_factory(
    [ qw(        PanTilt
        Zoom

    ) ],
    {
        'PanTilt' => \%PanTilt_of,
        'Zoom' => \%Zoom_of,
    },
    {
        'PanTilt' => 'ONVIF::Media::Types::Vector2D',
        'Zoom' => 'ONVIF::Media::Types::Vector1D',
    },
    {

        'PanTilt' => 'PanTilt',
        'Zoom' => 'Zoom',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::PTZSpeed

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
PTZSpeed from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * PanTilt


=item * Zoom




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::PTZSpeed
   PanTilt => ,
   Zoom => ,
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

