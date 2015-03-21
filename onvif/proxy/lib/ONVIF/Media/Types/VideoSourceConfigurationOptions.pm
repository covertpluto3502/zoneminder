package ONVIF::Media::Types::VideoSourceConfigurationOptions;
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

my %BoundsRange_of :ATTR(:get<BoundsRange>);
my %VideoSourceTokensAvailable_of :ATTR(:get<VideoSourceTokensAvailable>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        BoundsRange
        VideoSourceTokensAvailable
        Extension

    ) ],
    {
        'BoundsRange' => \%BoundsRange_of,
        'VideoSourceTokensAvailable' => \%VideoSourceTokensAvailable_of,
        'Extension' => \%Extension_of,
    },
    {
        'BoundsRange' => 'ONVIF::Media::Types::IntRectangleRange',
        'VideoSourceTokensAvailable' => 'ONVIF::Media::Types::ReferenceToken',
        'Extension' => 'ONVIF::Media::Types::VideoSourceConfigurationOptionsExtension',
    },
    {

        'BoundsRange' => 'BoundsRange',
        'VideoSourceTokensAvailable' => 'VideoSourceTokensAvailable',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::VideoSourceConfigurationOptions

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
VideoSourceConfigurationOptions from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * BoundsRange


=item * VideoSourceTokensAvailable


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::VideoSourceConfigurationOptions
   BoundsRange =>  { # ONVIF::Media::Types::IntRectangleRange
     XRange =>  { # ONVIF::Media::Types::IntRange
       Min =>  $some_value, # int
       Max =>  $some_value, # int
     },
     YRange =>  { # ONVIF::Media::Types::IntRange
       Min =>  $some_value, # int
       Max =>  $some_value, # int
     },
     WidthRange =>  { # ONVIF::Media::Types::IntRange
       Min =>  $some_value, # int
       Max =>  $some_value, # int
     },
     HeightRange =>  { # ONVIF::Media::Types::IntRange
       Min =>  $some_value, # int
       Max =>  $some_value, # int
     },
   },
   VideoSourceTokensAvailable => $some_value, # ReferenceToken
   Extension =>  { # ONVIF::Media::Types::VideoSourceConfigurationOptionsExtension
     Rotate =>  { # ONVIF::Media::Types::RotateOptions
       Mode => $some_value, # RotateMode
       DegreeList =>  { # ONVIF::Media::Types::IntList
         Items =>  $some_value, # int
       },
       Extension =>  { # ONVIF::Media::Types::RotateOptionsExtension
       },
     },
     Extension =>  { # ONVIF::Media::Types::VideoSourceConfigurationOptionsExtension2
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

