function answer = rp_plot(image)
%%%The function will plot the parameter of translation%%
%%%and rotation of the subject's head-movement directly.%%
%%%Writed by Wang Shilei,School of Physics,Peking University%%
%%%Beijing,December 18th,2020%%

data = load(image); %%Load the rp_*.txt%%

set(0,'defaultfigurecolor','w');%%Set the background of figure white%%
figure;
subplot(2,1,1);%%Plot the parameter of translation%%
plot(data(:,1));
hold on;plot(data(:,2));
hold on;plot(data(:,3));
label_1 = legend('x','y','z');
set(label_1,'Box','off');
xlabel('Number of images');
ylabel('Translation (mm)');

subplot(2,1,2);%%Plot the parameter of rotation%%
plot(data(:,4)*180/pi);
hold on;plot(data(:,5)*180/pi);
hold on;plot(data(:,6)*180/pi);
label_2 = legend('x','y','z');
set(label_2,'Box','off');
xlabel('Number of images');
ylabel('Rotation (бу)');