function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 09-May-2018 12:13:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
msgbox('Puzzle oyununa hoþgeldiniz.Baþla butonuna týkla ve karþýna çýkan pencereden resmini seç.Mause ile daðýtýk resmin üstüne týkla ve baþla.BOL ÞANSLAR :) ','Oyun Kuralý','help','modal');
set(handles.axes1,'Visible','off')
set(handles.axes2,'Visible','off')
set(handles.axes3,'Visible','off')
set(handles.axes4,'Visible','off')
set(handles.axes5,'Visible','off')
set(handles.axes6,'Visible','off')
set(handles.axes7,'Visible','off')
set(handles.axes8,'Visible','off')
set(handles.axes9,'Visible','off')
set(handles.axes10,'Visible','off')
set(handles.pushbutton3,'Visible','off')
set(handles.pushbutton5,'Visible','off')
backgroundImage = importdata('indir.jpg'); 
axes(handles.axes11); 
image(backgroundImage); 
axis off 
global h 
clc
h2  = handles.axes2;
h3  = handles.axes3;
h4  = handles.axes4;
h5  = handles.axes5;
h6  = handles.axes6;
h7  = handles.axes7;
h8  = handles.axes8;
h9  = handles.axes9;
h10 = handles.axes10;
h = [h2 h3 h4 h5 h6 h7 h8 h9 h10];
 
% Get default command line output from handles structure


varargout{1} = handles.output;



% --- Executes on mouse press over figure background.
function figure1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on key press with focus on figure1 and none of its controls.
function figure1_KeyPressFcn(hObject, ~, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
global h
v = double(get(handles.figure1,'CurrentCharacter'));
switch v
    case 28 % left arrow key
         for k = 1:6
            x = getimage(h(k));
            if isempty(x)
                ind = k;
                break
            end
        end
        if exist('ind','var') ~= 1
            return
        end
        im = getimage(h(ind+3));
        cla(h(ind+3));
        axes(h(ind))
        image(im)
        set(h(ind),'box','on','xtick',[],'ytick',[])
        clear ind
    case 29 % right arrow key
        for k = 4:10
            x = getimage(h(k));
            if isempty(x)
                ind = k;
                break
            end
        end
        if exist('ind','var') ~= 1
            return
        end
        im = getimage(h(ind-3));
        cla(h(ind-3));
        axes(h(ind))
        image(im)
        set(h(ind),'box','on','xtick',[],'ytick',[])
        clear ind
    case 30 % up arrow key
         for k = [1 4 7 2 5 8] %
            x = getimage(h(k));
            if isempty(x)
                ind = k;
                break
            end
        end
        if exist('ind','var') ~= 1
            return
        end
        im = getimage(h(ind+1));
        cla(h(ind+1));
        axes(h(ind))
        image(im)
        set(h(ind),'box','on','xtick',[],'ytick',[])
        clear ind
    case 31 % down arrow key
        for k = [2 5 8 3 6 9]
            x = getimage(h(k));
            if isempty(x)
                ind = k;
                break
            end
        end
        if exist('ind','var') ~= 1
            return
        end
        im = getimage(h(ind-1));
        cla(h(ind-1));
        axes(h(ind))
        image(im)
        set(h(ind),'box','on','xtick',[],'ytick',[])
        clear ind
    otherwise
        msgbox('Geçersiz Karakter','DÝKKAT...!!!','Error','modal')
        return
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global im3
axes(handles.axes10)
image(im3{1,9})
set(handles.axes10,'box','on','xtick',[],'ytick',[])
%msgbox('Tebrikler Oyunu Tamamladýnýz . ','Oyun Bitti','warn','modal')

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes10)
global h im1 im3

str = {'bisiklet.jpg';'winniepooh.jpg';'kelebek.jpg';'minions.jpg';'manzara.jpg'};
[m,v] = listdlg('PromptString','Resmini Seç...:','listsize',[130 70],'selectionmode','single','name','SELECT','liststring',str);
if isempty(m)
    return
