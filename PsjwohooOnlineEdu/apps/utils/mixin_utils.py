# *_* coding:utf-8 _*_
__auth__ = 'psj'
__date__ = '2018/6/16 16:05'

from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator


#请把系统里的这个类按照这个方法修改
class LoginRequiredMixin(object):
    #/login/前后的斜杠都不能少！！！！！！！！！！！！！！！！
    @method_decorator(login_required(login_url='/login/'))
    def dispatch(self, request, *args, **kwargs):
        return super(LoginRequiredMixin, self).dispatch(request, *args, **kwargs)