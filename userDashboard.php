<?php
  include_once 'userRepository.php';
?>
<style>
*{
  font-family: sans-serif; 
}

.content-table {
  border-collapse: collapse;
  margin: 25px 0;
  font-size: 0.9em;
  width: 100%;
  border-radius: 5px 5px 0 0;
  overflow: hidden;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.content-table thead tr {
  background-color: #23908c;
  color: #ffffff;
  text-align: left;
  font-weight: bold;
}

.content-table th,
.content-table td {
  padding: 12px 15px;
}

.link{
    text-decoration: none;
    color: red;
    font-size: 17px;
}
.first-link{
  color: black;
  font-size: 22px;
  padding-left: 50%;
  position: relative;
  top: 20px;
}
.top-links{
    font-size: 30px;
    color: black;
    padding: 30px;
    text-decoration: none;
}
.bttn{

  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 10px 30px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;  
  cursor: pointer;
  border-radius: 4px;

}
.bttn2{

background-color: #f44336;;
border: none;
color: white;
padding: 10px 22px;
text-align: center;
display: inline-block;
font-size: 16px;  
cursor: pointer;
border-radius: 4px;

}
.ahreff{
  text-decoration: none;
  color: white;
}
</style>
<div>
    <table class="content-table">
        <thead>
            <tr>
              <th>First Name</th>
              <th>Last Name</th>
              <th>Email</th>
              <th>Username</th>
              <th>Password</th>
              <th>Edit</th>
              <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <?php
                $u = new userRepository;
                $allUsers = $u->getAllUsers();
                foreach($allUsers as $users):?>
            <tr>
                <td><?php echo $users['name'] ?></td>
                <td><?php echo $users['surname'] ?></td>
                <td><?php echo $users['email']?></td>
                <td><?php echo $users['username'] ?></td>
                <td><?php echo $users['password'] ?></td>
                <td><button class="bttn"><a href="edit-users.php?id=<?php echo $users['id']; ?>" class="ahreff">Edit</a></button></td>
                <td><button class="bttn2"><a href="delete-users.php?id=<?php echo $users['id'] ?>" class="ahreff">Delete</a></button></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>