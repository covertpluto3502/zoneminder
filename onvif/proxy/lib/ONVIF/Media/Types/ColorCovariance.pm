package ONVIF::Media::Types::ColorCovariance;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS = 'ONVIF::Media::Types::ColorCovariance::_ColorCovariance::XmlAttr';

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}



# There's no variety - empty complexType
use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

__PACKAGE__->_factory();


package ONVIF::Media::Types::ColorCovariance::_ColorCovariance::XmlAttr;
use base qw(SOAP::WSDL::XSD::Typelib::AttributeSet);

{ # BLOCK to scope variables

my %XX_of :ATTR(:get<XX>);
my %YY_of :ATTR(:get<YY>);
my %ZZ_of :ATTR(:get<ZZ>);
my %XY_of :ATTR(:get<XY>);
my %XZ_of :ATTR(:get<XZ>);
my %YZ_of :ATTR(:get<YZ>);
my %Colorspace_of :ATTR(:get<Colorspace>);

__PACKAGE__->_factory(
    [ qw(
        XX
        YY
        ZZ
        XY
        XZ
        YZ
        Colorspace
    ) ],
    {

        XX => \%XX_of,

        YY => \%YY_of,

        ZZ => \%ZZ_of,

        XY => \%XY_of,

        XZ => \%XZ_of,

        YZ => \%YZ_of,

        Colorspace => \%Colorspace_of,
    },
    {
        XX => 'SOAP::WSDL::XSD::Typelib::Builtin::float',
        YY => 'SOAP::WSDL::XSD::Typelib::Builtin::float',
        ZZ => 'SOAP::WSDL::XSD::Typelib::Builtin::float',
        XY => 'SOAP::WSDL::XSD::Typelib::Builtin::float',
        XZ => 'SOAP::WSDL::XSD::Typelib::Builtin::float',
        YZ => 'SOAP::WSDL::XSD::Typelib::Builtin::float',
        Colorspace => 'SOAP::WSDL::XSD::Typelib::Builtin::anyURI',
    }
);

} # end BLOCK




1;


=pod

=head1 NAME

ONVIF::Media::Types::ColorCovariance

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ColorCovariance from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over



=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

,



=head2 attr

NOTE: Attribute documentation is experimental, and may be inaccurate.
See the correspondent WSDL/XML Schema if in question.

This class has additional attributes, accessibly via the C<attr()> method.

attr() returns an object of the class ONVIF::Media::Types::ColorCovariance::_ColorCovariance::XmlAttr.

The following attributes can be accessed on this object via the corresponding
get_/set_ methods:

=over

=item * XX



This attribute is of type L<SOAP::WSDL::XSD::Typelib::Builtin::float|SOAP::WSDL::XSD::Typelib::Builtin::float>.

=item * YY



This attribute is of type L<SOAP::WSDL::XSD::Typelib::Builtin::float|SOAP::WSDL::XSD::Typelib::Builtin::float>.

=item * ZZ



This attribute is of type L<SOAP::WSDL::XSD::Typelib::Builtin::float|SOAP::WSDL::XSD::Typelib::Builtin::float>.

=item * XY



This attribute is of type L<SOAP::WSDL::XSD::Typelib::Builtin::float|SOAP::WSDL::XSD::Typelib::Builtin::float>.

=item * XZ



This attribute is of type L<SOAP::WSDL::XSD::Typelib::Builtin::float|SOAP::WSDL::XSD::Typelib::Builtin::float>.

=item * YZ



This attribute is of type L<SOAP::WSDL::XSD::Typelib::Builtin::float|SOAP::WSDL::XSD::Typelib::Builtin::float>.

=item * Colorspace



This attribute is of type L<SOAP::WSDL::XSD::Typelib::Builtin::anyURI|SOAP::WSDL::XSD::Typelib::Builtin::anyURI>.


=back




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

