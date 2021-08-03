function x=GenRandomBool(NoOfTransitions,EndTime,dt)
% GenRandomTestBool - Generates Random Bool signal function
% NoOfTransitions   - Input to define the number of transitions required in
%                     the boolean output signal. The time where these
%                     random transitions happen are randomly choosen.
% EndTime,dt        - Boolean output will be generated from 0 to EndTime
%                     with dt sample time.
% x                 - Output random boolean signal along with time array.Can be
%                     direclty read into simulink.
%
% Copyright Chethan CU - chethan.cu@gmail.com 
% Nov 2013

a=rand(NoOfTransitions,1)*EndTime;
b=sort(ceil(a/dt)*dt);
t=0:dt:EndTime;
% Generate first frame randomly
IC=rand();
if(IC>0.5)
    flag=0;
else
    flag=1;
end
rand_index=1;
for n=1:EndTime*1/dt+1
    if(rand_index~=NoOfTransitions)
        if(t(n)>=b(rand_index))
            % toggle flag
            flag=~flag;
            rand_index=rand_index+1;
        end
    end
    x(n)=flag;
end
x=[t'  x' ];
