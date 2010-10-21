# very basic
'not interpolated\n';
"this is interpolated\n";

# what gets interpolated
"interpolate $a_scalar";
"interpolate $a_hash{key}";
"interpolate $a_hashref->{key}";
"interpolate $an_array[0]";
"interpolate $an_arrayref->[0]";
"doesn't interpolate $a_coderef->()";


# different delimiters
q@ any random character can be used, as long as both ends match @;
q< others need to be balanced.  eg. angle brackets>;
q( parens);
q[ brackets];
q{ braces };

qq; some random character (some choices are wiser than others) ;;
qq( parens );
qq< angle brackets>;
qq[ brackets];
qq{ braces };


# spacing
q  {there can be a space before the delimiter};
q
   {there can even be a newline};
q# hash is ok as a delimiter if there is no space #;
q
{text};
qq
{text};


# escape sequences
use charnames ':full', ':short';
qq(
    \013    octal
    \0134   at most 2 digits long
    \099    and only 0-7

    \x1a     hex character
    \x8000   maximum of 2 characters
    \xxz     only hex characters
    \x{8000} can be longer if it's in braces
    \x{7zaf} only hex characters allowed here too

    \c[     control character

    \N{CONTOUR INTEGRAL}  named unicode char.
    \N{greek:delta}       different format name
    \N{U+222e}            unicode value.

);

