<?php
    require_once 'userdatabase.php';

    class MenuActivities{
        private $id;
        private $user;
        private $activityType;
        private $changedItem;
        private $time;
        public $db;
    
        public function __construct( $id='', $user='', $activityType='', $changedItem='',$time=''){
            $conn = new DatabaseConnection;
            $this->connection = $conn->startConnection();
            $this->db=$conn;
            $this->id=$id;
            $this->user=$user;
            $this->activityType=$activityType;
            $this->changedItem=$changedItem;
            $this->time=$time;
        }
    
    
        public function readData(){
             
        $conn = $this->connection;

        $sql = "SELECT * from activities";


        $statement = $conn->query($sql);
        $activities = $statement->fetchAll();

        return $activities;
        }
        
        function activities($user,$activityType,$changedItem){

            $conn = $this->connection;
    
            $datetime = date("d/m/Y g:i a");
            $sql = "INSERT INTO activities (user,activityType,changedItem,time) values (?,?,?,?)";
    
            $statement = $conn->prepare($sql);
    
            $statement->execute([$user,$activityType,$changedItem,$datetime]);
    
        }

    }
?>