from poplib import POP3_SSL_PORT
from django.shortcuts import render, get_object_or_404, redirect, HttpResponse
from django.core.paginator import Paginator    
from BlogApp.models import *    
from BlogApp.form import *    
from datetime import datetime

categories = Category.objects.all()

def index(request):   
    posts = Post.objects.select_related("category").all().order_by("-id") 
    p = Paginator(posts, '1')
    
    p_num = request.GET.get("pg")
    try:
        page=p.page(p_num)
    except:
        p_num = 1
        page = p.page(p_num)
    num_of_pages =p.num_pages #number of pages
   
    print(p_num)       
    data ={
        "posts":page,
        "pages":range(1, num_of_pages+1),
        "activepage":int(p_num),
        "categories":categories
        }
 
    return render(request, "BlogApp/index.html", data)
    


def category(request, slug):   
    posts = Post.objects.select_related("category").filter(category__slug=slug).order_by("-id")  
    p = Paginator(posts, '1')
    
    p_num = request.GET.get("pg")
    try:
        page=p.page(p_num)
    except:
        p_num = 1
        page = p.page(p_num)
    num_of_pages =p.num_pages #number of pages
   
    print(p_num)       
    data ={
        "posts":page,
        "pages":range(1, num_of_pages+1),
        "activepage":int(p_num),
        "categories":categories
        }
 
    return render(request, "BlogApp/index.html", data)
    



def category2(request, slug):   
    category = Category.objects.filter(slug=slug).first() 

    # posts = category.posts.all()
    posts = category.post_set.all()

    p = Paginator(posts, '1')
    
    p_num = request.GET.get("pg")
    try:
        page=p.page(p_num)
    except:
        p_num = 1
        page = p.page(p_num)
    num_of_pages =p.num_pages #number of pages
   
    print(p_num)       
    data ={
        "posts":page,
        "pages":range(1, num_of_pages+1),
        "activepage":int(p_num),
        "categories":categories
        }
 
    return render(request, "BlogApp/index.html", data)
    
def fullpost(request, slug):
    post = get_object_or_404(Post, slug=slug)
    catPost = Post.objects.filter(category = post.category)[:5]
    tags = post.tags.all()
    comments = Comment.objects.filter(post=post, allowcomment=1)

    form = CommentForm()
    if request.method == "POST":
        #get your post obj for the post
        # postObj = Post.objects.filter(id=id).first()

        form = CommentForm(request.POST, request.FILES)

        if form.is_valid():
            comment = form.save(commit=False)
            comment.post_id = post.id
            comment.save()
        # message.success()
        return redirect("fullpost", slug=post.slug)
    
    context = {"post":post, "tags":tags, 
                "categories":categories, "catPost":catPost, 
                "form":form,"comments":comments }
    return render(request, "BlogApp/fullpost.html", context)


def comments(request, id):
    pass