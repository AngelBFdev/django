import pytest
from library.books.models import *

@pytest.mark.django_db
def test_author_name():
  author = Author.objects.create(name='Paulo',last_name='Coelho')
  print('This is my authors name: ', author.name)
  assert author.last_name == 'Coelho'
  assert Author.objects.all().count()==1

@pytest.mark.django_db
@pytest.mark.parametrize(
	'val',
	(
		'Comedy',
    'Horror',
    'Fantasy'
	)
)
def test_genre_name(val):
  genre = Genre.objects.create(name=val)
  print('This is my genre name: ', genre.name)
  assert genre.name == val

@pytest.mark.django_db
@pytest.mark.parametrize(
	'val1, val2',
	(
		('Comedy', 'Horror'),
    ('Horror', 'Comedy'),
    ('Fantasy', 'Comedy')
	)
)
def test_genre_different_name(val1,val2):
  genre = Genre.objects.create(name=val1)
  print('This is my genre name: ', genre.name)
  assert genre.name != val2

@pytest.mark.django_db
@pytest.mark.parametrize(
	'val1, val2',
	(
		('CoMEdy', 'Comedy'),
    ('HoRrOr', 'Horror'),
    ('FanTasy', 'Fantasy')
	)
)
def test_genre_capitalize_name(val1,val2):
  genre = Genre.objects.create(name=val1)
  print('This is my genre name: ', genre.name)
  assert genre.name != val2

@pytest.mark.django_db
@pytest.mark.parametrize(
	'val',
	(
		'Spanish',
    'English',
    'French'
	)
)
def test_language_name(val):
  language = Language.objects.create(name=val)
  print('This is my language name: ', language.name)
  assert language.name == val

@pytest.mark.django_db
@pytest.mark.parametrize(
	'val1, val2',
	(
		('Spanish', 'English'),
    ('English', 'French'),
    ('French', 'Spanish')
	)
)
def test_language_different_name(val1,val2):
  language = Language.objects.create(name=val1)
  print('This is my language name: ', language.name)
  assert language.name != val2

@pytest.mark.django_db
@pytest.mark.parametrize(
	'val1, val2',
	(
		('SpaNisH', 'Spanish'),
    ('ENGLISH', 'English'),
    ('FrencH', 'French')
	)
)
def test_language_capitalize_name(val1,val2):
  language = Language.objects.create(name=val1)
  print('This is my language name: ', language.name)
  assert language.name != val2

@pytest.mark.django_db
def test_author_with_monkey(monkeypatch):
  author = Author.objects.create(name='name',last_name='apellido')
  
  class AuthorQuerysetMock():
    def __init__(self):
      self.some_value=1

    def count(self):
      return 4

  def model_count_mock():
    return AuthorQuerysetMock()
  
  monkeypatch.setattr(Author.objects, 'all', model_count_mock)

  assert Author.objects.all().count()==4
  print('Haciendo el monkeypatch')
