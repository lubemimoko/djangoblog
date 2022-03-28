from django.db import models
from django.contrib.auth.models import User
from django.utils.text import slugify

# Create your models here.
class Category(models.Model):
    name = models.CharField(max_length=100 )
    slug = models.SlugField(unique=True, max_length=100 )
    datetime = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.name}"

    def save(self, *args, **kwargs):
        self.slug = slugify(self.name)
        return super().save(*args, **kwargs)


    class Meta:
        verbose_name_plural = "Categories"




class Post(models.Model):
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    title = models.CharField(max_length=100 )
    slug = models.SlugField(unique=True, max_length=100 )
    pic = models.ImageField(upload_to="blog_images" )
    body = models.TextField( max_length=100 )
    datetime = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"{self.slug}"

    
    def save(self, *args, **kwargs):
        self.slug = slugify(self.title)
        return super().save(*args, **kwargs)



class Comment(models.Model):
    post = models.ForeignKey(Post, on_delete=models.CASCADE, related_name="comments")
    pic = models.ImageField(upload_to="comments")
    name = models.CharField(max_length=100)
    body = models.TextField(max_length=100 )
    allowcomment = models.BooleanField(default=False )
    datetime = models.DateTimeField(auto_now_add=True)




class Tag(models.Model):
    name = models.CharField(max_length=100)
    post = models.ManyToManyField(Post, related_name="tags")
    datetime = models.DateTimeField(auto_now_add=True)

























































