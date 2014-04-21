[EmL EmI] = textread('absorption_gron_lampa', '%f %f');
[AbsL AbsI] = textread('emission_gron_lampa', '%f %f');
AbsL = AbsL';
AbsI = AbsI';
EmL = EmL';
EmI = EmI';

plot(AbsL, AbsI, 'r');
hold on;
plot(EmL, EmI, 'g');
xlabel('Våglängd m');
ylabel('Intensitet');