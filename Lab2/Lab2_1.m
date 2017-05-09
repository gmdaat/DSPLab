%seq1
n1 = [-3 : 4];
for i = 1 : 8;
    if n1(i) == 0
        f1(i) = 1;
    else
        f1(i) = 0;
    end
end
subplot(3, 2, 1);
stem(n1, f1);
title('f1-n1');
xlabel('n1');
ylabel('f1');

%seq2
n2 = [-5 : 5];
for i = 1 : 11
    if n2(i) < 0
        f2(i) = 0;
    else 
        f2(i) = 1;
    end    
end
subplot(3, 2, 2);
stem(n2, f2);
title('f2-n2');
xlabel('n2');
ylabel('f2');

%seq3
n3 = [0 : 0.1 : 16];
f3 = exp((0.1 + 1i * 1.6 *pi) * n3);
subplot(3, 2, 3);
stem(n3, real(f3));
title('real(f3)-n3');
xlabel('n3');
ylabel('real(f3)');

%seq3_imag
n3 = [0 : 0.1 : 16];
f3 = exp((0.1 + 1i * 1.6 *pi) * n3);
subplot(3, 2, 4);
stem(n3, imag(f3));
title('imag(f3)-n3');
xlabel('n3');
ylabel('imag(f3)');

%seq4
n4 = [0 : 0.1 : 20];
f4 = 3 * sin(n4 * pi / 4);
subplot(3, 2, 5);
stem(n4, f4);
title('f4-n4');
xlabel('n4');
ylabel('f4');

%seq5
n5 = [-20 : 0.1 : 20];
f5 = sinc(n5 / (5 * pi));
subplot(3, 2, 6);
stem(n5, f5, 'filled');
title('f5-n5');
xlabel('n5');
ylabel('f5');