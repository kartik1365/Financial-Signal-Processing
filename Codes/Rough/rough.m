x=[11939;
11627.45;
11786.25;
12005.85;
12120;
12151.15;
12102.35;
12108.4;
12151;
12219.55;
12190.15;
12131.8;
12028.25;
12090.6;
12119;
12012.55;
11877.5;
11738.55;
11661.25];
d=[11627.45;
11786.25;
12005.85;
12120;
12151.15;
12102.35;
12108.4;
12151;
12219.55;
12190.15;
12131.8;
12028.25;
12090.6;
12119;
12012.55;
11877.5;
11738.55;
11661.25;
11382
];
lms=dsp.LMSFilter;
% lms=dsp.LMSFilter(12,'StepSize',0.8,'WeightsOutputPort',true);
% [y,e,w]=step(lms,x,d);
[y,err,wts] = lms(x,d);
disp(y(length(y)-1));