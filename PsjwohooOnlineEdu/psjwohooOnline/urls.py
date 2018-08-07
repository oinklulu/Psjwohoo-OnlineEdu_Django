# *_* coding:utf-8 _*_
"""MxOnline URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Import the include() function: from django.conf.urls import url, include
    3. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""

from django.conf.urls import url,include
# from django.contrib import admin
# 没有建立IndexView时候代替 from django.views.generic import TemplateView
import xadmin
from django.views.static import serve

from users.views import IndexView, LoginView, RegisterView, ActiveUserView, ForgetPwdView, ResetView, ModifyPwdView, LogoutView
from organization.views import OrgView
from MxOnline.settings import MEDIA_ROOT, STATIC_ROOT


urlpatterns = [
    url(r'^xadmin/', xadmin.site.urls),
    url(r'^$', IndexView.as_view(),name="index"),
    url(r'^login/$', LoginView.as_view(),name="login"),
    url(r'^register/$', RegisterView.as_view(),name="register"),
    url(r'^captcha/', include('captcha.urls')),
    url(r'^active/(?P<active_code>.*)/$', ActiveUserView.as_view(), name="user_active"),
    url(r'^forget/$', ForgetPwdView.as_view(), name="forget_pwd"),
    url(r'^reset/(?P<active_code>.*)/$', ResetView.as_view(), name="reset_pwd"),

    # 修改密码url; 用于密码的reset页面提交表单
    url(r'^modify_pwd/$', ModifyPwdView.as_view(), name="modify_pwd"),

    # 课程机构app的url配置
    url(r'^org/', include('organization.urls', namespace='org')),

    # # 处理图片显示的url,使用Django自带serve,传入参数告诉它去哪个路径找，我们有配置好的路径MEDIAROOT
    url(r'^media/(?P<path>.*)$', serve, {"document_root": MEDIA_ROOT }),

    #一旦DEBUG等于False,Django就没办法代管我们的STATATIC页面访问
    url(r'^static/(?P<path>.*)$', serve, {"document_root": STATIC_ROOT }),

    # # 课程app的url配置
    url(r"^course/", include('courses.urls', namespace="course")),
    #
    #user app的url配置
    url(r"^users/", include('users.urls', namespace="users")),

    # 退出功能url
    url(r'^logout/$', LogoutView.as_view(), name="logout"),

    # 富文本相关url
    url(r'^ueditor/',include('DjangoUeditor.urls' )),
    #
    # url(r'^favicon\.ico$', favicon_view),
]

# 全局404页面配置
handler404 = 'users.views.page_not_found'
handler500 = 'users.views.page_error'
