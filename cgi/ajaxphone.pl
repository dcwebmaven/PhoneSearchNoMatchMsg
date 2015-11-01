#!/usr/bin/perl

print "Content-type: text/html\n\n";

%query = split(/=/, $ENV{QUERY_STRING});

$searchname = $query{"firstname"};


%addressdb = ('John' => '302 E. John St, Champaign IL 61820',
            'Jane' => '1005 Gravenstein Highway N, Sebastopol CA 95472');

%phonedb = ('John' => '1-800-123-4567',
              'Jane' => '1-800-234-5678');

%emaildb = ('John' => 'john@domain.com',
              'Jane' => 'jane@domain.com');

%picturedb = ('John' => 'cello.jpg',
             'Jane' => 'violin.jpg');

$address = $addressdb{"$searchname"};
$phone = $phonedb{"$searchname"};
$email = $emaildb{"$searchname"};
$picture = $picturedb{"$searchname"};

print "$address|$phone|$email|$picture";


