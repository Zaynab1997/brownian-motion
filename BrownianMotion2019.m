function varargout = BrownianMotion2019(varargin)
% BROWNIANMOTION2019 MATLAB code for BrownianMotion2019.fig
%      BROWNIANMOTION2019, by itself, creates a new BROWNIANMOTION2019 or raises the existing
%      singleton*.
%
%      H = BROWNIANMOTION2019 returns the handle to a new BROWNIANMOTION2019 or the handle to
%      the existing singleton*.
%
%      BROWNIANMOTION2019('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BROWNIANMOTION2019.M with the given input arguments.
%
%      BROWNIANMOTION2019('Property','Value',...) creates a new BROWNIANMOTION2019 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before BrownianMotion2019_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to BrownianMotion2019_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BrownianMotion2019

% Last Modified by GUIDE v2.5 09-Jan-2019 00:01:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @BrownianMotion2019_OpeningFcn, ...
                   'gui_OutputFcn',  @BrownianMotion2019_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before BrownianMotion2019 is made visible.
function BrownianMotion2019_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to BrownianMotion2019 (see VARARGIN)

% Choose default command line output for BrownianMotion2019
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes BrownianMotion2019 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = BrownianMotion2019_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Nbre_Callback(hObject, eventdata, handles)
% hObject    handle to Nbre (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Nbre as text
%        str2double(get(hObject,'String')) returns contents of Nbre as a double


% --- Executes during object creation, after setting all properties.
function Nbre_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Nbre (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edittime_Callback(hObject, eventdata, handles)
% hObject    handle to edittime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edittime as text
%        str2double(get(hObject,'String')) returns contents of edittime as a double


% --- Executes during object creation, after setting all properties.
function edittime_CreateFcn(hObject)
% hObject    handle to edittime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function noise_Callback(hObject, eventdata, handles)
% hObject    handle to noise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of noise as text
%        str2double(get(hObject,'String')) returns contents of noise as a double


% --- Executes during object creation, after setting all properties.
function noise_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function viscosity_Callback(hObject, eventdata, handles)
visc=get(handles.viscosity,'Value');          %viscosity
 set(handles.editvisc,'String',visc);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function viscosity_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function temperature_Callback(hObject, eventdata, handles)
temp=get(handles.temperature,'Value');          %viscosity
 set(handles.edittemperature,'String',temp);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function temperature_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function radius_Callback(hObject, eventdata, handles)
rad=get(handles.radius,'Value');          %viscosity
 set(handles.editradius,'String',rad);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function radius_CreateFcn(hObject)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
myworld = vrworld('BrownTheFirst.WRL')
open(myworld)
set(myworld, 'Description', 'My first virtual world');
view(myworld)
nodes(myworld);
mynodes = get(myworld, 'Nodes')
fields(myworld.Boule)


N = get(handles.Nbre,'String');   % number of steps to take
N = str2num(N);
          
T=get(handles.edittime,'String'); % maximum time
T=str2double(T);
 

R=8.314472;
Na=6.0221e+023;

h=T/N;              % time step     

pause(5);

 x=zeros(N+1);   % place to store x locations
 y=zeros(N+1);   % place to store y locations
 z=zeros(N+1);   % place to store z locations

 x(1)=0.0;
 y(1)=0.0;
 z(1)=0.0;
 
 myworld.Boule.translation=[0 0 0];
 

  for i=1:1:N           % take N steps
      pause(h);
       
  sigma=get(handles.noise,'String');          % strength of noise
  sigma=str2double(sigma);
  
 visc=get(handles.editvisc,'String');            %viscosity
 visc=str2double(visc);
  
 temp=get(handles.edittemperature,'String');          %temperature
 temp=str2double(temp);
 
 r=get(handles.editradius,'String'); % maximum time
r=str2double(r);
scale=r/20;
r=r*10^-6;

  k=R*temp/(6*pi*Na*visc*r)*10^17;

      x(i+1)=x(i)+sigma*sqrt(h)*k*normrnd(0,1);
      y(i+1)=y(i)+sigma*sqrt(h)*k*normrnd(0,1);
      z(i+1)=z(i)+sigma*sqrt(h)*k*normrnd(0,1);
 
myworld.Boule.scale=[scale scale scale] ;
myworld.Boule.translation=[x(i+1) y(i+1) z(i+1)];

  end;



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
myworld = vrworld('BrownTheThird.WRL')
open(myworld)
set(myworld, 'Description', 'My first virtual world');
view(myworld)
nodes(myworld);
mynodes = get(myworld, 'Nodes')
fields(myworld.B1)
fields(myworld.B2)
fields(myworld.B3)
fields(myworld.B4)
fields(myworld.B5)
nbBoules=5;

N = get(handles.Nbre,'String');   % number of steps to take
N = str2num(N);
          
T=get(handles.edittime,'String'); % maximum time
T=str2double(T);



R=8.314472;
Na=6.0221e+023;

 
h=T/N;              % time step     

pause(5);

 x=zeros(N+1,nbBoules);   % place to store x locations
 y=zeros(N+1,nbBoules);   % place to store y locations
 z=zeros(N+1,nbBoules);   % place to store z locations

x(1,:)=[2.1 3 -2.6 -3 8];
y(1,:)=[0 -2 3.3 -7 1];
z(1,:)=[11 8 0.3 4 1];


R=8.314472;
Na=6.0221e+023;
h=T/N;   
  for i=1:1:N           % take N steps
  sigma=get(handles.noise,'String');          % strength of noise
  sigma=str2double(sigma);
  visc=get(handles.editvisc,'String');            %viscosity
  visc=str2double(visc);
  temp=get(handles.edittemperature,'String');          %temperature
  temp=str2double(temp);
  r=get(handles.editradius,'String'); % maximum time
  r=str2double(r);
  scale=r/20;
  r=r*10^-6;
  k=R*temp/(6*pi*Na*visc*r)*10^17;
  for j=1:nbBoules 
      x(i+1,j)=x(i,j)+sigma*sqrt(h)*k* normrnd(0,1);
      y(i+1,j)=y(i,j)+sigma*sqrt(h)*k*normrnd(0,1);
      z(i+1,j)=z(i,j)+sigma*sqrt(h)*k*normrnd(0,1);
  end
 
 
myworld.B1.scale=[scale scale scale] ;
myworld.B2.scale=[scale scale scale] ;
myworld.B3.scale=[scale scale scale] ;
myworld.B4.scale=[scale scale scale] ;
myworld.B5.scale=[scale scale scale] ;

myworld.B1.translation=[x(i+1,1) y(i+1,1) z(i+1,1)];
myworld.B2.translation=[x(i+1,2) y(i+1,2) z(i+1,2)];
myworld.B3.translation=[x(i+1,3) y(i+1,3) z(i+1,3)];
myworld.B4.translation=[x(i+1,4) y(i+1,4) z(i+1,4)];
myworld.B5.translation=[x(i+1,5) y(i+1,5) z(i+1,5)];
pause(h);
  end;



function editvisc_Callback(hObject, eventdata, handles)
% hObject    handle to editvisc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editvisc as text
%        str2double(get(hObject,'String')) returns contents of editvisc as a double


% --- Executes during object creation, after setting all properties.
function editvisc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editvisc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editNbre3d_Callback(hObject, eventdata, handles)
% hObject    handle to editNbre3d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editNbre3d as text
%        str2double(get(hObject,'String')) returns contents of editNbre3d as a double


% --- Executes during object creation, after setting all properties.
function editNbre3d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editNbre3d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editTime3d_Callback(hObject, eventdata, handles)
% hObject    handle to editTime3d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editTime3d as text
%        str2double(get(hObject,'String')) returns contents of editTime3d as a double


% --- Executes during object creation, after setting all properties.
function editTime3d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editTime3d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editNoise3d_Callback(hObject, eventdata, handles)
% hObject    handle to editNoise3d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editNoise3d as text
%        str2double(get(hObject,'String')) returns contents of editNoise3d as a double


% --- Executes during object creation, after setting all properties.
function editNoise3d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editNoise3d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(figure(2));
close(figure(3));
close(figure(1));
clf
figure(1);
 dynamic=get(handles.radiobutton1,'Value');
number=get(handles.editNbre3d,'String');
number=str2num(number);
sigma=get(handles.editNoise3d,'String');
sigma=str2double(sigma);
T=get(handles.editTime3d,'String');
T=str2double(T);
h=T/number;
t=(0:h:T);
x=zeros(size(t));
y=zeros(size(t));
z=zeros(size(t));
x(1)=0.0;
y(1)=0.0;
z(1)=0.0;
for i=1:number
   x(i+1)=x(i)+sigma*sqrt(h)*randn; 
   y(i+1)=y(i)+sigma*sqrt(h)*randn; 
   z(i+1)=z(i)+sigma*sqrt(h)*randn;
    for j=i+2:number+1
        x(j)=x(i+1);
        y(j)=y(i+1);
        z(j)=z(i+1);
    end
    if (dynamic==0)
        
        plot3(x,y,z,'r');
        grid on;
    else
        
         plot3(x,y,z,'r');
         grid on;
         pause(h);
         axis([-5 5 -5 5 -5 5]);
    end
end



% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in pushbuttonrecip.
function pushbuttonrecip_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonrecip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
myworld = vrworld('vrml1.WRL')
open(myworld)
set(myworld, 'Description', 'My recipiant virtual world');
view(myworld)
nodes(myworld);
mynodes = get(myworld, 'Nodes')
% fields(myworld.recepiant)
fields(myworld.big)
fields(myworld.b1)
fields(myworld.b2)
fields(myworld.b3)
fields(myworld.b4)
fields(myworld.b5)
fields(myworld.b6)

N=6; %6 particules
T=get(handles.edit10,'String');
T=str2num(T);
sigma=get(handles.edit11,'String');
sigma=str2double(sigma);
visc=get(handles.edit12,'String');
visc=str2double(visc);
temp=get(handles.edit13,'String');
temp=str2num(temp);
R=8.314472;
Na=6.0221e+023;
h=T/N;              % time step     
% pause(5);

 x=zeros(N+1,1);   % place to store x locations
 y=zeros(N+1,1);   % place to store y locations
 z=zeros(N+1,1);   % place to store z locations
 
 x1=zeros(N+1,1);   % place to store x locations
 y1=zeros(N+1,1);   % place to store y locations
 z1=zeros(N+1,1);   % place to store z locations
grad=zeros(3,N+1);
 for i=1:1:size(grad)
     for j=1:1:N+1
         grad(i,j)= sign(randn);
     end
 end
 r1=0.2;
x(:)=[0 -0.2 -0.9 0 0 0.25 0.25];
y(:)=[0 -0.1 0.8 0.5 -0.3 0.25 0.25];
z(:)=[0 0.15 0 0.5 -0.5 0.25 -0.75];
scale=r1/20;
r2=0.0228;
r=r1*10^-5;
k=R*temp/(6*pi*Na*visc*r)*10^17;
 betta=sigma*sqrt(h)*k*normrnd(0,1);
 betta=betta/500;
 alpha=sqrt((r1/r2)/betta^2);
 alpha=alpha/200;
 %initialisation
  for i=1:1:N+1
   x1(i)=x(i)-grad(1,i).*alpha;  
    y1(i)=y(i)-grad(2,i).*alpha;
     z1(i)=z(i)-grad(3,i).*alpha;
 end
 etat0=[x1(:) y1(:) z1(:)];
 etat0=transpose(etat0);
 etat1=[x(:) y(:) z(:)];
 etat1=transpose(etat1);
 for s=1:1:10
   for i=2:1:N
   
    if (sqrt(norm(etat0(:,i)-etat0(:,1))) <= r1+r2)
        grad(:,1)=sign(etat0(:,i)-etat0(:,0));
           [grad(1,i),grad(2,i),grad(3,i)]=Gradient2(etat0(:,i),etat0(:,j),grad(:,1),r1,r2);
    end
    if(abs(etat0(1,i))>=0.9772)
       grad(1,i)=-grad(1,i); 
    end
     if(abs(etat0(2,i))>=0.9772)
       grad(2,i)=-grad(2,i); 
     end
     if(abs(etat0(3,i))>=0.9772)
       grad(3,i)=-grad(3,i); 
     end
    for j=i:1:N
        if (abs(etat0(:,i)-etat0(:,j))<=2*r2)
            grad(:,j)=[sign(etat0(1,i)-etat0(1,j)) sign(etat0(2,i)-etat0(2,j)) sign(etat0(3,i)-etat0(3,j)) ];
           [grad(1,i),grad(2,i),grad(3,i)]=Gradient2(etat0(:,i),etat0(:,j),grad(:,j),r2,r2);
     
         etat1(:,i)=etat0(:,i)+grad(:,i).*alpha;
        end
    end
      if(abs(etat0(1,1))>=0.8)
       grad(1,1)=-grad(1,1); 
      end
     if(abs(etat0(2,1))>=0.8)
       grad(2,1)=-grad(2,1); 
     end
     if(abs(etat0(3,1))>=0.8)
       grad(3,1)=-grad(3,1); 
     end
    
   etat1(:,i)=etat0(:,i)+grad(:,i).*alpha;
   etat0=etat1; 
   pause(h);
   end
     myworld.big.translation=[grad(1,1)*betta grad(2,1)*betta grad(3,1)*betta]
     myworld.b1.scale=[scale scale scale]
     myworld.b2.scale=[scale scale scale]
     myworld.b3.scale=[scale scale scale]
     myworld.b4.scale=[scale scale scale]
     myworld.b5.scale=[scale scale scale]
     myworld.b6.scale=[scale scale scale]
     
     myworld.big.translation=[grad(1,1)*betta grad(2,1)*betta grad(3,1)*betta]
     myworld.b1.translation=[grad(1,2)*alpha grad(2,2)*alpha grad(3,2)*alpha]
     myworld.b2.translation=[grad(1,3)*alpha grad(2,3)*alpha grad(3,3)*alpha]
     myworld.b3.translation=[grad(1,4)*alpha grad(2,4)*alpha grad(3,4)*alpha]
     myworld.b4.translation=[grad(1,5)*alpha grad(2,5)*alpha grad(3,5)*alpha]
     myworld.b5.translation=[grad(1,6)*alpha grad(2,6)*alpha grad(3,6)*alpha]
     myworld.b6.translation=[grad(1,7)*alpha grad(2,7)*alpha grad(3,7)*alpha]
 end


function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
visc=get(handles.slider4,'Value');          %viscosity
 set(handles.edit12,'String',visc);

% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
temp=get(handles.slider5,'Value');          %viscosity
 set(handles.edit13,'String',temp);

% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editnbre2d_Callback(hObject, eventdata, handles)
% hObject    handle to editnbre2d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editnbre2d as text
%        str2double(get(hObject,'String')) returns contents of editnbre2d as a double


% --- Executes during object creation, after setting all properties.
function editnbre2d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editnbre2d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edittime2d_Callback(hObject, eventdata, handles)
% hObject    handle to edittime2d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edittime2d as text
%        str2double(get(hObject,'String')) returns contents of edittime2d as a double


% --- Executes during object creation, after setting all properties.
function edittime2d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edittime2d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editnoise2d_Callback(hObject, eventdata, handles)
% hObject    handle to editnoise2d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editnoise2d as text
%        str2double(get(hObject,'String')) returns contents of editnoise2d as a double


% --- Executes during object creation, after setting all properties.
function editnoise2d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editnoise2d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(figure(2));
close(figure(3));
close(figure(1));
clf
figure(2);
 dynamic=get(handles.radiobutton3,'Value');
number=get(handles.editnbre2d,'String');
number=str2num(number);
sigma=get(handles.editnoise2d,'String');
sigma=str2double(sigma);
T=get(handles.edittime2d,'String');
T=str2double(T);
h=T/number;
t=(0:h:T);
x=zeros(size(t));
y=zeros(size(t));

x(1)=0.0;
y(1)=0.0;

for i=1:number
   x(i+1)=x(i)+sigma*sqrt(h)*randn; 
   y(i+1)=y(i)+sigma*sqrt(h)*randn; 

    for j=i+2:number+1
        x(j)=x(i+1);
        y(j)=y(i+1);

    end
    if (dynamic==0)
        
        plot(x,y,'r');
        grid on;
    else
        
         plot(x,y,'r');
         grid on;
         pause(h);
         axis([-5 5 -5 5 -5 5]);
    end
end


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


close(figure(2));
close(figure(3));
close(figure(1));
clf
N=20;
R=8.314472;
Na=6.0221e+023;
            % time step     


 x=zeros(N+1,1);   % place to store x locations
 y=zeros(N+1,1);   % place to store y locations
 z=zeros(N+1,1);   % place to store z locations
 
 x1=zeros(N+1,1);   % place to store x locations
 y1=zeros(N+1,1);   % place to store y locations
 z1=zeros(N+1,1);   % place to store z locations
grad=zeros(3,N+1);
 for i=1:1:size(grad)
     for j=1:1:N+1
         grad(i,j)= sign(randn);
     end
 end
 temp=get(handles.edit13,'String');
 temp=str2num(temp);
 visc=get(handles.edit12,'String');
 visc=str2double(visc);
 r1=0.27;
 sigma=get(handles.edit11,'String');
sigma=str2double(sigma);
 T=get(handles.edit10,'String');
 T=str2num(T);
 h=T/N; 
x(:)=[0 -0.2 -0.9 0 0 0.25 0.25 0.5 0.3 0.4 0 -0.3 0.1 -0.23 0.8 0.2 -0.7 0.6 0.15 -0.4 0.33];
y(:)=[0 -0.1 0.8 0.5 -0.3 0.75 0.25 0 0.3 -0.1 0.6 0.33 -0.4 0.15 -0.7 0.2 0.72 0.26 -0.23 -0.3 0.15];
z(:)=[0.1 0.2 0.9 0.5 -0.6 0.4 -0.9 0.55 -0.1 0.5 0.1 -0.1 0.3 0.8 -0.4 0.4 -0.3 -0.7 0.2 0.1 0.9];
r2=0.045;
r=r1*10^-6;
k=R*temp/(6*pi*Na*visc*r)*10^17;
%   betta=sigma*sqrt(h)*k*normrnd(0,1);
  betta=sigma*sqrt(h)*randn;
  
 alpha=sqrt((r1/r2)/(betta*betta));
 betta=betta/50;
 alpha=alpha/70;
 %initialisation
  for i=1:1:N+1
   x1(i)=x(i)-grad(1,i).*alpha;  
    y1(i)=y(i)-grad(2,i).*alpha;
     z1(i)=z(i)-grad(3,i).*alpha;
 end
 etat0=[x1(:) y1(:) z1(:)];
 etat0=transpose(etat0);
 etat1=[x(:) y(:) z(:)];
 etat1=transpose(etat1);
 
 for s=1:1:25
   for i=2:1:N
       
    if (sqrt(norm(etat0(:,i)-etat0(:,1)))<=r1+r2)
     
        grad(:,1)=sign(etat0(:,i)-etat0(:,0));
          [grad(1,i),grad(2,i),grad(3,i)]=Gradient2(etat0(:,i),etat0(:,j),grad(:,1),r1,r2);
    end
    if(abs(etat0(1,i))>=1)
       grad(1,i)=-grad(1,i); 
    end
     if(abs(etat0(2,i))>=1)
       grad(2,i)=-grad(2,i); 
     end
     if(abs(etat0(3,i))>=1)
       grad(3,i)=-grad(3,i); 
     end
    for j=i:1:N
          
        if (2*r2 >= etat0(:,i)-etat0(:,j))% 2r2<val alors on est dans le cas d'un moment apres la collision.
            grad(:,j)=[sign(etat0(1,i)- etat0(1,j)) sign(etat0(2,i)- etat0(2,j)) sign(etat0(3,i)- etat0(3,j)) ];
            [grad(1,i),grad(2,i),grad(3,i)]=Gradient2(etat0(:,i),etat0(:,j),grad(:,j),r2,r2);
            etat1(:,i)=etat0(:,i)+grad(:,i).*alpha;
        end
    end
      if(abs(etat0(1,1))>=1)
       grad(1,1)=-grad(1,1); 
      end
     if(abs(etat0(2,1))>=1)
       grad(2,1)=-grad(2,1); 
     end
     if(abs(etat0(3,1))>=1)
       grad(3,1)=-grad(3,1); 
     end
   etat1(:,1)=etat0(:,1)+grad(:,1).*(betta);
   etat1(:,i)=etat0(:,i)+grad(:,i).*alpha;
   etat0=etat1; 
%    pause(h);
   end
    figure (3)
     hold on 
%      rectangle('Position',[-1.2 -1.2 2.4 2.4])
     plot(etat0(1,1),etat0(2,1),'or','MarkerSize',30,'MarkerFaceColor','b')
     for i=2:1:N+1
        plot(etat0(1,i),etat0(2,i),'or','MarkerSize',5,'MarkerFaceColor','r')
       axis([-2 2 -2 2])
       pause(.02)
       
     end
     clf

 end


