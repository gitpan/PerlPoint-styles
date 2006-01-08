
// the overview part of the style doc

=Intro

The \B<S5 PerlPoint style> is an example PerlPoint style,
part of the \C<PerlPoint::styles> package.

It demonstrates a Template Toolkit based layout. More, it
can be used to produce S5 documents from PerlPoint sources.

PerlPoint can be found on CPAN and its \L{url="http://perlpoint.sf.net"}<project page> at
SourceForge.

To use this style, you need to have \C<PerlPoint::Template::TT2> installed.


=Producing an S5 layout - write ...

Using this style to produce an S5 presentation is simple:

* install PerlPoint (see the installation chapter at \L{url="http://perlpoint.sf.net/"}<the project page>)

* write your PerlPoint source as usual

  =Test slide

  * one

  * two

* take care to limit chapters to content that can be displayed on one slide, as S5 does not allow to scroll



=... and transform


* process the document using this style (shorten the call by option files if required)

  perlpoint -target XML -format XHTML                  \\
            -doctitle "An S5 presentation"             \\
            -docauthor "Your Name"                     \\
            \F{color=blue}<-targetdir pps5>                            \\
            -styledir .../PerlPoint-styles/demo/styles \\
            \F{color=red}<\B<-style S5>>                                  \\
            presentation.pp

* copy the supplementary S5 directory \B<\C<ui>> into the \F{color=blue}<target directory>
  (see S5 pages for details)

* start your presentation in an S5 approved browser


=License

This style can be used under the same terms as \C<PerlPoint::styles>
itself. Derived layouts should document their heritage.

