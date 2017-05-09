f = 50;
T = 1/f;
N = 16; % Samples per Cycle
dt=T/N;		%??????
n = 0 : N * N-1;	%???????????
tn = n*dt; %????????????????

%sawtooth
t1 = [-2 :0.01 : 2];
y1 = sawtooth(2*f*pi*t1, 0.5) + 1;
Ys = sawtooth(2*f*pi*tn, 0.5) + 1;

subplot(2, 2, 1);
plot(t1, y1);
axis([-0.02 0.02 0 2]);
subplot(2, 2, 2);
stem(tn, Ys);
axis([-0.02 0.02 0 2]);
%square