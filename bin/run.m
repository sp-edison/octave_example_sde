#!/usr/bin/env octave

clear, clc, close all
texi_macros_file("/dev/null");


args = argv() ;
i = 1 ;
while i <= length(args)
    option = args{i} ;
    switch option
    case {"-i" "--inp"}
        inputfile = args{++i} ;
    otherwise
        disp("err") ;
        exit(1) ;
        break ;
    endswitch
    i++ ;
endwhile

disp(inputfile)

fid = fopen(inputfile, 'r') ;

lines = textscan(fid, "%s", 'delimiter',';\n');

i=1;
while i <= length(lines{1})
    line = strsplit(lines{1}{i}, ' ' );
    i++;
    switch line{1}
    case {"INT1"}
        int1 = str2num(line{2}) ;
    case{"REAL1"}
        real1 = str2double(line{2}) ;
    case{"LIST1"}
         list1 = line{2} ;
    case{"VECTOR1"}
        vector_tmp = strsplit(line{2}, " ");
        vector1 = { str2num(vector_tmp{1}),
                    str2num(vector_tmp{2}),
                    str2num(vector_tmp{3}) } ;
    endswitch
endwhile

disp(int1)
disp(real1)
disp(list1)
disp(vector1)

fclose ("all");
