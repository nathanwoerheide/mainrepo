#!/bin/bash

cd /var/www/html
/usr/bin/perl install-module.pl PatchReader
/usr/bin/perl install-module.pl Email::Reply
/usr/bin/perl install-module.pl Apache2::SizeLimit
/usr/bin/perl install-module.pl Email::Send
/usr/bin/perl install-module.pl --all
