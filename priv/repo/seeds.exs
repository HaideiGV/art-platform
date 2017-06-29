# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ArtPlatform.Repo.insert!(%ArtPlatform.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias ArtPlatform.Repo
alias ArtPlatform.Master
alias ArtPlatform.Gallery

Repo.insert! %Master{
  name: "Default Master1",
  skills: "Tatoo",
  about_me: "Default description",
  age: 30,
  city: "Kiev",
  rank: 100
}

Repo.insert! %Master{
  name: "Default Master2",
  skills: "Tatoo",
  about_me: "Default description",
  age: 30,
  city: "Kiev",
  rank: 100
}

Repo.insert! %Master{
  name: "Default Master2",
  skills: "Tatoo",
  about_me: "Default description",
  age: 30,
  city: "Lviv",
  rank: 100
}

Repo.insert! %Gallery{
  description: "Default description",
  image_url: "http://thesweetpeople.com/wp/wp-content/uploads/2015/08/person_placeholder.png",
  rate: 100
}

Repo.insert! %Gallery{
  description: "Default description",
  image_url: "http://thesweetpeople.com/wp/wp-content/uploads/2015/08/person_placeholder.png",
  rate: 100
}