end
f = str{m};
im1 = imread(f);
imr = im1(:,:,1);
img = im1(:,:,2);
imb = im1(:,:,3);
imr = imresize(imr,[900, 900]);
img = imresize(img,[900, 900]);
imb = imresize(imb,[900, 900]);
im1 = cat(3,imr,img,imb);
axes(handles.axes1)
image(im1)
set(handles.axes1,'box','on','xtick',[],'ytick',[])
hold on
text(50,75,'Ok Tuþlarýný Kullan : ','FontSize',14,'Color','y','FontWeight','Bold');
text(180,200,'\uparrow','FontSize',20,'Color','y','FontWeight','Bold'); 
text(43,300,'\leftarrow   \downarrow   \rightarrow','FontSize',20,'Color','y','FontWeight','Bold'); 
hold off
imr = mat2cell(imr,[300 300 300],[300 300 300]);
img = mat2cell(img,[300 300 300],[300 300 300]);
imb = mat2cell(imb,[300 300 300],[300 300 300]);
for k  = 1:9
    im2(1,k) = {cat(3,imr{k},img{k},imb{k})};
end
im3  = im2;
m = randperm(8);
for k = 1:8
     a = m(k);
    axes(h(k))
    image(im2{a})
    set(h(k),'box','on','xtick',[],'ytick',[])
end
set([handles.pushbutton1 , handles.pushbutton2],'visible','on')

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes11)
set(handles.axes11,'visible','off')
set(handles.axes1,'Visible','on')
set(handles.axes2,'Visible','on')
set(handles.axes3,'Visible','on')
set(handles.axes4,'Visible','on')
set(handles.axes5,'Visible','on')
set(handles.axes6,'Visible','on')
set(handles.axes7,'Visible','on')
set(handles.axes8,'Visible','on')
set(handles.axes9,'Visible','on')
set(handles.axes10,'Visible','on')
set(handles.pushbutton3,'Visible','on')
set(handles.pushbutton5,'Visible','on')
set(handles.pushbutton6,'Visible','off')
global h 
clc
h2  = handles.axes2;
h3  = handles.axes3;
h4  = handles.axes4;
h5  = handles.axes5;
h6  = handles.axes6;
h7  = handles.axes7;
h8  = handles.axes8;
h9  = handles.axes9;
h10 = handles.axes10;
h = [h2 h3 h4 h5 h6 h7 h8 h9 h10];
 
global h im1 im3

str = {'bisiklet.jpg';'winniepooh.jpg';'kelebek.jpg';'minions.jpg';'manzara.jpg'};
[m,v] = listdlg('PromptString','Resmini Seç...:','listsize',[130 70],'selectionmode','single','name','SELECT','liststring',str);
if isempty(m)
    return
end
f = str{m};
im1 = imread(f);
imr = im1(:,:,1);
img = im1(:,:,2);
imb = im1(:,:,3);
imr = imresize(imr,[900, 900]);
img = imresize(img,[900, 900]);
imb = imresize(imb,[900, 900]);
im1 = cat(3,imr,img,imb);
axes(handles.axes1)
image(im1)
set(handles.axes1,'box','on','xtick',[],'ytick',[])
hold on
text(50,75,'Ok Tuþlarýný Kullan : ','FontSize',14,'Color','y','FontWeight','Bold');
text(180,200,'\uparrow','FontSize',20,'Color','y','FontWeight','Bold'); 
text(43,300,'\leftarrow   \downarrow   \rightarrow','FontSize',20,'Color','y','FontWeight','Bold'); 
hold off
imr = mat2cell(imr,[300 300 300],[300 300 300]);
img = mat2cell(img,[300 300 300],[300 300 300]);
imb = mat2cell(imb,[300 300 300],[300 300 300]);
for k  = 1:9
    im2(1,k) = {cat(3,imr{k},img{k},imb{k})};
end
im3  = im2;
m = randperm(8);
for k = 1:8
    a = m(k);
    axes(h(k))
    image(im2{a})
    set(h(k),'box','on','xtick',[],'ytick',[])
end
set([handles.pushbutton1 , handles.pushbutton2],'visible','on')

% --- Executes during object creation, after setting all properties.
function axes11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes11


% --- Executes during object deletion, before destroying properties.
function axes11_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to axes11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function pushbutton6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
