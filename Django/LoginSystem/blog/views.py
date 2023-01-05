from django.shortcuts import redirect, get_object_or_404, render
from django.contrib.auth.decorators import user_passes_test
from .models import Post
from .forms import PostForm, CommentForm
from django.views.generic import ListView

# Create your views here.
class PostListView(ListView):
    model = Post
    context_object_name = 'posts'

@user_passes_test(lambda u: u.is_superuser)
def add_post(request):
    form = PostForm(request.POST or None)
    if form.is_valid():
        post = form.save(commit=False)
        post.author = request.user
        post.save()
        return redirect("blog_post_detail",slug = post.slug)
    return render(request, 'blog/add_post.html', {'form': form})

def view_post(request, slug):
    post = get_object_or_404(Post, slug = slug)
    return render(request, 'blog/blog_post.html',{'post':post})