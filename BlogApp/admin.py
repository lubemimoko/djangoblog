from django.contrib import admin
from BlogApp.models import *

# Register your models here.

class CategoryAdmin(admin.ModelAdmin):
    list_display = ["name", "slug", "datetime"]
    readonly_fields = ["slug"]

class PostAdmin(admin.ModelAdmin):
    list_display = ["category", "pic", "title", "datetime"]
    readonly_fields = ["slug"]

class CommentAdmin(admin.ModelAdmin):
    list_display = ["post", "name",  "datetime"]

class TagAdmin(admin.ModelAdmin):
    list_display = ["name", "datetime"]




admin.site.register(Category, CategoryAdmin)
admin.site.register(Post, PostAdmin)
admin.site.register(Comment, CommentAdmin)
admin.site.register(Tag, TagAdmin)