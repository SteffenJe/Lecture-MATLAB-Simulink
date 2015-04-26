%Exercise 1 - Manipulating Data

%1.1 Create a 4x3 matrix of random numbers
a=rand(4,3)
%Extract the elements at locations 1,2 and 2,3
b=a(1,2)
c=a(2,3)
%Extract the element in the lower right
d=a(4,3)
%Set every value between 0 and 0.5
a=0+0.5.*rand(4,3)


%1.2 Create a diagonal matrix of size 4x4 with 3 on the diagonal
e=[3,3,3,3]
f=diag(e)

%Solve Ax=b for A=magic(3) and b=(1 2 3)
A=magic(3)
b=[1,2,3]
x=b*inv(A)
%Compute eigenvalues of A
y=eig(A)
%---------------------------------------------------------------

%Exercise 2 - For and While loop
%Eulers Method: http://tutorial.math.lamar.edu/classes/de/eulersmethod.aspx
 
t_final=2;
t_stepsize=0.01;
t=0;
y1=1;
y2=1;
Vector_t=0:t_stepsize:t_final;
index1=1;
index2=1;
for t=0:0.01:2
    %Exercise 1
    f1=t^2-y1^2;
    y1=y1+t_stepsize*f1;
    M1(index1)=y1;
    index1=index1+1;
  
    %Exercise 2
    f2=t-abs(y2);
    y2=y2+t_stepsize*f2;
    M2(index2)=y2;
    index2=index2+1;
end
y1
y2

%Plot the results
plot(Vector_t,M1,'-.r',Vector_t,M2,'-.b')
legend('Exercise 2.1 i','Exercise 2.1 ii')
title ('Exercise 2.1')
xlabel('stepsize (Eulers Method)')
ylabel('Approximation')
%---------------------------------------------------------------

%Exercise 3 - Scripts and Functions
%Scripts
%3.1 i
x=-1:0.1:1;
y1=x.^2;
%3.1 ii
y2=((exp(-x)./((x).^2+1))+sin(x).^2).^2+0.2;
%Plot the results
plot (x,y1,x,y2)
hold on
legend ('Exercise i','Exercise ii')

%Functions
%Call the function_1
[y1]=function_1(x);
%Call the function_2
[y2]=function_2(x);

