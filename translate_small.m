imagedata = imread('Fig3.tif');
figure
imshow(imagedata);
[m,n]=size(imagedata);


%����:�任����translationM��
%Ҫ��X�����Y�����ƽ������Ϊ50


%����:���㼸��ƽ�ƺ�Ŀռ�λ��
%(i,j)->[i;j;1]


%���䣺��ʾƽ�ƺ�Ľ��

[R, C] = size(init); % ��ȡͼ���С 
timesX = 1/3; % X�������� 
timesY = 1/3; % Y�������� 
res = zeros(1/timesX * R, 1/timesY * C); % ����������ÿ�����ص�Ĭ�ϳ�ʼ��Ϊ0����ɫ�� 
tras = [timesX 0 0; 0 timesY 0; 0 0 1]; % ���ŵı任���� 
for i = 1 : timesX * R 
    for j = 1 : 1/timesY * C temp = [i; j; 1]; temp = tras * temp; % ����˷� 
        x = uint8(temp(1, 1)); y = uint8(temp(2, 1)); % �任���λ���ж��Ƿ�Խ�� 
        if (x <= R) & (y <= C) & (x >= 1) & (y >= 1) 
            res(i, j) = init(x, y); 
        end
    end
end; 
imshow(uint8(res)); % ��ʾͼ��