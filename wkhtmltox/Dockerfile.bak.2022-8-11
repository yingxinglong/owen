FROM centos:7.6.1810

# 安装中文字体和chrome
RUN  yum install ibus-kkc vlgothic-* -y
copy wkhtmltox-0.12.5-1.centos7.x86_64.rpm   /usr/local/src/
RUN yum install -y xorg-x11-fonts-75dpi xorg-x11-fonts-Type1 libXext openssl libpng libjpeg libXrender libX11 freetype  fontconfig wget 
RUN yum groupinstall Fonts -y

RUN cd /usr/local/src &&\
    rpm -ivh  wkhtmltox-0.12.5-1.centos7.x86_64.rpm 
RUN rm -f /usr/local/src/*.rpm

## 修改时区
RUN rm -f /etc/localtime \
&& ln -sv /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& echo "Asia/Shanghai" > /etc/timezone
