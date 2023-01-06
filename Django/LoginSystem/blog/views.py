from django.shortcuts import redirect, get_object_or_404, render
from django.contrib.auth.decorators import user_passes_test
from django.contrib.auth import logout
from .models import Post
from .forms import PostForm, CommentForm
from django.views.generic import ListView
from django.views.generic.dates import MonthArchiveView, WeekArchiveView

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
    form = CommentForm(request.POST or None)
    if form.is_valid():
        comment = form.save(commit = False)
        comment.post = post
        comment.save()
        # request.session["name"] = comment.name
        # request.session["email"] = comment.email
        # request.session["website"] = comment.website
        return redirect("blog_post_detail", slug = post.slug)
    # form.initial['name'] = request.session.get('name')
    # form.initial['email'] = request.session.get('email')
    # form.initial['website'] = request.session.get('website')
    return render(request, 'blog/blog_post.html',{'post':post,'form': form})

class PostMonthArchiveView(MonthArchiveView):
    queryset = Post.objects.all()
    date_field = "created_on"
    allow_future = True

class PostWeekArchiveView(WeekArchiveView):
    queryset = Post.objects.all()
    date_field = "created_on"
    week_format = "%W"
    allow_future = True

def LogoutView(request):
    logout(request)
    return redirect('index')