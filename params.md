<form action="/posts/1" method="post">

  <input type="text" name="post[title]" value="My Super Title">

  <input type="text" name="post[body]" value="Some Body of a post">

  <input type="hidden" name="post[tag_ids][]" value="">
  <input type="checkbox" name="post[tag_ids][]" value="2" checked="true">
  <input type="checkbox" name="post[tag_ids][]" value="3" checked="true">
  <input type="checkbox" name="post[tag_ids][]" value="5" checked="true">

  <input type="hidden" name="commit" value="Update Post">
  <input type="hidden" name="id" value="1">
  <input name="authenticity_token" type="hidden" value="+8liMahjMiyA0WFF8ef8wzXu72+xXIKxlYzuI5UcTC4=">
  <input name="_method" type="hidden" value="patch" />

  <button type="submit">Submit Form</button>
</form>






Started PATCH "/posts/1" for 127.0.0.1 at 2015-07-28 15:05:02 -0700
Processing by PostsController#update as HTML
Parameters: {
    "utf8"=>"✓",
    "authenticity_token"=>"+8liMahjMiyA0WFF8ef8wzXu72+xXIKxlYzuI5UcTC4=",
    "post"=>{
        "title"=>"My Super Title",
        "body"=>"Some Body of a post",
        "tag_ids"=>["", "2", "3", "5"] },
    "commit"=>"Update Post",
    "id"=>"1"
}
