from django.db import models

# Create your models here.
class Paste(models.Model):
    text = models.TextField()
    name = models.CharField(max_length=40,null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __unicode__(self):
        return self.name or str(self.id)
        # since our field name is optional(null=True), we need a fallback in the id if name is not found
        