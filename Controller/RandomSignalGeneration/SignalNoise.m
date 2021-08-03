function output=SignalNoise(InSignal,noise_control,noise_duration)
%SignalNoise     - Inject Noise in certain sections of the input signal.
% InSignal       - Input signal,  Can either be a 1 column array with
%                  data or 2 columns with first column as time and
%                  second as data.
%noise_control   - [0 - 1] Factor to control amount of noise to be injected.
%noise-duraion   - [0 - 1] factor to control the duration for the noise
%                  signal.
%
% Copyright RaghavendraPrasad H V - prasad11raghu@gmail.com
% Nov 2013
input=InSignal(:,end);
toggles=round(noise_control*10);
%Maximum diatance for which noise has to be introduced inversely
%proportional to noise control
point_dist=round(50*noise_duration);
%Find the random indices where noises are to be introduced
indices_start=randi([0,length(input)],toggles,1);
%mod to contain within input length range
indices_start=mod(indices_start,size(input,1));
%temp to replace 0's with 1
temp=ismember(indices_start,0);
temp=find(temp);
indices_start(temp)=1;
%Find unique among indices_start
indices_start=unique(indices_start);
%Generate stop indices
for i=1:length(indices_start)
     if (i<length(indices_start))
        indices_stop(i)=randi([indices_start(i),min(indices_start(i+1),indices_start(i)+point_dist)],1,1);
        %for last start index, consider stop index as start index + point distance
    elseif(i==length(indices_start))
        indices_stop(i)=randi([indices_start(i),min(length(input),indices_start(i)+point_dist)],1,1);
     end
     if indices_stop(i)>length(input)
         indices_stop(i)=length(input);
     end
end
indices_stop=indices_stop';
%%%%%%%%%%
%%Random noise parameters%%
%%Ramp
%slope of ramp function is equal to 10% of difference b/w max & min values of input
slope=round((max(input)-min(input))*0.1)+noise_control;
%intercept of ramp function is random integer b/w upper & lower limits of
%noise control
intercept=randi([1,4],1,1);
%%Sine
%amplitude is 10% of difference b/w max & min values of input
amp=round((max(input)-min(input))*0.1)+noise_control;
%freq is random int b/w 5 & 20
freq=randi([5,20],1,1);
%%Spike
%amplitude of spike is 10% of difference b/w max & min values of input
spike=round((max(input)-min(input))*0.1)+noise_control;
%%Noise
%upper & lower limits are 10% of difference b/w max & min values of input
lower_value=-(round(abs((max(input)-min(input))*0.1))+noise_control);
upper_value=round(abs((max(input)-min(input))*0.1))+noise_control;
%%%%%%%%%%%

%%%Data Recorder%%%
% time_stamp=datestr(now);
% diary status.txt
% disp(time_stamp);
% diary off
%%%

%Initialise Output to Input
output=input;
%Shuffle which has information about which noise to be inserted
%taking into consideration that 4 types of noise can be introduced
if (toggles>4)
    shuffle=randperm(toggles);
else
    shuffle=randi([1 4],toggles,1);
end
shuffle=mod(shuffle,4);

%%Generate random noises
for i=1:length(indices_start)
    string=[num2str(indices_start(i)) '#' num2str(indices_stop(i))];
    %Spike
    if indices_start(i)==indices_stop(i)
        output(indices_start(i))=input(indices_start(i))+spike;
        string=[string '#spike'];
    else
        %Ramp:Shuffle==0
        if shuffle(i)==0
            end_point=slope*input(indices_stop(i))+intercept;
            output(indices_start(i):indices_stop(i))=linspace(input(indices_start(i)),end_point,indices_stop(i)-indices_start(i)+1);
            string=[string '#ramp'];
            %Constant:Shuffle==1
        elseif shuffle(i)==1
            output(indices_start(i):indices_stop(i))=input(indices_start(i));
            string=[string '#constant'];
            %Sine:Shuffle==2
        elseif shuffle(i)==2
            sine=(amp*sin(2*180*freq*[1:(indices_stop(i)-indices_start(i))+1]))';
            output(indices_start(i):indices_stop(i))=input(indices_start(i):indices_stop(i))+sine;
            string=[string '#sine'];
            %Noise:Shuffle==3
        elseif shuffle(i)==3
            noise=lower_value+(upper_value-lower_value).*rand(1,(indices_stop(i)-indices_start(i))+1)';
            output(indices_start(i):indices_stop(i))=input(indices_start(i):indices_stop(i))+noise;
            string=[string '#noise'];
        end
    end
%     diary status.txt
%     disp(string);
%     diary off
end


%Plot the result
plot_flag=0;
if plot_flag==1
    figure(1);
    subplot(2,1,1),plot([output input]);
    title('Input/Output')
    subplot(2,1,2),plot(abs(output-input));
    title('Error');
end
if size(InSignal,2)>1
output = [InSignal(:,1) output];
end