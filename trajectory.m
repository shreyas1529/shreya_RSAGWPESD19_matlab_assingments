% Parameters
initial_velocity = 50; % initial velocity in m/s
launch_angle = 45; % launch angle in degrees
g = 9.81; % gravitational acceleration in m/s^2

% Convert angle to radians
launch_angle_rad = deg2rad(launch_angle);

% Initial velocity components
vx = initial_velocity * cos(launch_angle_rad); % initial velocity in x-direction
vy = initial_velocity * sin(launch_angle_rad); % initial velocity in y-direction

% Time of flight
time_of_flight = 2 * vy / g;

% Time vector for plotting
t = linspace(0, time_of_flight, 100);

% Trajectory equations
x = vx * t; % horizontal displacement
y = vy * t - 0.5 * g * t.^2; % vertical displacement

% Maximum height
max_height = (vy^2) / (2 * g);

% Range
range = vx * time_of_flight;

% Plot the trajectory
figure;
plot(x, y, 'b-', 'LineWidth', 1.5);
hold on;

% Mark the maximum height and range
plot(range, 0, 'ro', 'MarkerSize', 8, 'DisplayName', 'Range');
plot(range / 2, max_height, 'go', 'MarkerSize', 8, 'DisplayName', 'Max Height');

% Plot annotations
text(range, 0, sprintf(' Range = %.2f m', range), 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
text(range / 2, max_height, sprintf(' Max Height = %.2f m', max_height), 'VerticalAlignment', 'top', 'HorizontalAlignment', 'center');

% Add labels and title
xlabel('Horizontal Distance (m)');
ylabel('Vertical Distance (m)');
title('Projectile Trajectory');
legend('Trajectory', 'Range', 'Max Height');
grid on;
axis equal;
hold off;