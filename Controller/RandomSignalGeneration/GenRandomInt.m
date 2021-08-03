function x=GenRandomInt(NoOfTransitions,range,EndTime,dt)
% GenRandomInt      - Generates Random  staircase signal function
% NoOfTransitions   - Input to define the number of transitions required in
%                     the output signal
% EndTime,dt        - output will be generated from 0 to EndTime
%                     with dt sample time.
% x                 - Output signal along with time array.Can be
%                     direclty read into simulink. The data type of the
%                     output is still double. But rounded to take only
%                     integer values.
%
% Copyright Chethan CU - chethan.cu@gmail.com 
% Nov 2013

a=rand(NoOfTransitions,1)*EndTime;
b=sort(ceil(a/dt)*dt);
t=0:dt:EndTime;

flag=1*round(rand()*range);
rand_index=1;
for n=1:EndTime*1/dt+1
    if(rand_index~=NoOfTransitions)
        if(t(n)>=b(rand_index))
            flag=round(rand()*range);
            rand_index=rand_index+1;
        end
    end
    x(n)=flag;
end
x=[ t' x' ];

