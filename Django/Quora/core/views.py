from django.shortcuts import render, redirect
from . import forms
from django.contrib.auth import login
from django.contrib.auth.hashers import make_password
from django.urls import reverse
# Create your views here.

class RegisterView(forms.FormView):
    def get(self, request):
        content = {}
        content['form'] = forms.RegisterForm
        return render(request, 'register.html', {content})
    def post(self, request):
        content = {}
        form = forms.RegisterForm(request.POST, request.FILES or None)
        if form.is_valid():
            user = form.save(commit = False)
            user.password = make_password(form.cleaned_data['password'])
            user.save()
            login(request, user)
            return redirect(reverse('dashboard-view'))
        content['form'] = form
        template = 'register.html'
        return render(request, template, content)