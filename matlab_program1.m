num_points=100;
random_sequence=rand(1,num_points);
figure;
plot(random_sequence,'-o','LineWidth',1.5,'MarkerSize',4,'Color',[0.1 0.5 0.8]);
xlabel('index');
ylabel('random value');
title('random number_sequence');
grid on;