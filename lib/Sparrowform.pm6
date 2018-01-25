use v6;

unit module Sparrowform;

my @hosts = Array.new;

sub sparrowform-hosts() is export {
  @hosts
}

sub set-sparrowform-hosts( @list = ()) is export {
  @hosts = @list
}


