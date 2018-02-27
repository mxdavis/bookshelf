sample query for one author by id:

```{
  author(id:1){
    first_name
    full_name
    coordinates {
      latitude
      longitude
    }
    publication_years
  }
}```

sample query for all authors

```{
  all_authors {
    full_name
    last_name
    publication_years
  }
}```
