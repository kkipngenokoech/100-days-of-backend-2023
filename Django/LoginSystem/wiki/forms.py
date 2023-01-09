from django import forms
from .models import Article, Edit

class ArticleForm(forms.ModelForm):
    class Meta:
        model = Article
        exclude = ['slug','author']

class EditForm(forms.ModelForm):
    class Meta:
        model = Edit
        fields = ['summary']