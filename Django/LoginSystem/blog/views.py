from django.shortcuts import redirect, get_object_or_404, render
from django.contrib.auth.decorators import user_passes_test
from .models import Post
from .forms import PostForm, CommentForm

# Create your views here.
def index(request):
    return render(request, 'index.html')

@user_passes_test(lambda u: u.is_superuser)
def add_post(request):
    form = PostForm(request.POST or None)
    if form.is_valid():
        post = form.save(commit=False)
        post.author = request.user
        post.save()
        return redirect(post)
    return render(request, 'blog/add_post.html', {'form': form})