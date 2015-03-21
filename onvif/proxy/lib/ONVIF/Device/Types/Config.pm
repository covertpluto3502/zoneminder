package ONVIF::Device::Types::Config;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS = 'ONVIF::Device::Types::Config::_Config::XmlAttr';

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Parameters_of :ATTR(:get<Parameters>);

__PACKAGE__->_factory(
    [ qw(        Parameters

    ) ],
    {
        'Parameters' => \%Parameters_of,
    },
    {
        'Parameters' => 'ONVIF::Device::Types::ItemList',
    },
    {

        'Parameters' => 'Parameters',
    }
);

} # end BLOCK




package ONVIF::Device::Types::Config::_Config::XmlAttr;
use base qw(SOAP::WSDL::XSD::Typelib::AttributeSet);

{ # BLOCK to scope variables

my %Name_of :ATTR(:get<Name>);
my %Type_of :ATTR(:get<Type>);

__PACKAGE__->_factory(
    [ qw(
        Name
        Type
    ) ],
    {

        Name => \%Name_of,

        Type => \%Type_of,
    },
    {
        Name => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        Type => 'SOAP::WSDL::XSD::Typelib::Builtin::QName',
    }
);

} # end BLOCK




1;


=pod

=head1 NAME

ONVIF::Device::Types::Config

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Config from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Parameters




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Device::Types::Config
   Parameters =>  { # ONVIF::Device::Types::ItemList
     SimpleItem => ,
     ElementItem =>  {
     },
     Extension =>  { # ONVIF::Device::Types::ItemListExtension
     },
   },
 },



=head2 attr

NOTE: Attribute documentation is experimental, and may be inaccurate.
See the correspondent WSDL/XML Schema if in question.

This class has additional attributes, accessibly via the C<attr()> method.

attr() returns an object of the class ONVIF::Device::Types::Config::_Config::XmlAttr.

The following attributes can be accessed on this object via the corresponding
get_/set_ methods:

=over

=item * Name

 Name of the configuration.



This attribute is of type L<SOAP::WSDL::XSD::Typelib::Builtin::string|SOAP::WSDL::XSD::Typelib::Builtin::string>.

=item * Type

 Type of the configuration represented by a unique QName. The Type characterizes a ConfigDescription defining the Parameters.



This attribute is of type L<SOAP::WSDL::XSD::Typelib::Builtin::QName|SOAP::WSDL::XSD::Typelib::Builtin::QName>.


=back




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

