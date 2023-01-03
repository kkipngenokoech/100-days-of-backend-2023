from django.db import models

# Create your models here.
GenreChoices = (
    ("R", "Rock"),
    ("B", "Blues"),
    ("J", "Jazz"),
    ("p", "Pop")
)

class CD(models.Model):
    title = models.CharField(max_length=100)
    description = models.TextField(null=True, blank=True)
    artist = models.CharField(max_length=40)
    date = models.DateField()
    genre = models.CharField(max_length=1, choices=GenreChoices)

    def __unicode__(self):
        return "%s by %s, %s" % (self.title, self.artist, self.date.year, self.date.year )
