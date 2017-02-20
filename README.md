<h1>Would You Rather?</h1>

<p>Welcome to the site! Checkout our questions - have fun!</p>

<% if @questions.any? %>
<% @questions.each do |question|  %>
  <div class="panel panel-info">
    <div class="panel-heading">
      <h3 class="panel-title"><%= question.title %></h3>
    </div>
    <div class="panel-body">
  <div class="row">
    <div class="col-md-5">
      <%= question.option_a %>
    </div>
    <div class="col-md-2">
      <p><strong>OR</strong></p>
    </div>
    <div class="col-md-5">
      <%= question.option_b %>
    </div>
  </div>
  <div class="row">

  <p id="description">
    <strong>Description:</strong> <%= question.description %>
  </p>
  </div>
</div>
<%= link_to "Edit", edit_question_path(question) %> |
<%= link_to "Delete", question_path(question), method: :delete, data: {confirm: "Are you sure?"} %>
</div>
<% end %>
<div id="question_lists" >
</div>
<p>
  <%= link_to "add a question", new_question_path, id: "new_link", remote: true %>
</p>

<% else %>
<p>
  Would you rather look at an empty website or add a <%= link_to "question?", new_question_path, id: "new_link", remote: true  %>
</p>
<% end %>
